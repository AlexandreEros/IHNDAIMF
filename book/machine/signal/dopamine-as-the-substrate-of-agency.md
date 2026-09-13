# Research Dossier — "What Is Dopamine?"
*Prepared for Chapter 1 of the Dopamine Trilogy in* **I Have No Dopamine, and I Must Function: A Tweaker Manifesto**

This dossier compiles the computational and functional neuroscience needed for a scientifically rigorous, accessible chapter framing dopamine as the central modulatory signal of biological agency. It supplies primary references with DOIs/PMIDs, key experiments, suggested analogies, and explicit flags wherever evidence is contested or rodent-to-human extrapolation is uncertain. Clinical disorders are deferred to a later chapter; neuroanatomy is referenced only as brief reminders.

---

## Section 1 — The Three Computational Frameworks: One Signal, Three Facets

The single empirical fact a non-specialist must absorb is this: midbrain dopamine neurons (in the VTA and SNc) are not generic "pleasure" cells. They are roughly 400,000–600,000 neurons in a human brain whose firing patterns map cleanly onto three formally distinct computational quantities. Those quantities have been studied by three partly overlapping research programs.

### A. Reward Prediction Error (RPE) — Schultz, Dayan, Montague

**The finding.** When monkeys receive an unexpected reward (a drop of juice), midbrain dopamine neurons fire a brief burst above baseline. After repeated pairing with a predictive cue (a tone or light), the burst migrates backward in time onto the cue itself. If the predicted reward is then omitted, the neurons show a precisely-timed *dip* below baseline at the moment the reward should have arrived. [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC6672808/) Fully predicted rewards produce no response. Dopamine is therefore not signaling reward; it is signaling *the difference between received and predicted reward*.

**Computational formalism.** This is exactly the temporal-difference (TD) error term δ(t) = r(t) + γV(s(t+1)) − V(s(t)) from Sutton and Barto's reinforcement-learning theory. Schultz, Dayan, and Montague (1997) explicitly proposed that dopamine *implements* this error term in biological tissue [Taylor & Francis](https://www.tandfonline.com/doi/full/10.31887/DCNS.2016.18.1/wschultz) — that the brain is, at least in this respect, a TD-learning machine.

