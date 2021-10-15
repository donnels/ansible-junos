time \
(\
 clear;\
 echo "making HTML" ;\
 docker run -v "$PWD":/documents/ --name manual-asciidoc-to-html asciidoctor/docker-asciidoctor asciidoctor -D /documents *.asciidoc ;\
 docker rm manual-asciidoc-to-html;\
 echo "making PDF" ;\
 docker run -v "$PWD":/documents/ --name manual-asciidoc-to-pdf asciidoctor/docker-asciidoctor asciidoctor-pdf -D /documents *.asciidoc;\
 docker rm manual-asciidoc-to-pdf\
)
