# convert.ps1
# Converts all ordered MD files to LaTeX fragments for \input{} into main.tex
# Run from the project root: G:\O meu disco\IHNDAIMF\
# Requires: pandoc (3.x), xelatex (MiKTeX)

$mdDir  = "G:\O meu disco\IHNDAIMF\MD"
$texDir = "G:\O meu disco\IHNDAIMF\chapters"

New-Item -ItemType Directory -Force $texDir | Out-Null

# Ordered mapping: source MD -> output tex fragment name
# Each MD file is a *section* within a chapter, so --top-level-division=section
# maps its # heading to \section{} rather than \chapter{}.
# Excluded: Is Dopamine Necessary for All Voluntary Action.md (earlier draft)
#           Precision Dysregulation in Extended Inference.md  (moved to appendix)

$files = @(
    # Part I — The Machine
    [pscustomobject]@{ md = "Dopamine as the Substrate of Agency_ Computational Frameworks an.md"; tex = "01_dopamine_substrate.tex" },
    [pscustomobject]@{ md = "Dopamine and Voluntary Action.md";                                    tex = "02_dopamine_action.tex"   },
    [pscustomobject]@{ md = "It Started Three Billion Years Ago.md";                               tex = "03_it_started.tex"        },
    [pscustomobject]@{ md = "From Urbilateria to Lamprey_ The Evolutionary Assembly of Agency.md"; tex = "04_urbilateria.tex"       },
    [pscustomobject]@{ md = "Vertebrates to Mammals.md";                                           tex = "05_vertebrates.tex"       },
    [pscustomobject]@{ md = "Neurology 101_ The Six Structures.md";                                tex = "06_neurology_101.tex"     },
    [pscustomobject]@{ md = "Dopamine, Pleasure, and the Self.md";                                 tex = "07_pleasure_and_self.tex" },

    # Part II — The Illness
    [pscustomobject]@{ md = "The Dopamine Spectrum_ One Signal, Many Catastrophes.md";             tex = "09_dopamine_spectrum.tex" },
    [pscustomobject]@{ md = "The Dopaminergic Basis of Treatment-Resistant Depression.md";         tex = "10a_trd_basis.tex"        },
    [pscustomobject]@{ md = "The TRAAD Spectrum.md";                                               tex = "10b_traad.tex"            },
    [pscustomobject]@{ md = "When Self-Medication Becomes Addiction.md";                           tex = "10c_self_medication.tex"  },
    [pscustomobject]@{ md = "DSM-III Was Never Clustered Into Existence.md";                       tex = "11_dsm_iii.tex"           },
    [pscustomobject]@{ md = "Japan's Postwar Philopon Crisis.md";                                  tex = "12_philopon.tex"          },
    [pscustomobject]@{ md = "Non-English Follow-up Literature.md";                                 tex = "13_non_english.tex"       },
    [pscustomobject]@{ md = "What We Do Not Know About Recovering From Methamphetamine.md";        tex = "14_what_we_dont_know.tex" },
    [pscustomobject]@{ md = "Dopamine D2 Receptor Downregulation.md";                             tex = "15_d2_downregulation.tex" },
    [pscustomobject]@{ md = "Why Stimulant-Induced Cognitive Damage Lacks a Named Syndrome.md";   tex = "16_missing_syndrome.tex"  },

    # Part III — The Atrocity
    [pscustomobject]@{ md = "Dopamine, Agency, and State Violence.md";                            tex = "17_state_violence.tex"    },
    [pscustomobject]@{ md = "Restoration of Mesolimbic Reward Capacity.md";                       tex = "18_restoration.tex"       },
    [pscustomobject]@{ md = 'The $200 Billion Machine That Forgot to Cure Anything.md';           tex = "19_200_billion.tex"       },
    # β in filename: resolved via wildcard below to avoid PS5.1 encoding issues
    [pscustomobject]@{ md = $null; tex = "20_ibogaine.tex"; glob = "Ibogaine*.md" }
)

$pandocBaseArgs = @(
    "--top-level-division=section",   # # heading -> \section{} (file is a section, not a chapter)
    "--wrap=none",                    # preserve line breaks as-is
    "--no-highlight",                 # render code blocks as plain verbatim (no Shaded/Highlighting envs)
    "-f", "markdown+smart"            # smart quotes, em-dashes, etc.
    # No -s flag: output is a fragment for \input{}, not a standalone document
)

$success = 0
$fail    = 0

foreach ($entry in $files) {
    $inputFile  = Join-Path $mdDir  $entry.md
    $outputFile = Join-Path $texDir $entry.tex

    # Resolve glob entries (filenames with Unicode that PS5.1 can't embed in scripts)
    if ($null -eq $entry.md -and $entry.glob) {
        $resolved = Get-ChildItem -Path $mdDir -Filter $entry.glob | Select-Object -First 1
        if (-not $resolved) {
            Write-Warning "NOT FOUND (glob $($entry.glob))"
            $fail++
            continue
        }
        $inputFile = $resolved.FullName
    }

    if ($entry.md -and -not (Test-Path $inputFile)) {
        Write-Warning "NOT FOUND: $($entry.md)"
        $fail++
        continue
    }

    $prefix = ($entry.tex -replace "\.tex$", "") + "-"

    & pandoc $inputFile -o $outputFile @pandocBaseArgs
    if ($?) {
        # Prefix all \label{} and \hypertarget{} with the file-specific id
        # so duplicate subheadings (TL;DR, Key Findings, etc.) don't create label conflicts
        $tex = [System.IO.File]::ReadAllText($outputFile, [System.Text.Encoding]::UTF8)
        $tex = $tex -replace '\\label\{',       ('\label{' + $prefix)
        $tex = $tex -replace '\\hypertarget\{', ('\hypertarget{' + $prefix)
        [System.IO.File]::WriteAllText($outputFile, $tex, [System.Text.Encoding]::UTF8)

        Write-Host "OK  $($entry.tex)"
        $success++
    } else {
        $src = if ($entry.md) { $entry.md } else { $entry.glob }
        Write-Warning "FAIL $src"
        $fail++
    }
}

Write-Host ""
Write-Host "Done: $success converted, $fail failed."
Write-Host ""
Write-Host "To compile the PDF, run:"
Write-Host "  xelatex main.tex && xelatex main.tex"
