rxtxJarPath = /usr/share/java/rxtx/RXTXcomm.jar
#rxtxJarPath = /usr/share/java/RXTXcomm.jar


all: serialRMI.jar 

# Create jar file (depends on class files)
serialRMI.jar: build/serialRMI/*.class
#       Note: cd and command must be on one line (make spawns a new shell for each line)
	cd build; jar cf serialRMI.jar serialRMI/*.class

# Compile class files
build/serialRMI/*.class: src/serialRMI/*.java
	mkdir -p build
	javac -cp $(rxtxJarPath) -d build src/serialRMI/*.java


clean:
	rm -Rf build
