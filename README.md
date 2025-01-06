4-Bit Mod-N Counter
Overview
This project implements a 4-bit Mod-N counter, a digital sequential circuit that counts up to a user-defined maximum value (N) and then resets to zero. The design allows for modular counting within a range of 0 to 15, making it versatile for various applications.

Features
Configurable Modulus: Counts from 0 to N-1, where N is user-defined (1 ≤ N ≤ 16).
4-Bit Resolution: Maximum count value of 15 (binary 1111).
Reset Functionality: Reset input initializes the counter to zero.
Synchronous Operation: All state transitions occur on the clock edge.
Enable Control: Enables or disables counting dynamically.
Inputs and Outputs
Inputs:
Clock (clk): Drives the counter operation.
Reset (rst): Resets the counter to zero.
Enable (en): Enables the counting operation.
Max Count (N): Configurable parameter to set the counter's maximum count.
Outputs:
Count[3:0]: 4-bit binary output representing the current counter value.
Overflow: Indicates when the counter rolls over to zero after reaching N-1.
Design Approach
State Transition: The counter increments its value on each clock cycle if enabled.
Modulus Logic: The counter resets to zero when the current count equals N-1.
Reset: Overrides all operations and initializes the counter to zero immediately.
Synchronous Design
The design ensures all transitions occur in sync with the clock signal, minimizing timing issues in high-speed applications.

