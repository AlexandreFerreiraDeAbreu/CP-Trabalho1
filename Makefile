CPP = g++ -Wall -pg -Ofast -fopenmp -ftree-vectorize -msse4 -mavx -funroll-loops -fno-omit-frame-pointer

SRCS = main.cpp fluid_solver.cpp EventManager.cpp

all:
	$(CPP) $(SRCS) -o fluid_sim

clean:
	@echo Cleaning up...
	@rm fluid
	@echo Done.
