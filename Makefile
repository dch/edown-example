PROJECT   = swirl

DOC_DEPS  = edown
dep_edown = git git://github.com/uwiger/edown.git master

EDOC_OPTS = {application, ["swirl"]}, \
		{doclet, edown_doclet}, \
		{subpackages, false}, \
		{todo, false}, \
		{report_missing_types, false}, \
		{title, "Swirl API documentation"}, \
		{pretty_printer, erl_pp}

.PHONY: doc
doc: edoc

include erlang.mk

