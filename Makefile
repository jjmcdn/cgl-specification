#requirements: requirements.rest style.css
#	rst2pdf requirements.rest -s style.css -o $@.pdf 
#
RST2ODTOPTS = \
				  --create-links \
				  --create-sections \
				  --date \
				  --footnote-backlinks \
				  --rfc-references \
				  --section-numbering \
				  --stylesheet=./.cgl-style.odt \
				  --table-border-thickness=0 \
				  --time \
				  --toc-entry-backlinks \
				  --generate-oowriter-toc

RST2PDFOPTS = \
				  --first-page-on-right \
				  --inline-footnotes \
				  --repeat-table-rows \
				  --smart-quotes=1 \
				  --stylesheets="./rst2pdf.css"

RST2HTMLOPTS = \
					--compact-lists \
					--embed-stylesheet \
					--file-insertion-enabled \
					--footnote-backlinks \
					--footnote-references=superscript \
					--leave-comments \
					--leave-footnote-reference-space \
					--rfc-base-url=http://www.faqs.org/rfcs/ \
					--rfc-references \
					--section-numbering \
					--table-style=borderless \
					--toc-entry-backlinks

all: requirements gaps deprecated

requirements: requirements.stamp
	rst2odt ${RST2ODTOPTS} --title "CGL 5.0.1(draft) Requirements" cgl_5.0_requirements.rest cgl_5.0_requirements.odt
	rst2pdf $(RST2PDFOPTS) cgl_5.0_requirements.rest -o cgl_5.0_requirements.pdf
	rst2html $(RST2HTMLOPTS) cgl_5.0_requirements.rest cgl_5.0_requirements.html

gaps: gaps.stamp
	rst2odt ${RST2ODTOPTS} --title "CGL 5.0.1(draft) Gaps" cgl_5.0_gaps.rest cgl_5.0_gaps.odt
	rst2pdf $(RST2PDFOPTS) cgl_5.0_gaps.rest -o cgl_5.0_gaps.pdf
	rst2html $(RST2HTMLOPTS) cgl_5.0_gaps.rest cgl_5.0_gaps.html

deprecated: deprecated.stamp
	rst2odt ${RST2ODTOPTS} --title "CGL 5.0.1(draft) Deprecated Requirements" cgl_5.0_deprecated.rest cgl_5.0_deprecated.odt
	rst2pdf $(RST2PDFOPTS) cgl_5.0_deprecated.rest -o cgl_5.0_deprecated.pdf
	rst2html $(RST2HTMLOPTS) cgl_5.0_deprecated.rest cgl_5.0_deprecated.html

requirements.stamp:
		touch .requirements.stamp

gaps.stamp:
		touch .gaps.stamp

deprecated.stamp:
		touch .deprecated.stamp

clean:
	rm -f .*.stamp *.odt
