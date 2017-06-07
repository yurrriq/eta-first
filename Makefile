# NOTE: make etlas="docker run --rm -v $PWD:/src -w /src typelead/eta etlas"
etlas ?= etlas


ETA_JAR := dist/build/eta-first/eta-first.jar
ETA_SRCS := eta-first.cabal Setup.hs src/eta/*.hs


.PHONY: all


all: ${ETA_JAR}


${ETA_JAR}: ${ETA_SRCS}
	${etlas} clean
	${etlas} configure --enable-uberjar-mode
	${etlas} build
