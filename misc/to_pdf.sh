# Creates a PDF version of tutorial.md
# via pandoc and wkhtmltopdf.

# Convert the markdown file to HTML
# https://pandoc.org/MANUAL.html
#
pandoc tutorial.md \
-f markdown \
-t html -s -o tutorial.html \
-c misc/pandoc_styles.css \
--toc -V toc-title:"Table of Contents" \
--metadata pagetitle="Web development in a nutshell workshop"

# Convert the HTML file to PDF
# https://wkhtmltopdf.org/usage/wkhtmltopdf.txt
# (use the installer from wkhtmltopdf.org, not from Homebrew)
#
wkhtmltopdf \
--footer-line \
--footer-left "Web development in a nutshell workshop" \
--footer-right "[page]/[toPage]" \
--footer-spacing 20 \
--margin-top 15 \
--margin-left 15 \
--margin-bottom 30 \
--margin-right 15 \
--dpi 120 \
--enable-local-file-access \
tutorial.html tutorial.pdf

rm tutorial.html
