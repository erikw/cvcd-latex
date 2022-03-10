# Default top-level files to compile.
@default_files = ('cv.tex');

$pdf_mode = 1;					# tex -> pdf
$use_make_for_missing_files = 1;		# Try generate missing files.
$pdflatex = 'pdflatex -file-line-error';	# Print compiler-like error messages on line number failure was on.
