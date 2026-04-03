CXX = g++
CXXFLAGS = -Iinclude

all: main.o ui.o sensor.o
	$(CXX) $(CXXFLAGS) $^ -o output

%.o : src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

sensor.o: src/sensor.cpp
	$(CXX) $(CXXFLAGS) -c src/sensor.cpp

ui.o: src/ui.cpp
	$(CXX) $(CXXFLAGS) -c src/ui.cpp	

.PHONY: clean 
clean:
	rm -rf main.o ui.o sensor.o

