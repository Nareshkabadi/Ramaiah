

- [What is RISC V Processor](#what-is-risc-v-processor)
- [Calculation](#calculation)
- [Reverse Array](#reverse-array)
- [Check Prime](#check-prime)
- [Fibonacci Sequence](#fibonacci-sequence)
- [R-type and I-type Instructions](#r-type-and-i-type-instructions)
- [S-type and B-type Instructions](#s-type-and-b-type-instructions)
## What is RISC V Processor?
In the RISC V processor, the term RISC stands for “reduced instruction set computer” which executes few computer instructions whereas ‘V’ stands for the 5th generation. It is an open-source hardware ISA (instruction set architecture) based on the established principle of RISC.<br>

**Reduced Instruction Set Computing (RISC)** <br>
The RISC-V architecture is inspired by the architecture of Reduced Instruction Set Computing (RISC). This aims to achieve high performance mainly due to the small number of instructions.<br/>
- **Simplicity:** RISC architectures operate with a limited number of basic instructions that can be run in one clocking cycle. This contrasts with Complex Instruction Set Computing (CISC), a system that employs many complicated instructions which may take more than one clock cycle to execute.
- **Performance Optimization:** For this reason, by using RISC-V there is a push for improved use of the processors, hence leading to fast velocity and low power usage.<br/>

**How Does RISC-V Processor Work?** <br/>
RISC-V processors offer an efficient and flexible framework. Let’s break down how the processors actually work:
<div align="center">
<img src="https://github.com/user-attachments/assets/39d1d01f-d82d-479e-96bc-125ece8d8bd4" alt="RISC V"/>
  
_Pipeline Stages in RISC V._
</div>

**1. Execution Pipeline** <br/>
Typically, the RISC-V processor implements a pipelined architecture where multiple instruction phases are overlapped.The basic stages are as follows:<br/>

- **Fetch:** The instruction is fetched from the memory.<br/>

- **Decode:** Next, the instruction is decoded to determine the operation and operands involved.<br/>

- **Execute:** Appropriate functional units are used to perform this operation (arithmetic logic unit).<br/>

- **Memory Access:** If the instruction involves memory, data is loaded from or stored in memory.<br/>

- **Write Back:** The result of the operation is written back to a register.<br/>

**2. Floating Point Operations**  

Like most instruction sets, RISC-V also has a set of instructions for floating points and the instructions follow the IEEE 754 standard. This kind of compliance is crucial for maintaining the consistency of the operations performed on floating points across Implementations. Key aspects include:
  - **Floating-Point Registers:** RISC-V has special floating-point registers that are separate from the general-purpose registers. This makes the result of numerical calculations faster.

  - **Precision Levels:** It supports different levels of IEEE floating-point precision, which can be either single or double. This makes it easier for the developers to select the appropriate level for their applications.<br/>

## Calculation
_File:calculation.asm_ <br>

This program performs a simple arithmetic calculation involving multiplication and addition. Given inputs AA, BB, and DD stored in registers **x10, x11, and x12** respectively, the program calculates **C=A×B+DC=A×B+D.** <br/> The result is stored in register x13. This program uses the mul instruction to multiply AA and BB, and the add instruction to add DD to the product. It is efficient, requiring only two instructions to complete the operation.<br>

## Reverse Array
_File:reverseArray.asm_

This program reverses the elements of an array in memory. The base address of the array is provided in register x10, and the size (number of elements) of the array is given in register x11. The algorithm uses two pointers: one starting at the beginning of the array and another at the end. It swaps the elements at these two positions and moves the pointers toward each other until they meet in the middle. The reversal is performed in-place, meaning no additional memory is used. The program efficiently manipulates memory using the lw and sw instructions for load and store operations.<br>

## Check Prime
_File:NumberNPrime.asm_

This program determines whether a given integer NN is a prime number. The number NN is provided in **register x10**. The program iteratively checks divisors starting from **2 up to NN**.<br/>If NN is divisible by any number in this range, it is not prime, and the program sets **x11 to 0.** Otherwise, **x11 is set to 1.** The loop employs the rem instruction to calculate the remainder and uses conditional branching (beq) to determine divisibility. The algorithm is optimized by stopping when a divisor squared exceeds NN, reducing the number of iterations required.<br>

## Fibonacci Sequence
_File:fibonacciSequence.asm_ <br>

This program calculates the Fibonacci sequence up to the nn-th term. The number of terms nn is stored in register x10, and the base address for storing the result is in register x11. The first two terms of the sequence (0 and 1) are directly stored in memory, and subsequent terms are computed iteratively as the sum of the two preceding terms. The program uses a loop to calculate each term and stores it sequentially in memory using the sw instruction. It efficiently updates previous terms using registers to avoid redundant calculations.

## R-type and I-type Instructions
_File:R_I_Type_Instructions.pdf_

This files explains the structure and purpose of R-type and I-type instructions in the RISC-V architecture. R-type instructions perform operations between two registers, such as arithmetic and logical operations, and are structured with fields for two source registers (rs1, rs2) and one destination register (rd). Examples include add and sub. I-type instructions, on the other hand, are used for operations involving immediate values or memory loads. They include fields for a single source register (rs1), an immediate value (imm), and a destination register (rd). Examples include addi for adding an immediate value and lw for loading a word from memory. These instruction types allow flexibility in handling both register-to-register and register-to-immediate operations.<br>

## S-type and B-type Instructions
_File:S_B_Type_Instructions.pdf_

This program discusses the S-type and B-type instruction formats in RISC-V, highlighting their roles in memory storage and branching. S-type instructions are used for store operations, where data from a register is stored at a memory address computed as the sum of a base address and an immediate offset. For example, sw stores a word in memory. In contrast, B-type instructions are used for conditional branching. They compare two registers and jump to a target address, specified as an offset, if a condition is met. For instance, beq branches if two registers are equal. These instruction types enable efficient data manipulation and program control flow.
