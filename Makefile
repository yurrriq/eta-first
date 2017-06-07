# TODO: require version (for install-jar)


groupId ?= eta.example
artifactId ?= eta-first
repo ?= _repo
version ?= 0.1.0.0


# NOTE: make etlas="docker run --rm -v $PWD:/src -w /src typelead/eta etlas"
etlas ?= etlas
lein ?= lein


ETA_JAR := dist/build/eta-first/eta-first.jar
ETA_SRCS := eta-first.cabal Setup.hs src/eta/*.hs


.PHONY: all install-eta-jar run


all: install-eta-jar
	${lein} do clean, uberjar


${ETA_JAR}: ${ETA_SRCS}
	${etlas} clean
	${etlas} configure --enable-uberjar-mode
	${etlas} build


install-eta-jar: ${ETA_JAR}
	@ rm -fr ${repo}
	@ mkdir ${repo}
	mvn install:install-file \
		-Dfile=${ETA_JAR} \
		-DgroupId=${groupId} \
		-DartifactId=${artifactId} \
		-Dversion=${version} \
		-Dpackaging=jar \
		-DgeneratePom=true \
		-DcreateChecksum=true \
		-Dmaven.repo.local=${repo}
