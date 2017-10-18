PLANTUML = java -jar /opt/plantuml/plantuml.jar
PFLAGS = -tpng -charset UTF-8

SOURCES = $(wildcard *.puml)
OUTPUTS = $(SOURCES:.puml=.png)

all: $(OUTPUTS)
	@echo "Convertion succeed !"

%.png: %.puml
	$(PLANTUML) $(PFLAGS) $<
