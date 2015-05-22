#requirements: requirements.rest style.css
#	rst2pdf requirements.rest -s style.css -o $@.pdf 
#
RST2ODTOPTS=--create-sections --create-links \
				--rfc-references --section-numbering 

all: requirements gaps deprecated

requirements: requirements.stamp
	rst2odt ${RST2ODTOPTS} --title "CGL 5.0 Requirements" cgl_5.0_requirements.rest cgl_5.0_requirements.odt

gaps: gaps.stamp
	rst2odt ${RST2ODTOPTS} --title "CGL 5.0 Gaps" cgl_5.0_gaps.rest cgl_5.0_gaps.odt

deprecated: deprecated.stamp
	rst2odt ${RST2ODTOPTS} --title "CGL 5.0 Deprecated Requirements" cgl_5.0_deprecated.rest cgl_5.0_deprecated.odt

requirements.stamp:
		touch .requirements.stamp

gaps.stamp:
		touch .gaps.stamp

deprecated.stamp:
		touch .deprecated.stamp

clean:
	rm -f .*.stamp *.odt
