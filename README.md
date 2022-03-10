# Continuously Deployed LaTeX CV Example - The CV LaTeX Source
[![Deploy](https://github.com/erikw/cvcd-latex/actions/workflows/deploy.yml/badge.svg)](https://github.com/erikw/cvcd-latex/actions/workflows/deploy.yml)

Example of how to continuously deploy a CV written in LaTeX to a personal website in a different git repo.

* [erikw/cvcd-latex](https://github.com/erikw/cvcd-latex) - The CV LaTeX source project. 
* [erikw/cvcd-website](https://github.com/erikw/cvcd-website) - Personal website (GitHub pages hosted Jekyll) to where the `cv.pdf` is deployed to.

# The CV
The example CV is using the [moderncv](https://www.ctan.org/pkg/moderncv) class.

To render the CV, simply use `latexmk(1)` (see [.latexmkrc](.latexmkrc)):
```console
$ latexmk
$ ls cv.pdf
```

or using the [Makefile](Makefile):
```console
$ make
$ ls cv.pdf
```

When an update to [cv.tex](cv.tex) is pushed to the main branch, the PDF will be built and published to the website in the GitHub Actions workflow [deploy.yml](.github/workflows/deploy.yml).
