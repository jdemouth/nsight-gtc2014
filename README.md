nsight-gtc2014
==============

Companion code for GTC 2014 Nsight VSE/EE tutorials

Build on Windows
----------------
To build on Windows you need Visual Studio 2012 and CUDA 6.0. There is a Configuration for each step. So:

1- Select the configuration 
2- Build
3- Run

You can build all the Configurations at once using BUILD > Batch Build...

Build on Linux
--------------
To build on Linux you need CUDA 6.0. There is a Makefile and a rule "step-XX" for each step. You can build all steps at once:

make -j4

To run the code, simply launch ./nsight-gtc2014-XX where XX is the step.

Run the Code
------------
The executables all expect an input image. We have copied the claw.ppm image used during the tutorial in the folder data. 

To run the code on Windows from the command-line, type:

x64\Step-00\nsight-gtc2014.exe data\claw.ppm

To run the code on Linux, type:

./nsight-gtc2014-00 data/claw.ppm