**Key experiments.**
- Schultz's monkey single-unit recordings (Schultz, Apicella, Ljungberg 1993; Mirenowicz & Schultz 1994).
- Waelti, Dickinson & Schultz (2001), Nature 412:43–48 [Nature](https://www.nature.com/articles/nrn.2015.26) — dopamine neurons obey blocking, a signature prediction of formal learning theory.
- Bayer & Glimcher (2005), Neuron 47:129–141 [Nature](https://www.nature.com/articles/nrn.2015.26) — quantitative match to a TD prediction error.
- Transfer to humans via fMRI BOLD signal in ventral striatum: O'Doherty et al. (2003, 2004) and McClure, Berns & Montague (2003) showed that human striatal BOLD tracks model-derived TD errors trial-by-trial.
- Optogenetic causal demonstrations in mice: brief activation of VTA dopamine neurons is sufficient to drive behavioral conditioning (Steinberg et al. 2013; Tsai et al. 2009); brief inhibition mimics negative prediction error (Chang et al. 2016). [Annual Reviews](https://www.annualreviews.org/doi/10.1146/annurev-neuro-072116-031109)

**Primary references with identifiers.**
- Schultz W, Dayan P, Montague PR. *A neural substrate of prediction and reward.* Science 275:1593–1599 (1997). **DOI: 10.1126/science.275.5306.1593**.
- Schultz W. *Dopamine reward prediction-error signalling: a two-component response.* Nat Rev Neurosci 17:183–195 (2016). **DOI: 10.1038/nrn.2015.26**.
- Schultz W. *Dopamine reward prediction error coding.* Dialogues Clin Neurosci 18:23–32 (2016). **DOI: 10.31887/DCNS.2016.18.1/wschultz; PMID: 27069377**.
- Watabe-Uchida M, Eshel N, Uchida N. *Neural Circuitry of Reward Prediction Error.* Annu Rev Neurosci 40:373–394 (2017). **DOI: 10.1146/annurev-neuro-072116-031109**.

**Uncertainties / contested points.** (1) Some dopamine neurons (especially in dorsolateral SNc) respond to salience and aversive events, not just reward — Matsumoto & Hikosaka (2009) Nature 459:837. The "RPE-only" account is now best understood as describing a *majority* response in ventromedial midbrain. (2) Schultz himself (2016, NRN) now characterises the response as a *two-component signal*: an early, reward-agnostic detection burst followed by a value-coding component. [Frontiers](https://www.frontiersin.org/journals/neuroscience/articles/10.3389/fnins.2023.1171612/full) (3) Dopamine release is not necessary for *acquisition* of all forms of learning (Berridge 2007; FitzGerald, Dolan & Friston 2015) [Frontiers](https://www.frontiersin.org/journals/computational-neuroscience/articles/10.3389/fncom.2015.00136/full) — a central problem the active-inference reinterpretation tries to absorb.

**Analogy for non-specialists.** Dopamine is not "the applause"; it is the producer's note that says *the show was better, worse, or exactly as expected*. A standing ovation produces no spike if it was the predicted reaction. An ovation that didn't come on cue produces a sharp dip — and that dip is what the rest of the brain uses to revise its model of what the world is worth.

### B. Incentive Salience ("Wanting") — Berridge & Robinson

**The finding.** Dopamine does not generate pleasure. It generates *the magnetic, attention-grabbing pull of cues that predict reward.* Berridge and Robinson called this "incentive salience" or "wanting" [nih](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11773642/) (in scare quotes to distinguish it from conscious desire).

**Anchor experiments.**
- 6-OHDA-lesioned rats (near-total mesolimbic dopamine depletion) starve to death in cages full of food: they will not approach or pursue. But when sucrose is squirted directly into their mouths, their orofacial reactions (rhythmic tongue protrusions, paw licks) — the involuntary "liking" expressions catalogued by Grill & Norgren (1978) — are *fully preserved* (Berridge, Venier & Robinson 1989; Peciña, Cagniard, Berridge & Aldridge 2003).
- Conversely, dopamine-sensitized rats (chronic amphetamine, or genetic dopamine-transporter knockdown) pursue cued rewards with pathological intensity but do *not* show enhanced "liking" reactions to the same rewards [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC2813042/) (Wyvell & Berridge 2000; Tindell et al. 2005; Peciña et al. 2003).
- Optogenetic activation of VTA dopamine neurons during cue presentation enhances cue-triggered pursuit without altering hedonic taste reactions (Saunders, Richard, Margolis & Janak 2018).

**Primary references.**
- Berridge KC, Robinson TE. *What is the role of dopamine in reward: hedonic impact, reward learning, or incentive salience?* Brain Res Rev 28:309–369 (1998). **PMID: 9858756**.
- Berridge KC. *The debate over dopamine's role in reward: the case for incentive salience.* Psychopharmacology 191:391–431 (2007). **PMID: 17072591**.
- Berridge KC, Robinson TE. *Liking, wanting, and the incentive-sensitization theory of addiction.* Am Psychol 71:670–679 (2016). **DOI: 10.1037/amp0000059; PMID: 27977239**.
- Robinson TE, Berridge KC. *The Incentive-Sensitization Theory of Addiction 30 Years On.* Annu Rev Psychol 76:29–58 (2025). **DOI: 10.1146/annurev-psych-011624-024031**.
- Grill HJ, Norgren R. *The taste reactivity test. I.* Brain Res 143:263–279 (1978). **DOI: 10.1016/0006-8993(78)90568-1; PMID: 630409**.

**Analogy.** Liking is the warmth on the tongue; wanting is the gravity that pulls you across the room toward the bottle. Damage the gravity and the warmth still works — but you no longer cross the room.

### C. Effort Cost and Behavioral Activation — Salamone

**The finding.** Independent of learning and independent of pleasure, dopamine — particularly in the nucleus accumbens core — determines *how much effort an animal is willing to invest for a given reward*. Dopamine-depleted animals do not become anhedonic; they become economically conservative in a very specific way: they reallocate to low-effort options even when the high-effort, high-value option is available.

**Anchor experiments.**
- T-maze barrier task (Salamone, Cousins & Bucher 1994; Salamone et al. 2007): rats choose between climbing a barrier for four food pellets vs. taking the easy arm for two pellets. Intact rats almost always climb. Accumbens dopamine depletion — or systemic D2 antagonism with haloperidol — reverses the preference; the rats now take the small reward. Crucially, when the *barrier is removed*, they still prefer the larger reward — effort, not value, is the affected dimension.
- Concurrent lever-press / chow choice (Salamone et al. 1991, 2002): dopamine-depleted rats lever-press less for preferred food but eat more freely available, less-preferred chow. They have *not* lost interest in food; they have lost willingness to pay an effort cost for it.
- Tetrabenazine (a vesicular monoamine transporter inhibitor used as a pharmacological model of motivational anhedonia) reproduces the same effort-shift in rats and humans without altering sucrose preference or hedonic reactivity (Correa et al. 2016; Treadway et al. 2012 in humans, EEfRT task).

**Primary references.**
- Salamone JD, Cousins MS, Bucher S. *Anhedonia or anergia? Effects of haloperidol and nucleus accumbens dopamine depletion on instrumental response selection in a T-maze cost/benefit procedure.* Behav Brain Res 65:221–229 (1994). **PMID: 7718155**.
- Salamone JD, Correa M, Farrar A, Mingote SM. *Effort-related functions of nucleus accumbens dopamine and associated forebrain circuits.* Psychopharmacology 191:461–482 (2007). **DOI: 10.1007/s00213-006-0668-9**.
- Salamone JD, Correa M. *The mysterious motivational functions of mesolimbic dopamine.* Neuron 76:470–485 (2012). **DOI: 10.1016/j.neuron.2012.10.021; PMID: 23141060**.
- Salamone JD, Correa M, Yang J-H, Rotolo R, Presby R. *Dopamine, Effort-Based Choice, and Behavioral Economics.* Front Behav Neurosci 12:52 (2018). **DOI: 10.3389/fnbeh.2018.00052**.
- Salamone JD, Correa M. *The Neurobiology of Activational Aspects of Motivation: Exertion of Effort, Effort-Based Decision Making, and the Role of Dopamine.* Annu Rev Psychol 75:1–32 (2024). **DOI: 10.1146/annurev-psych-020223-012208**.

**Analogy.** If reward is the destination, dopamine is not the map and not the joy of arrival — it is the gas in the tank. With a quarter-tank, you'll still drive to the corner store; you will not drive across the state, even if the prize at the state line is much larger.

### D. Integration — Three Facets of One Signal

These programs are routinely framed as competitors in textbooks, but the empirical reality is that they describe *the same molecule measured under different experimental conditions and at different timescales*.

| Framework | Timescale | Manipulation | What it measures |
|---|---|---|---|
| RPE | Phasic (bursts ~100 ms) | Single-unit recording, fast-scan voltammetry | What you *learn* |
| Incentive salience | Phasic + sensitization | 6-OHDA lesion, optogenetic activation, taste reactivity | What *grabs* you |
| Effort/activation | Tonic (minutes–hours) | Microdialysis, accumbens DA depletion | What you'll *do* |

A unifying picture is now standard in computational neuroscience (Niv et al. 2007; Berke 2018; Hamid et al. 2016): **phasic** dopamine bursts encode RPE and update value representations; **tonic** dopamine concentrations set the gain on translating that value into vigorous, sustained, costly action; [ResearchGate](https://www.researchgate.net/publication/6762958_Tonic_dopamine_Opportunity_costs_and_the_control_of_response_vigor) **incentive salience** is what happens at the cue — a phasic burst onto an already-tonically-modulated striatum, which both teaches and energises in a single event.

Hamid et al. (2016, *Nat Neurosci* 19:117; **DOI: 10.1038/nn.4173**) is particularly important here: they used fast-scan voltammetry in rats and showed that ramping accumbens dopamine signals (over seconds) track moment-to-moment *available reward*, simultaneously providing a value signal *and* a vigor signal — a single physical quantity bridging the phasic-RPE and tonic-effort accounts.

**Where the frameworks genuinely tension.**
- *Learning vs. performance.* If dopamine is purely an RPE that drives learning, depletion should impair acquisition; in fact it primarily impairs *expression* of already-learned behavior [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC2991243/) (the central puzzle FitzGerald, Dolan & Friston 2015 try to resolve).
- *Aversion.* Pure RPE accounts struggle with neurons that fire to aversive cues; salience and active-inference frameworks accommodate this more naturally.
- *Conscious experience.* All three frameworks speak about behavior and physiology. None of them, by themselves, gives an account of the *felt* texture of motivation in humans — a gap the chapter should mark openly.

**The book's claim.** The deep significance is that all three collapse together when dopamine is depleted: you do not learn what is worth pursuing, what is worth pursuing does not seize your attention, and even what little you can identify as worth pursuing cannot be translated into action. Agency is not a thing dopamine "supports" — dopamine is the substrate of which agency is partly made.

---

## Section 2 — The Wanting/Liking Distinction: What It Got Right, What It Got Wrong

### What it got right

The Berridge/Robinson program made a real and important discovery: the neural systems that *generate behavior toward* a reward and the neural systems that *register hedonic impact when the reward arrives* are at least partially dissociable. The strong evidence:

- **Anatomy.** Hedonic enhancement of orofacial "liking" responses in rats requires μ-opioid (and to some extent endocannabinoid and orexin) stimulation in cubic-millimeter-sized "hotspots" — one in the rostrodorsal medial shell of the nucleus accumbens [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC6673729/) (Peciña & Berridge 2005, *J Neurosci* 25:11777; **DOI: 10.1523/JNEUROSCI.2329-05.2005**), one in the posterior ventral pallidum [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC6673729/) (Smith & Berridge 2005, 2007; **PMID: 17301168**). Stimulation outside these hotspots increases food intake — "wanting" — without enhancing liking reactions. [ResearchGate](https://www.researchgate.net/publication/6504618_Opioid_Limbic_Circuit_for_Reward_Interaction_between_Hedonic_Hotspots_of_Nucleus_Accumbens_and_Ventral_Pallidum)
- **Pharmacology.** Dopamine antagonists (pimozide, haloperidol) and near-total dopamine depletion (6-OHDA) leave hedonic orofacial reactivity intact (Berridge, Venier & Robinson 1989; Peciña et al. 1997).
- **Sensitization.** Repeated psychostimulant exposure produces hyper-reactive mesolimbic dopamine systems and exaggerated cue-triggered pursuit, but no enhancement of hedonic reactions (Wyvell & Berridge 2000, 2001).
- **Human imaging concordance.** Volkow et al. (2002) and Leyton et al. (2002) showed striatal dopamine release in humans correlates more tightly with subjective ratings of *wanting* than of *liking* a reward. [Wesleyan](https://robinsonlab.research.wesleyan.edu/files/2014/01/Robinson-2015-Curr-Top-Behav-Neurosci.pdf)

### The critique to mount

The chapter should present these as real findings, then advance three substantive criticisms.

**1. The empirical floor for "intact liking" is rodent facial muscles.** The taste reactivity test of Grill & Norgren (1978) — rhythmic tongue protrusions for sweet, gapes for bitter [Ssib](http://www.ssib.org/web/classics/Grill&Norgren%20I%201978.pdf) — measures a brainstem-mediated motor reflex preserved even in *decerebrate* rats (Grill & Norgren 1978 part II, **PMID: 630410**). When Berridge says dopamine-depleted animals still "like" sucrose, what is preserved is the brainstem motor pattern. Calling that "pleasure" is a theoretical move, not a direct measurement, and Berridge is admirably explicit that it is so — he typically writes "liking" in scare quotes and describes it as the "objective" or "core" hedonic process distinct from conscious pleasure.

**2. No equivalent causal evidence exists in primates, let alone humans.** Primates do not produce the same canonical orofacial reactivity; the central rodent paradigm doesn't transfer. Human evidence is correlational (PET dopamine release ↔ self-reported wanting/liking) and offers no causal demonstration that human pleasure is *intact* under dopamine depletion. A pointed critique on exactly this issue: Blum et al. (2018) *J Syst Integr Neurosci* argue that anatomical and gene-expression differences between human and non-human primate striatal/limbic circuitry (citing Sousa et al. 2017, [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC6446569/) *Science* 358:1027) make the "dopamine ≠ pleasure" extrapolation premature in humans (PMC6446569).

**3. Wanting and liking are phenomenologically fused in humans.** Whatever rodent brainstems do, the lived human experience of pleasure includes attention, anticipation, and pursuit as constitutive components, not separable add-ons. The pleasure of a sunset includes the act of being drawn to the window. Stripping anticipatory motivation away does not isolate "pure liking" in humans; it produces anhedonia — the felt grey deadness of depression and stimulant withdrawal — even in cases where consummatory reactions to sweet food might be technically preserved. The Salamone tradition has been making precisely this critique for two decades: "reward" in the Berridge sense is theoretically slippery and often equivocates between pleasure, preference, and reinforcement (Salamone et al. 2005; Salamone & Correa 2012).

### Concessions in the literature

- Berridge & Robinson have repeatedly conceded that "liking" as they measure it is *not* conscious pleasure but a "core hedonic process" — an unconscious affective reaction that may be a *component* of conscious pleasure but is not identical to it (Berridge & Kringelbach 2015, *Neuron* 86:646; **DOI: 10.1016/j.neuron.2015.02.018**). The chapter should quote this concession directly: it shows the framework is more careful than the popular "dopamine isn't pleasure" headline.
- The 30-year retrospective (Robinson & Berridge 2025) acknowledges that the wanting/liking dissociation is cleanest in rodent operant assays and that its translation to human subjective experience remains an active research question, not a settled fact.
- Even Berridge's more recent work introduces "fearful salience" and emphasises that incentive salience is *valenced* and *contextually flexible*, complicating the simple wanting/liking binary (Reynolds & Berridge 2008).

**The honest take for the chapter.** The wanting/liking distinction is one of the most productive ideas in motivational neuroscience and is supported by causal rodent evidence that genuinely no other framework explains as well. But it is a framework about *behavior and physiology*, not about *human conscious pleasure*, and any rhetoric that says "dopamine-depleted humans still enjoy life, they just don't pursue it" is doing dishonest work with rodent facial muscles.

---

## Section 3 — Dopamine and Time: The Discount Factor in the Brain

### The claim

In reinforcement learning, the discount factor γ ∈ [0,1] determines how much a reward t steps in the future is worth *now*: γ^t × r. Low γ → only immediate rewards have any motivational pull. High γ → distant rewards remain motivating. There is now substantial evidence that **tonic dopamine levels in striatum and prefrontal cortex set the brain's effective γ.**

### Mechanisms and computational models

- **Niv, Daw, Joel & Dayan (2007), *Psychopharmacology* 191:507–520. DOI: 10.1007/s00213-006-0502-4; PMID: 17031711.** This is the foundational paper. They formalised tonic accumbens dopamine as encoding the *opportunity cost of time* — the average reward rate the animal forgoes by doing nothing. When dopamine is high, time is "expensive" (each second of inaction costs you a lot of expected reward) and the animal responds vigorously; when dopamine is low, time is cheap, sloth is rational, and the future collapses inward. Mathematically, opportunity cost and discount factor are tightly linked: an agent with high opportunity cost behaves like an agent with high γ.
- **Beeler, Daw, Frazier & Zhuang (2010), *Front Behav Neurosci* 4:170. DOI: 10.3389/fnbeh.2010.00170.** Using dopamine-transporter-knockdown mice (chronically elevated synaptic dopamine), they showed tonic dopamine modulates the *exploitation* parameter in TD models — how decisively the agent commits to high-value options. Conceptually adjacent to discounting: low tonic DA = noisy, immediate-driven choice; high tonic DA = sharp commitment to long-horizon plans.
- **Fiorillo, Tobler & Schultz (2008), *J Neurosci* 28:9619.** Phasic dopamine bursts to delayed rewards are *attenuated* in proportion to delay, and the attenuation matches the animal's behaviorally measured discount function. Dopamine therefore not only *sets* discounting but *encodes the already-discounted value* of distant outcomes.
- **Kobayashi & Schultz (2008), *J Neurosci* 28:7837.** Direct neural correlate of subjective temporal discounting in primate dopamine neurons.
- **Pine et al. (2010), *J Neurosci* 30:8888** and the broader human pharmacological literature: L-DOPA shifts intertemporal choice (somewhat inconsistently across studies — see Petzold et al. 2024 for a recent re-examination on bioRxiv, **DOI: 10.1101/2024.08.28.610170**), confirming a causal but heterogeneous role for dopamine in human delay discounting.
- **Mohebi et al. (2019), *Nature* 570:65. DOI: 10.1038/s41586-019-1235-y.** Critically, they showed that *tonic* mesolimbic dopamine release tracks *reward availability* (and therefore opportunity cost) independently of phasic firing, providing the cleanest physiological correlate yet of the Niv et al. theoretical proposal.

### Connection to ADHD "time blindness" and stimulant withdrawal

Two clinically relevant phenomena emerge as direct predictions of the framework, and the chapter can flag them while leaving full clinical treatment for later:

- ADHD is associated with steeper delay discounting (a robust meta-analytic finding; Patros et al. 2016) and with hypofunctional striatal dopamine signalling (Volkow et al. 2009). On the Niv account, low tonic dopamine literally lowers γ — the future is mathematically worth less, so distant goals fail to motivate present action. "Time blindness" in this framing is not a metaphor; it is what an RL agent with γ ≈ 0 looks like.
- Stimulant withdrawal collapses tonic dopamine and produces precisely the behavioral profile predicted: long-horizon goals (job, relationships, health) lose motivational weight; only immediate, large, salient rewards (the next dose) retain pull. The agent's effective horizon contracts to minutes.

### Lamprey conservation

The earlier neurology chapters cited the lamprey work; the brief reminder here strengthens the chapter's argument that the system being damaged is not a recent cortical add-on but a 560-million-year-old vertebrate computation.

- Stephenson-Jones, Samuelsson, Ericsson, Robertson & Grillner (2011) *Curr Biol* 21:1081–1091. **DOI: 10.1016/j.cub.2011.05.001; PMID: 21700460.** All core basal-ganglia components [nih](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8541398/) — striatum, GPe/GPi homologs, STN, SNc — are present in lamprey, the oldest extant vertebrate lineage.
- Ericsson, Stephenson-Jones, Pérez-Fernández, Robertson, Silberberg & Grillner (2013) *J Neurosci* 33:8045–8054. **DOI: 10.1523/JNEUROSCI.5881-12.2013; PMID: 23637194.** Even the D1/D2 segregation across direct/indirect pathways is preserved in lamprey, [Journal of Neuroscience](https://www.jneurosci.org/content/33/18/8045.long) with dopamine modulating excitability in opposite directions on the two pathways exactly as in mammals.
- Grillner & Robertson (2016) *Curr Biol* — *The Basal Ganglia Over 500 Million Years.* **PMID: 27780050.** Review article making the conservation argument explicitly.
- Pérez-Fernández et al. (2021) "The Dopaminergic Control of Movement — Evolutionary Considerations." **PMC8541398.**

The basal ganglia, complete with dopaminergic modulation of value, action selection, and effort, predate jaws, limbs, and neocortex. [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC8541398/) Whatever dopamine is doing computationally, it is doing the same thing in a creature that diverged from our line in the Cambrian.

**Analogy.** Imagine an investor with a discount rate set by a dial. Crank the dial high (high tonic dopamine) and a $100 reward in a year is worth $90 today — worth working for. Crank the dial low and that same $100 in a year is worth fifty cents today — not worth standing up for. Dopamine *is* that dial, calibrated by hundreds of millions of years of evolution, and stimulant abuse disconnects the dial from its setting.

---

## Section 4 — Dopamine as Precision-Weighting: The Active-Inference Framework

### The claim

Karl Friston and colleagues, working from the free-energy / active-inference framework, propose that dopamine encodes the **precision** (the inverse variance, a.k.a. confidence) of beliefs about which actions and cues are currently worth attending to. In a Bayesian generative model of behavior, precision is the gain on prediction errors: high-precision errors strongly update beliefs and drive action; low-precision errors are dismissed as noise.

- **High dopamine** → high precision on the agent's current policy → decisive action, sharp attention to selected cues, willingness to commit, narrow focus.
- **Low dopamine** → low precision on every policy → no policy is "trusted" enough to commit to, attention diffuses, the agent drifts. (This naturally produces both the sluggish, hesitant phenotype of Parkinson's and, when applied to sensory rather than motor precision, the noisy, hyper-salient world of psychosis — a duality the framework explicitly tries to capture.)

### Why this framework is intellectually attractive

It potentially **unifies the three accounts of Section 1**:
- RPE is what happens when sensory evidence updates the generative model — a special case of precision-weighted prediction error in the value channel.
- Incentive salience is precision on cue-evoked predictions of action affordance — dopamine "lights up" cues by raising their precision.
- Effort/vigor is precision on policies — high precision on "this action is worth doing" is *exactly* what makes an organism willing to pay a cost.

### Primary references

- Friston KJ, Shiner T, FitzGerald T, Galea JM, Adams R, Brown H, Dolan RJ, Moran R, Stephan KE, Bestmann S. *Dopamine, Affordance and Active Inference.* PLoS Comput Biol 8:e1002327 (2012). **DOI: 10.1371/journal.pcbi.1002327; PMC3252266.** The foundational paper. Simulates dopamine depletion as reduced postsynaptic gain (= reduced precision) and reproduces a wide range of dopamine-depletion behavioral phenotypes.
- FitzGerald THB, Dolan RJ, Friston K. *Dopamine, reward learning, and active inference.* Front Comput Neurosci 9:136 (2015). **DOI: 10.3389/fncom.2015.00136; PMID: 26581305.** Extends the framework to instrumental conditioning; explicitly addresses the puzzle that dopamine depletion impairs *performance* but not *learning*, which RPE accounts handle awkwardly.
- Schwartenbeck P, FitzGerald T, Mathys C, Dolan R, Friston K. *The Dopaminergic Midbrain Encodes the Expected Certainty about Desired Outcomes.* Cereb Cortex 25:3434–3445 (2015). **DOI: 10.1093/cercor/bhu159.** Human fMRI evidence linking midbrain BOLD to expected precision of outcome beliefs.
- Adams RA, Stephan KE, Brown HR, Frith CD, Friston KJ. *The Computational Anatomy of Psychosis.* Front Psychiatry 4:47 (2013). **DOI: 10.3389/fpsyt.2013.00047.** Applies the precision framework to schizophrenia.

### Honest assessment of evidentiary status

This is the part of the chapter where epistemic honesty most matters.

- **The framework is largely theoretical.** Its empirical support is real but indirect: it explains existing data parsimoniously, but few experiments have been designed specifically to discriminate "precision" from "RPE" predictions because the two often make similar predictions.
- **Direct neurophysiological tests are scarce.** Fiorillo et al. (2003), *Science* 299:1898 showed dopamine bursts covary with reward *uncertainty* (the variance of expected reward), which is consistent with a precision-encoding role — but it is consistent with many things.
- **The framework has been criticised for being unfalsifiable in practice** — Bayesian formalism is flexible enough to accommodate almost any empirical pattern by adjusting the generative model. Researchers in the Schultz/Glimcher tradition tend to view it as elegant but underdetermined.
- **The framework is theoretically attractive precisely because of its scope** — it speaks to motor, cognitive, and perceptual deficits with one mechanism — but scope and supporting evidence should not be confused.

The chapter should present active inference as a *promising and unifying interpretation*, not as the consensus view. It is the best candidate the field currently has for a single mathematical statement of what dopamine does, but the empirical jury is still out.

**Analogy.** Imagine the brain as a fleet of competing hypotheses about what to do next. Each hypothesis comes with a confidence rating. Dopamine is the volume knob on confidence: turn it up and one hypothesis wins, the agent acts decisively, attention narrows, the world feels meaningful. Turn it down and every hypothesis whispers at the same flat volume; nothing wins, nothing feels worth doing, everything is hazy.

---

## Section 5 — Grounding in Neuroanatomy (Brief Reminders Only)

The reader has had the full primer. A compact reminder is sufficient.

**Sources.** Two small midbrain nuclei, together comprising on the order of half a million neurons in humans:
- **VTA (ventral tegmental area)** → mesolimbic projection to nucleus accumbens (NAcc), and mesocortical projection to PFC, amygdala, hippocampus.
- **SNc (substantia nigra pars compacta)** → nigrostriatal projection to dorsal striatum (caudate + putamen).

**Targets.** Striatum (dorsal and ventral), prefrontal cortex (especially dorsolateral, anterior cingulate, orbitofrontal), basolateral amygdala, hippocampal formation.

**Receptors.** D1-family (D1, D5; G_s-coupled, excitatory) and D2-family (D2, D3, D4; G_i-coupled, inhibitory). In striatum, D1 receptors are concentrated on the *direct-pathway* medium spiny neurons (which release thalamocortical motor programs — "go") and D2 receptors on *indirect-pathway* MSNs (which suppress competing programs — "no-go"). [PubMed Central](https://pmc.ncbi.nlm.nih.gov/articles/PMC3853485/) A phasic dopamine burst therefore simultaneously *promotes* the chosen action and *suppresses* alternatives. (Gerfen & Surmeier 2011 *Annu Rev Neurosci* 34:441; Kravitz et al. 2010 *Nature* 466:622.)

**Mapping computational functions onto circuits.**
- **RPE** → phasic VTA→NAcc and SNc→dorsal striatal signaling; teaches D1- and D2-MSNs in opposite directions, sculpting which action sequences will be selected next time.
- **Effort/vigor** → tonic accumbens core dopamine; sets the threshold for willingness to engage, the "gas in the tank" (Salamone et al. 2007; Niv et al. 2007; Hamid et al. 2016).
- **Precision / cognitive control** → D1-mediated persistent activity in PFC pyramidal cells (working-memory maintenance; Williams & Goldman-Rakic 1995; Vijayraghavan et al. 2007 *Nat Neurosci* 10:376) and D2-mediated striatal gating of what enters/exits working memory (Frank, Loughry & O'Reilly 2001; Cools & D'Esposito 2011 *Biol Psychiatry* 69:e113). The famous "inverted-U" of dopamine and PFC function lives here.
- **Incentive salience** → phasic NAcc dopamine onto an already cue-prepared striatal substrate (Saunders et al. 2018; Flagel et al. 2011 *Nature* 469:53).

The crucial point for the chapter: **the same neuromodulator is reading and writing on circuits that govern action selection, working memory, attentional gating, and effort allocation simultaneously.** This is why dopamine pathology cannot be parcelled into "motor symptoms here, cognitive symptoms there." It hits all of them, because the same molecule is the gain term on all of them.

---

## Section 6 — Bridge to Part B

### The framing

After this chapter, the reader should hold three propositions in mind:

1. Dopamine is not "the pleasure chemical." It is the central computational currency of biological agency — a single signal that, depending on timescale and target, encodes prediction error, incentive salience, effort allocation, and the precision of belief and policy.
2. These functions are not modular add-ons; they are facets of one underlying computation. The mathematical convergence (TD learning, opportunity-cost theories of vigor, active-inference precision) is not a coincidence — it reflects that there is a *single problem* the dopamine system solves: how a finite organism, in finite time, decides what is worth doing.
3. This system is evolutionarily ancient (lamprey conservation), anatomically central (striatum and PFC), and computationally load-bearing for everything we mean by *agency*: learning, wanting, doing, persisting, caring about the future.

### The transition to clinical disorders

The cleanest framing for the next chapter is that **dopamine system damage is not the loss of a single function — it is the simultaneous, coordinated collapse of all of them.** A reader with this chapter in mind should approach Parkinson's, depression-as-anhedonia, ADHD, addiction, and stimulant withdrawal not as a list of disorders that happen to share a neurotransmitter, but as different views into the same machine breaking in the same way along different axes.

Specifically:
- Lose phasic dopamine → you cannot learn what is worth pursuing.
- Lose incentive salience → nothing in the world reaches in and grabs you anymore.
- Lose tonic accumbens dopamine → effort costs balloon and the ledger tips against action; the sofa wins every cost-benefit calculation.
- Lose the dopaminergic discount factor → the future contracts; nothing more than ten minutes away has motivational weight.
- Lose D1-mediated PFC precision → working memory becomes leaky, attention diffuses, plans cannot be held.

These are not five symptoms. These are five views of one collapse.

### Conveying the astronomical scale

Suggested language and analogies for the chapter's closing move:

- **The infrastructure analogy.** Dopamine is not a feature of the agent; it is the power grid the agent runs on. When it goes down, the lights don't dim politely — the hospital generators and the traffic lights and the refrigeration and the elevators all fail at once. There is no "core function" that survives because every function is downstream of the grid.
- **The scale of the system.** Roughly half a million dopamine neurons, projecting to virtually every cortical region and every basal-ganglia nucleus, modulating tens of billions of synapses. A single SNc neuron in the rat has been estimated to make on the order of 100,000–200,000 striatal synaptic contacts (Matsuda et al. 2009 *J Neurosci* 29:444; **DOI: 10.1523/JNEUROSCI.4029-08.2009**). The destruction of a few hundred thousand cells removes a regulatory signal from a substantial fraction of all the synaptic computations the brain performs.
- **The evolutionary depth.** The system being damaged is older than vertebrate jaws. It was selecting actions for fish 500 million years before there was a cortex to select for. [Karger Publishers](https://karger.com/bbe/article/96/4-6/318/821601/The-Lamprey-Forebrain-Evolutionary-Implications) Damage here is damage to something more fundamental than thought — it is damage to the operation of *being a behaving thing*.
- **The phenomenological consequence.** What we experience as agency — caring what happens, wanting things, being able to move toward them, tracking the future, holding intentions, finding the world meaningfully textured rather than flat — is not built on top of dopamine. It is partly *constituted by* dopamine's continuous, well-calibrated operation. To say "my dopamine is gone and I must function" is to attempt the impossible. The chapter ahead documents what that attempt looks like, and how far it can be pushed before something gives way.

---

## Summary of Flagged Uncertainties

For the author's transparency in the manuscript:

1. **Salience-coding dopamine neurons** in dorsolateral SNc complicate the pure RPE story; the field now accepts dopamine is heterogeneous (Matsumoto & Hikosaka 2009; Bromberg-Martin, Matsumoto & Hikosaka 2010 *Neuron* 68:815).
2. **Rodent-to-human extrapolation of "intact liking"** is the single most contestable empirical claim in the wanting/liking framework; orofacial reactivity is a brainstem reflex, not pleasure, and Berridge himself frames it as "core hedonic process," not subjective pleasure.
3. **Active inference is unifying but underdetermined** — elegant Bayesian formalism, real but indirect empirical support, few discriminating experiments vs. RPE accounts.
4. **Human pharmacological studies of dopamine and temporal discounting are inconsistent** (de Wit et al. vs. Pine et al. vs. recent replications); the rodent literature is much cleaner.
5. **"Tonic" vs. "phasic" dopamine** is a useful conceptual distinction but the underlying biology is increasingly understood as a continuum of release dynamics rather than two discrete modes (Berke 2018 *Nat Neurosci* 21:787; **DOI: 10.1038/s41593-018-0152-y**).
6. **The half-million-neuron figure** for human midbrain dopamine cells is a mid-range estimate; published counts range from roughly 200,000 to 600,000 depending on counting method and inclusion criteria. The chapter should hedge accordingly.

These flags should be carried into the prose as moments of "and here the evidence is thinner" rather than buried in endnotes — the book's argument is stronger, not weaker, when its empirical claims are calibrated honestly.