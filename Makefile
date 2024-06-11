.ONESHELL:
.SHELLFLAGS = -ec

ifndef PROJECT_ROOT
  $(error You must define the project root by sourcing project.sh)
endif

LIB_DPI = mydpi

.DEFAULT_GOAL = all

.PHONY: all
all:
	mkdir -p work
	cd work
	xsc -o ${LIB_DPI}.so \
		${CMODEL}/func.c \
		${CMODEL}/str.c \
		${CMODEL}/genv.c \
		--gcc_compile_options "-I/usr/include/x86_64-linux-gnu" --gcc_compile_options "-L/usr/lib/x86_64-linux-gnu"
	xelab -svlog ${SVTB}/top.sv -sv_lib ${LIB_DPI}
	xsim top -R

.PHONY: clean
clean:
	rm -rf work