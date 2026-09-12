# Stéphane Mallat (born 1962)

French applied mathematician whose career connects harmonic analysis, signal processing, image/video compression, hardware commercialization, and later mathematical work on deep neural networks.

Mallat is especially useful here because his career does not fit a simple opposition between abstract mathematics and industrial technology. His work on multiresolution analysis and wavelets fed into practical signal-processing methods; he later co-founded a semiconductor/image-processing company; and his later scattering work uses the mathematics of invariance, groups, wavelets, and multiscale representations to analyze deep convolutional networks.

## Career

- Born 24 October 1962.
- Trained at École Polytechnique and received a PhD in electrical engineering from the University of Pennsylvania in 1988.
- Joined the Courant Institute at New York University in 1988.
- Later became professor of applied mathematics at École Polytechnique, where he also chaired the applied-mathematics department.
- Co-founded **Let It Wave** in 2001 with Christophe Bernard, Jérôme Kalifa, and Erwan Le Pennec and ran the company until 2007.
- Subsequently taught at École normale supérieure and in 2017 became Professor of Data Science at the Collège de France.
- Awarded the **CNRS Gold Medal in 2025**. CNRS describes him as a co-signatory of ten patents.

## Wavelets and signal processing

Mallat was one of the central figures in making wavelet analysis into a practical multiscale signal-processing framework. His 1989 work on multiresolution analysis and fast wavelet decomposition became part of the conceptual and algorithmic foundation for later wavelet-based image processing. CNRS describes him as the inventor of a key algorithm behind JPEG 2000.

His major textbook is:

- Stéphane Mallat, *A Wavelet Tour of Signal Processing*; the third edition is titled *A Wavelet Tour of Signal Processing: The Sparse Way* (Academic Press/Elsevier, 2009).

Selected earlier papers:

- “Multiresolution Approximation and Wavelet Orthonormal Bases of L2(R)” (1989).
- “A Theory for Multiresolution Signal Decomposition: The Wavelet Representation” (1989).
- with Zhifeng Zhang, “Matching Pursuits with Time-Frequency Dictionaries” (1993).
- with Erwan Le Pennec, “Bandelet Image Approximation and Compression” (2005).

The line from wavelets to **bandelets/bandlets** is important for his industrial work. Bandelets adapt multiscale representations to geometrical regularity such as edges rather than treating the image as though its important structures were aligned with a fixed separable grid.

## Let It Wave: mathematics turned into video hardware

Mallat and collaborators founded Let It Wave to commercialize image-processing ideas related to bandelets. The company's trajectory is worth recording because it gives unusually concrete evidence of an academic applied-mathematics program becoming hardware.

By 2006 Let It Wave was publicly demonstrating an HDTV upconverter implemented in an **Altera FPGA**. Contemporary reports describe spatio-temporal bandlet processing for deinterlacing, scaling, noise removal, image enhancement, and SD-to-HD upconversion. In 2007 the company announced a single-chip HD standards converter based on its patented core bandlet technology.

There is also evidence beyond demonstrations. A contemporary industry award list identifies a **BrickHouse Syntax** upconverter “with Let It Wave technology,” and a later EE Times account says Zoran incorporated the formerly expensive Let It Wave frame-rate-conversion technology into **mass-market chips**.

Zoran acquired Let It Wave in June 2008. Zoran's 2008 annual report says the acquisition was primarily intended to obtain Let It Wave's in-process frame-rate-conversion and image-enhancement technology for flat-panel televisions and other consumer electronics. Press accounts announced the transaction at up to roughly $27.6 million; the annual report recorded a $24 million acquisition plus possible contingent payments, with the performance milestones ultimately not achieved.

This matters when evaluating claims that Mallat's patented signal-processing work “was never used.” At least at the level of the **patented bandlet technology family**, that claim is false: there were FPGA implementations, a standards-converter product, third-party equipment advertised with Let It Wave technology, an acquisition motivated by the technology, and later incorporation into mass-market Zoran chips.

## The compression/bandelet patent family

One particularly relevant patent family is:

**“Processing or compressing n-dimensional signals with warped wavelet packets and bandelets.”**

Inventors:

- Christophe Bernard
- Jérôme Kalifa
- Erwan Le Pennec
- Stéphane Mallat

Key family records include:

