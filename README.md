# FFT Module implementation

A 16-point DIF FFT is implemented which takes 32 bits width for each input. The schematic can be viewed in the figure. 

![FFT Schematic](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/dataflow_schematic.png)

## Architecture
The FFT is divided into 3 stages which compute the three butterfly groups. Usually when developing a FFT module a Radix 2 model or a Radix-4 model is used but in this implemetation a combination of radix-2 and radix-4 is used due to which a total of 3 stages are required instead of 4 stages as compared to radix-2. The dataflow schematic is as shown in Figure.
![Elaborate design](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/Schematic.png)
	
 
The model is 3-stage pipelined with the three stages being sixtnpt, eightpt and fourpt.
Each pipeline runs many operations paralelly to reduce the time required for computation. The inputs are given by flattening the 16, 32-bit length sequences into a 512 bits sequence and this sequence is then used for computation.The  inputs are taken in the reverse order during flattening stage i.e. the first 32-bit word is sent to LSB and the last 32-bit-word is sent to MSB. The output sequence is 1024 bits in length with each individual output being 64 bits wide.

## Stage-1
Stage 1 includes the processing of 16 inputs using Radix 2 butterfly as per DIF algorithm but the twiddle factors are not multiplied in this stage. The implementation of the Stage-1 is shown in Figure.

![Stage 1 - Sixtnpt.v Module](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/sch_stage1.png)
The module consists of 8 radix-2 units which process the first set of calculations required to calculate as per DIF algorithm. 

![Radix 2 butterfly structure](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/Radix-2_bfly.png)

Radix-2 Butterfly is implemented as shown in the Fig 3.11. A radix-2 butterfly is a simple structure in which there are 2 steps i.e. Addition/Subtraction and multiplication with twiddle factor (in next step).

## Stage-2
Stage 2 includes three steps and the implementation of the same is as shown in the Fig 3.11. These are: 
1. Twiddle factor multiplication for first set
2. Second set of radix-2 butterfly
3. Twiddle factor multiplication for second set

![Stage 2 - eightpt.v module](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/sch_stage2.png)

The values of twiddle factors are stored in memory units at this stage which is used for the multiplication purpose. The twiddle factors are 32 bit long and are normalised to a new number system equivalent which facilitated the usage of decimal numbers in the project.


![Complex Multiplier module](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/complex%20multiplier.png)

Twiddle factor multiplication is a complex valued  multiplication therefore a complex multiplier is been modelled and its implementation is as shown in Fig 3.13. 

## Stage-3
Stage 3 includes one stage that is radix 4 butterfly which computes the next 2 equivalent stages of radix-2 based DIF-FFT in a single stage. The implementation of the stage 3 is shown in Fig 3.14.

![Stage 3 - fourpt.v module](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/sch_stage3.png)

Stage 3 uses radix-4 butterflies and their implementation is as shown in Fig 3.15.

![Radix 4 butterfly structure](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/radix4_4pt.png)


## Verification of the Module}
The module is verified with the help of test bench for various inputs as shown in Fig 3.16. It takes a total of 9 clock cycles for the whole module to give the final output and due to pipelining nature the next set of inputs doesn't need to wait for 9 cycles. The results are accurate to the specification required and the module was accepted for further process.

 
![Simulation Results](https://github.com/Pradyumna1312/FFT/blob/main/Screenshots/sim_res.png)
