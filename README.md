# Hausarbeit: IT-Sicherheit bei der Eisenbahn – Version Overview

This repository contains different development stages of my Hausarbeit on communication security in railway systems.

| PDF | Description |
|---|---|
| `hausarbeit_de.pdf` | Original technically detailed version with an extensive treatment of railway communication architectures, security mechanisms, ETCS, FRMCS, MILS, IDS/MTD, and the European–Japanese comparison. |
| `Hausarbeit_de_v1.pdf` | Refined version of `hausarbeit_de.pdf`. The overall technical structure remains largely unchanged, while wording, citations, and parts of the academic argumentation were revised. |
| `Hausarbeit_de_v2_1.pdf` | Major restructuring following feedback that the theoretical background should be reduced and the methodology and discussion should receive greater weight. It introduces explicit source/evidence weighting and a more criteria-oriented comparison. |
| `Hausarbeit_de_v2_2.pdf` | **Final submitted version.** Further development of the v2 structure. The standalone criteria comparison was integrated into the discussion, while technical arguments, research gaps, and the comparative synthesis were refined. |

## Use of ChatGPT

The revised versions were **edited and refined with the assistance of ChatGPT**, particularly for restructuring, language refinement, reducing redundancy, and improving the relationship between the theoretical background and discussion.

The literature research, source selection and verification, technical analysis, interpretation of the sources, and final academic decisions remained my responsibility.

## Reflection

From the perspective of **technical depth and critical technical reasoning**, I would personally prefer `hausarbeit_de.pdf` or `Hausarbeit_de_v1.pdf`.

However, following the feedback from the lecture that the **discussion should have greater weight than the theoretical background**, I ultimately submitted `Hausarbeit_de_v2_2.pdf`.

For future academic work, I would combine both approaches more strongly. Instead of placing most technical explanations in the theoretical chapter, I would include **more technical detail directly where it becomes relevant in the discussion**.

This would preserve a discussion-focused structure while giving the reader sufficient technical context to understand the concepts and arguments without first having to consult the cited literature.

## Note: PDF Generation 

### Latex to PDF

Required Pacakges:

```sh
sudo apt update

sudo apt install -y \
    latexmk \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-lang-german \
    texlive-bibtex-extra \
    texlive-science \
    biber
```

Then compile with

```sh
latexmk -pdf hausarbeit_de.tex ; latexmk -c 
```

Some of further commands are being implemented within `build-latex.sh`

If disk space is not a concern and you want the “just make virtually every LaTeX project compile” option, there is also:

```sh
sudo apt install -y texlive-full latexmk biber
```

But texlive-full is several GB, so for GitHub Codespaces I would prefer the smaller package set above.

### Markdown to PDF

Required Pacakges:

```sh 
sudo apt install -y \
    pandoc \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-science \
    texlive-lang-german \
    texlive-bibtex-extra \
    lmodern \
    biber
```
Then compile with

```sh
pandoc reflexion.md -o reflexion.pdf
```