- WO 2004/056120 A1
- US 7,944,974 B2
- US 8,265,161 B2
- EP 1,574,067 B1

Priority date: 17 December 2002.

The patent describes a warped wavelet-packet transform and bandeletization designed to exploit geometrical regularity in n-dimensional signals. It explicitly discusses compression/decompression, restoration, and feature extraction. In the compression path, bandelet coefficients and the warping geometry are quantized/encoded into a bitstream for storage or transmission.

### Was this patent actually used?

The evidence requires a distinction.

**What can be established:**

- Let It Wave publicly built and demonstrated patented bandlet-based image/video processing in FPGA hardware.
- It offered a single-chip standards converter based on patented bandlet technology.
- At least one commercial equipment listing, the BrickHouse Syntax upconverter, explicitly advertised Let It Wave technology.
- Zoran bought Let It Wave specifically for its video frame-rate-conversion and image-enhancement technology and subsequently put Let It Wave technology into mass-market chips.
- Google Patents currently lists multiple later patent families citing the US 7,944,974 / EP 1,574,067 family; the family is therefore not simply uncited or forgotten in the patent literature.

**What I have not established from public sources:**

I have not found a source that maps the **specific claims of US 7,944,974** to a particular named shipping product or says, in effect, “this product practices patent 7,944,974.” The public product descriptions usually say “patented bandlet technology” or “Let It Wave technology” rather than identifying a patent number. Therefore the defensible statement is not “the patent was unused,” but rather: **commercial use of the surrounding patented bandlet technology is documented, while claim-level product use of this exact patent family has not yet been traced.**

This is a useful negative-result distinction to preserve rather than silently promoting either inference into a fact.

## Group invariance, scattering, and deep learning

Mallat's later work is a particularly direct bridge from harmonic analysis and group actions to deep convolutional networks. It predates much of the later literature now grouped under labels such as geometric or equivariant deep learning.

### Group Invariant Scattering — arXiv:1101.2286

Stéphane Mallat, **“Group Invariant Scattering”** (2011; later *Communications on Pure and Applied Mathematics*).

https://arxiv.org/abs/1101.2286

The paper builds scattering operators by cascading wavelet transforms, modulus nonlinearities, and averaging. The crucial group-theoretic point is explicit: Mallat extends scattering to `L2(G)` for a **compact Lie group G**, obtaining operators invariant under the action of G. He then combines scattering over Euclidean space with scattering over rotations to obtain translation-and-rotation-invariant representations.

This is not merely the informal claim that a neural network “learns invariance.” Invariance is built into the mathematical construction through a group action, while stability to deformations is analyzed separately.

### Invariant Scattering Convolution Networks — arXiv:1203.1513

Joan Bruna and Stéphane Mallat, **“Invariant Scattering Convolution Networks.”**

https://arxiv.org/abs/1203.1513

This paper makes the neural-network connection much more explicit. A wavelet scattering network is a deep convolutional cascade whose filters are prescribed rather than learned. It constructs a translation-invariant representation stable to deformations while retaining high-frequency information useful for classification.

The attraction of the construction is that some properties normally hoped for from a trained convolutional network — invariance, deformation stability, and multiscale organization — can be stated and analyzed mathematically rather than inferred only from empirical performance.

### Rigid-Motion Scattering for Texture Classification — arXiv:1403.1687

Laurent Sifre and Stéphane Mallat, **“Rigid-Motion Scattering for Texture Classification.”**

https://arxiv.org/abs/1403.1687

Here the group structure becomes operational in the network: convolutions are calculated on the rigid-motion group, with wavelets over translation and rotation variables. The representation can construct invariants to translations and rotations while retaining joint information about them before the final averaging/invariance step.

### Deep Roto-Translation Scattering for Object Classification — arXiv:1412.8659

Edouard Oyallon and Stéphane Mallat, **“Deep Roto-Translation Scattering for Object Classification.”**

https://arxiv.org/abs/1412.8659

This develops deep scattering using predefined wavelets over both spatial and angular variables. It is another clear instance of using known geometric structure as a prior rather than asking a generic learned architecture to rediscover all of it from examples.

### Understanding Deep Convolutional Networks — arXiv:1601.04920

Stéphane Mallat, **“Understanding Deep Convolutional Networks.”**

https://arxiv.org/abs/1601.04920

