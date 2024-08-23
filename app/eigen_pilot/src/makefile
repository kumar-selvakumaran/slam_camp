#compiler
CC = g++

#project name
PROJECT = app

#executable path
DEST = ../bin/

#libraries
LIBS = `pkg-config --cflags --libs eigen3`

#compliation
app: eigen_playground.cpp
	$(CC) $^ -std=c++17 -O3 -g -o $(DEST)/eigen_demo $(LIBS) -DENABLE_PRECOMPILED_HEADERS=OFF
	$(DEST)/eigen_demo