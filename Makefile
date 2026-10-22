JAVAC = javac
JAVA = java
JAR = jar

CP = .:/usr/share/java/freetts-1.2.2.jar
RUN_CP = ttsDemo.jar:/usr/share/java/*

JAR_NAME = ttsDemo.jar
MAIN_CLASS = Main
CLASSES = Speaker.class Main.class

build: $(JAR_NAME)

$(JAR_NAME): $(CLASSES)
	$(JAR) cfe $(JAR_NAME) $(MAIN_CLASS) $(CLASSES)

%.class: %.java
	$(JAVAC) -cp $(CP) $<

run: $(JAR_NAME)
	$(JAVA) -cp "$(RUN_CP)" $(MAIN_CLASS)

clean:
	rm -f *.class $(JAR_NAME)

.PHONY: build run clean