This paper frames deep-network representations in terms including multiscale contractions, invariants, hierarchical symmetries, and sparse separation. It is useful as a compact statement of Mallat's broader program: use harmonic-analysis and symmetry machinery to explain what convolutional networks are doing rather than treating the trained network as only an opaque empirical object.

## Why the deep-learning work is interesting

Mallat's scattering program is not identical to modern train-everything deep learning. That is precisely why it is useful.

A scattering network can be viewed as a controlled mathematical model of some of the structural ideas behind convolutional networks:

- convolution gives translation structure;
- wavelets organize information by scale;
- modulus nonlinearities propagate information across the cascade;
- averaging creates invariance;
- group convolutions extend the same logic to rotations or other transformations;
- stability bounds distinguish useful invariance from destroying information arbitrarily.

The result is a line of work in which **symmetry is specified mathematically first** and the representation is then constructed around it. This anticipates an important part of later equivariant/geometric deep learning, although it should not be collapsed into the claim that Mallat alone invented that later field.

## Sources

### Biography, career, awards

- Collège de France, Stéphane Mallat biography and publications: https://www.college-de-france.fr/en/chair/stephane-mallat-data-science-statutory-chair/biography
- CNRS News, “Stéphane Mallat, a pioneer bridging mathematics and computer science” (2025): https://news.cnrs.fr/articles/stephane-mallat-a-pioneer-bridging-mathematics-and-computer-science
- Mallat publication list: https://www.di.ens.fr/~mallat/biblio.html

### Scattering / deep learning

- Mallat, “Group Invariant Scattering,” arXiv:1101.2286: https://arxiv.org/abs/1101.2286
- Bruna and Mallat, “Invariant Scattering Convolution Networks,” arXiv:1203.1513: https://arxiv.org/abs/1203.1513
- Sifre and Mallat, “Rigid-Motion Scattering for Texture Classification,” arXiv:1403.1687: https://arxiv.org/abs/1403.1687
- Oyallon and Mallat, “Deep Roto-Translation Scattering for Object Classification,” arXiv:1412.8659: https://arxiv.org/abs/1412.8659
- Mallat, “Understanding Deep Convolutional Networks,” arXiv:1601.04920: https://arxiv.org/abs/1601.04920

### Patent and industrial use

- Google Patents, EP1574067B1 / family including US7944974B2, “Processing or compressing n-dimensional signals with warped wavelet packets and bandlets”: https://patents.google.com/patent/EP1574067B1/en
- Let It Wave, “HDTV Upconversion” white paper (2006): https://www.di.ens.fr/~mallat/papiers/whitepaper.pdf
- TV Technology, “Let It Wave rolls out Bandlet technology for HDTV upconversion”: https://www.tvtechnology.com/news/let-it-wave-rolls-out-bandlet-technology-for-hdtv-upconversion
- EE Times, “Bandlet startup improves image with FPGA demonstrator”: https://www.eetimes.com/bandlet-startup-improves-image-with-fpga-demonstrator/
- EE Times, “Let It Wave presents HDTV standards converter”: https://www.eetimes.com/let-it-wave-presents-hdtv-standards-converter/
- TV Technology Europe STAR Award recipients, including BrickHouse Syntax with Let It Wave technology: https://www.tvtechnology.com/news/tv-technology-europe-announces-star-award-recipients
- EE Times retrospective noting Zoran's incorporation of Let It Wave frame-rate-conversion technology into mass-market chips: https://www.eetimes.com/reflections-on-ces-2009-3-d-galore-the-beachs-end-and-gibson-blues/
- Zoran 2008 annual report, acquisition note for Let It Wave: https://materials.proxyvote.com/Approved/98975F/20090427/AR_41659/images/Zoran-AR2008.pdf

## Research leads

- Trace the complete ten-patent list from Mallat's CV/patent databases and group patents into families rather than counting national filings as separate inventions.
- Determine whether Zoran, CSR, or later successors published claim charts, licensing records, chip documentation, or standards disclosures identifying US 7,944,974 or its family by number.
- Identify exact Zoran chip families that incorporated Let It Wave technology and distinguish frame-rate conversion, upconversion, denoising, and compression implementations.
- Trace Mallat's scattering work into the later group-equivariant and geometric-deep-learning literature, separating direct citations from broad conceptual similarity.
