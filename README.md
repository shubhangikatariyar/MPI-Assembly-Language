# Microprocessor - Assembly Language Lab Sessions

This repository contains assembly language programs developed as part of my lab sessions for the Microprocessor course. Each program is written in x86 assembly language and demonstrates various concepts and operations that are fundamental to low-level programming.

## Programs Overview

### 1. **Program 1**
   - **Description:** This program performs a simple addition of two 16-bit hexadecimal numbers.
   - **Instructions:**
     - `MOV AX, 1234h` — Load 1234h into the AX register.
     - `MOV BX, 5678h` — Load 5678h into the BX register.
     - `ADD AX, BX` — Add the value in BX to AX and store the result in AX.
   - **Objective:** Demonstrates basic arithmetic operations.

### 2. **Program 2**
   - **Description:** This program adds two 8-bit hexadecimal numbers.
   - **Instructions:**
     - `MOV AL, 73h` — Load 73h into the AL register.
     - `MOV BL, 37h` — Load 37h into the BL register.
     - `ADD AL, BL` — Add the value in BL to AL and store the result in AL.
   - **Objective:** Demonstrates addition of smaller (8-bit) values and working with lower registers.

### 3. **Program 3**
   - **Description:** This program performs a series of arithmetic operations on 16-bit numbers, including addition with carry.
   - **Instructions:**
     - `MOV AX, 1234h` — Load 1234h into AX.
     - `MOV BX, 0DCBAh` — Load 0DCBAh into BX.
     - `ADD AX, BX` — Add BX to AX.
     - `MOV CX, AX` — Store the result in CX.
     - `MOV AX, 0A0B0h` — Load 0A0B0h into AX.
     - `MOV BX, 5678h` — Load 5678h into BX.
     - `ADC AX, BX` — Add BX to AX, including carry from the previous operation.
     - `MOV DX, AX` — Store the result in DX.
   - **Objective:** Demonstrates addition with and without carry, and the use of multiple registers.

### 4. **Program 4**
   - **Description:** This program sums an array of bytes and stores the result in a memory location.
   - **Instructions:**
     - `MOV AX, my_data` — Load the base address of the data segment.
     - `MOV DS, AX` — Set DS to point to the data segment.
     - `MOV SI, 0120h` — Point SI to the start of the data array.
     - `ADD AL, [SI]` — Add each byte in the array to AL.
     - `MOV result, AL` — Store the sum in the `result` memory location.
   - **Objective:** Demonstrates processing arrays in memory and accumulation of results.

### 5. **Program 5**
   - **Description:** This program copies data from a source array to a destination array.
   - **Instructions:**
     - `MOV SI, 0120h` — Point SI to the start of the source array.
     - `MOV DI, 0130h` — Point DI to the start of the destination array.
     - `MOV AL, [SI]` — Load a byte from the source array.
     - `MOV [DI], AL` — Store it in the destination array.
   - **Objective:** Demonstrates copying data from one memory location to another.

### 6. **Program 6**
   - **Description:** This program sorts an array of bytes using a simple comparison and swap method.
   - **Instructions:**
     - `MOV SI, 0120h` — Initialize SI to point to the start of the data array.
     - `CMP AH, BH` — Compare adjacent bytes.
     - `MOV [SI], AH` — Swap the bytes if necessary.
     - Repeat until the array is sorted.
   - **Objective:** Demonstrates sorting algorithms and data manipulation in assembly language.

## How to Run the Programs

1. **Assemble the Program:**
   Use an assembler like NASM or MASM to convert the assembly code into machine code.
   ```bash
   nasm -f bin -o program.com program.asm
    ```

2. **Run the Program:** Load the assembled `.com` or `.exe` file into DOSBox or any other x86 emulator.

    ```bash
    dosbox program.com
    ```

    Replace `program.com` with the name of your assembled program file.

## Tools Used

- **Assembler:** NASM, MASM
- **Emulator:** DOSBox, EMU8086
- **Editor:** Visual Studio Code, Notepad++

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- **Instructor:** Mr. Yogesh Gholap
- **Subject:** Microprocessor & Peripherals Interfacing Lab (ECL501)
- **Institution:** Don Bosco Institute of Technology, University of Mumbai

