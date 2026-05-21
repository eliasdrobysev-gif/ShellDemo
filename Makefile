#define MAIN
#define HStack
#define CXX
#define OBJ
#define CPPFLAGS
#include <iostream>
using namespace std;
#CXX = g++
CPPFLAGS = -Wall -ggdb;

MAIN = test
OBJ = $(MAIN).o HStack.o

$(MAIN).exe: $(OBJ)
	$(CXX) $(CPPFLAGS) $(OBJ) -o $(MAIN).exe

$%.o: $%.cpp

$(MAIN).o: $(MAIN).cpp
	$(CXX) $(CPPFLAGS) -c $(MAIN).cpp

HStack.o: HStack.cpp
	$(CXX) $(CPPFLAGS) -c HStack.cpp

$(OBJ):HStack.hpp

run:
	./$(MAIN).exe

clean:
	RM *.o *.exe
all: $(MAIN).exe run clean

PHONY: all clean
