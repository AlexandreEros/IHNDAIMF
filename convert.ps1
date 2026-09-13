# convert.ps1
# Converts the ordered Markdown manuscript into LaTeX fragments for \input{} in main.tex.
# Run from anywhere; paths are resolved relative to this script.
# Requires: pandoc (3.x), xelatex (MiKTeX or equivalent)

$root   = Split-Path -Parent $MyInvocation.MyCommand.Path
$texDir = Join-Path $root "chapters"

New-Item -ItemType Directory -Force $texDir | Out-Null

# Ordered mapping: source Markdown -> output TeX fragment.
# Each Markdown file is a section within a chapter, so --top-level-division=section
# maps its # heading to \section{} rather than \chapter{}.
# Side dossiers under dossiers/ are intentionally excluded from the linear PDF.

$files = @(
    # Part I — The Machine
    [pscustomobject]@{ md = "book/machine/signal/dopamine-as-the-substrate-of-agency.md";                         tex = "01_dopamine_substrate.tex" },
    [pscustomobject]@{ md = "book/machine/signal/dopamine-and-voluntary-action.md";                            tex = "02_dopamine_action.tex"   },
    [pscustomobject]@{ md = "book/machine/before-human-brain/it-started-three-billion-years-ago.md";          tex = "03_it_started.tex"        },
    [pscustomobject]@{ md = "book/machine/before-human-brain/from-urbilateria-to-lamprey.md";                 tex = "04_urbilateria.tex"       },
    [pscustomobject]@{ md = "book/machine/before-human-brain/vertebrates-to-mammals.md";                      tex = "05_vertebrates.tex"       },
    [pscustomobject]@{ md = "book/machine/loop-inside-skull/neurology-101.md";                                tex = "06_neurology_101.tex"     },
    [pscustomobject]@{ md = "book/machine/loop-inside-skull/dopamine-pleasure-and-the-self.md";               tex = "07_pleasure_and_self.tex" },

    # Part II — The Illness
    [pscustomobject]@{ md = "book/illness/dopamine-spectrum/the-dopamine-spectrum.md";                         tex = "09_dopamine_spectrum.tex" },
    [pscustomobject]@{ md = "book/illness/patient-and-taxonomy/treatment-resistant-depression.md";            tex = "10a_trd_basis.tex"        },
    [pscustomobject]@{ md = "book/illness/patient-and-taxonomy/the-traad-spectrum.md";                        tex = "10b_traad.tex"            },
    [pscustomobject]@{ md = "book/illness/patient-and-taxonomy/when-self-medication-becomes-addiction.md";    tex = "10c_self_medication.tex"  },
    [pscustomobject]@{ md = "book/illness/patient-and-taxonomy/dsm-iii-was-never-clustered-into-existence.md"; tex = "11_dsm_iii.tex"           },
    [pscustomobject]@{ md = "book/illness/missing-syndrome/japans-postwar-philopon-crisis.md";                tex = "12_philopon.tex"          },
    [pscustomobject]@{ md = "book/illness/missing-syndrome/non-english-follow-up-literature.md";              tex = "13_non_english.tex"       },
    [pscustomobject]@{ md = "book/illness/missing-syndrome/what-we-do-not-know-about-recovering-from-methamphetamine.md"; tex = "14_what_we_dont_know.tex" },
    [pscustomobject]@{ md = "book/illness/missing-syndrome/dopamine-d2-receptor-downregulation.md";           tex = "15_d2_downregulation.tex" },
    [pscustomobject]@{ md = "book/illness/missing-syndrome/why-stimulant-induced-cognitive-damage-lacks-a-named-syndrome.md"; tex = "16_missing_syndrome.tex" },

    # Part III — The Atrocity
    [pscustomobject]@{ md = "book/atrocity/political-uses-of-non-agency/dopamine-agency-and-state-violence.md"; tex = "17_state_violence.tex" },
    [pscustomobject]@{ md = "book/atrocity/political-uses-of-non-agency/restoration-of-mesolimbic-reward-capacity.md"; tex = "18_restoration.tex" },
    [pscustomobject]@{ md = "book/atrocity/system-that-refused-to-look/the-200-billion-machine-that-forgot-to-cure-anything.md"; tex = "19_200_billion.tex" },
    [pscustomobject]@{ md = "book/atrocity/system-that-refused-to-look/ibogaine-and-9-methyl-beta-carboline.md"; tex = "20_ibogaine.tex" }
)

$pandocBaseArgs = @(
    "--top-level-division=section",
    "--wrap=none",
    "--no-highlight",
    "-f", "markdown+smart"
)

$success = 0
$fail    = 0

foreach ($entry in $files) {
    $inputFile  = Join-Path $root $entry.md
    $outputFile = Join-Path $texDir $entry.tex

    if (-not (Test-Path $inputFile)) {
        Write-Warning "NOT FOUND: $($entry.md)"
        $fail++
        continue
    }

    $prefix = ($entry.tex -replace "\.tex$", "") + "-"

    & pandoc $inputFile -o $outputFile @pandocBaseArgs
    if ($?) {
        # Prefix \label{} and \hypertarget{} with a file-specific id so repeated
        # headings such as TL;DR and Key Findings do not collide in LaTeX.
        $tex = [System.IO.File]::ReadAllText($outputFile, [System.Text.Encoding]::UTF8)
        $tex = $tex -replace '\\label\{',       ('\label{' + $prefix)
        $tex = $tex -replace '\\hypertarget\{', ('\hypertarget{' + $prefix)
        [System.IO.File]::WriteAllText($outputFile, $tex, [System.Text.Encoding]::UTF8)

        Write-Host "OK  $($entry.tex)"
        $success++
    } else {
        Write-Warning "FAIL $($entry.md)"
        $fail++
    }
}

Write-Host ""
Write-Host "Done: $success converted, $fail failed."
Write-Host ""
Write-Host "To compile the PDF, run:"
Write-Host "  xelatex main.tex && xelatex main.tex"
