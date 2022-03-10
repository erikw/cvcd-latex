# CVCD - Continuously Deployed Tex CV Example
Example of how to continuously deploy a CV written in latex to a personal website.
* This repo - repo the CV itself
* TODO - the personal website using Jekyll deployed on GitHub Pages.

# The CV
The CV is using the [moderncv](https://www.ctan.org/pkg/moderncv) package.

To render the CV, simply use `latexmk(1)` (see [.latexmkrc](.latexmkrc)):
```console
$ latexmk
$ ls cv.pdf
```
