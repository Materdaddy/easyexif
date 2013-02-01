CXX=$(CROSS_COMPILE)g++

all: test

exif.o: exif.cpp
	$(CXX) -O2 -pedantic -Wall -ansi -c exif.cpp

test: exif.o test.cpp
	$(CXX) -O2 -Wall -pedantic -ansi -o test exif.o test.cpp

clean:
	rm -f *.o test
