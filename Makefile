all: context container stb-sp-flow

clean:
	rm -f pdf/*
	rm -f svg/*

context:
	@echo "Generating context"
	cat src/opensource-iptv-context.puml | docker run --rm -i ghcr.io/streamingriver/plantuml-docker:main -tpdf > pdf/opensource-iptv-context.pdf
	cat src/opensource-iptv-context.puml | docker run --rm -i ghcr.io/streamingriver/plantuml-docker:main > svg/opensource-iptv-context.svg

container:
	@echo "Generating context"
	cat src/opensource-iptv-container.puml | docker run --rm -i ghcr.io/streamingriver/plantuml-docker:main -tpdf > pdf/opensource-iptv-container.pdf
	cat src/opensource-iptv-container.puml | docker run --rm -i ghcr.io/streamingriver/plantuml-docker:main > svg/opensource-iptv-container.svg

stb-sp-flow:
	@echo "Generating flow"
	cat src/opensource-iptv-stb-isp-flow.puml | docker run --rm -i ghcr.io/streamingriver/plantuml-docker:main -tpdf > pdf/opensource-iptv-stb-isp-flow.pdf
	cat src/opensource-iptv-stb-isp-flow.puml | docker run --rm -i ghcr.io/streamingriver/plantuml-docker:main > svg/opensource-iptv-stb-isp-flow.svg