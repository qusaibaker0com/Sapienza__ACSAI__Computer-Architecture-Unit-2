<h1>Exercise: RISC-V Program to Compute the Sum of Two Integers</h1>

<h2>Introduction</h2>
<p>In this exercise, I created a RISC-V program that calculates the sum of two integers stored in the data segment. The program is designed to output the result on the console and then exit.</p>

<h2>Problem Statement</h2>
<p>I was tasked with developing a RISC-V program that operates without using pseudo-instructions. The program should retrieve two integers from the data segment, calculate their sum, print the result to the console, and then terminate. Importantly, the program should be flexible enough to handle any integer values stored in the data segment.</p>

<h2>Solution Approach</h2>
<p>To accomplish this task, I divided my program into two main sections: the data segment and the text segment.</p>

<h3>Data Segment</h3>
<p>In the data segment, I stored two integers using the <code>.word</code> directive. These integers represent the operands for the addition operation.</p>

<h3>Text Segment</h3>
<p>Within the text segment, I utilized RISC-V assembly instructions to perform the necessary operations. Here's a breakdown of the steps:</p>
<ol>
  <li><strong>Load Integer Values:</strong> I used the <code>lui</code> instruction to load the base address of the data segment into register <code>s0</code>. Then, I loaded the two integers from memory into registers <code>t0</code> and <code>t1</code> using the <code>lw</code> instruction.</li>
  <li><strong>Compute Sum:</strong> Using the <code>add</code> instruction, I added the contents of registers <code>t0</code> and <code>t1</code> and stored the result in register <code>a0</code>, which is designated for function arguments.</li>
  <li><strong>Output Result:</strong> To print the result to the console, I set the system call number for printing (<code>1</code>) in register <code>a7</code> using <code>addi</code>, then executed the <code>ecall</code> instruction.</li>
  <li><strong>Exit Program:</strong> Finally, I used <code>addi</code> to set the system call number for program exit (<code>10</code>) in register <code>a7</code>, followed by another <code>ecall</code> instruction to terminate the program.</li>
</ol>

<h2>Conclusion</h2>
<p>In conclusion, I successfully developed a RISC-V program to compute the sum of two integers stored in the data segment. The program adheres to the requirements provided and is capable of handling different integer values. This exercise allowed me to reinforce my understanding of RISC-V assembly language programming concepts.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of my university coursework for the "Computer Architecture Unit 2" in my degree program "Applied Computer Science and Artificial Intelligence" at Sapienza University of Rome.</p>


<h1>Exercise: RISC-V Program to Calculate Sum of Two Integers</h1>

<h2>Introduction</h2>
<p>In this exercise, I developed a RISC-V program to calculate the sum of two integers stored in the data segment and print the result to the console.</p>

<h2>Problem Statement</h2>
<p>The task is to write a RISC-V program that takes two integers from the data segment, calculates their sum, and prints the result on the console before exiting. The program should be designed to work regardless of the content of the two integers provided.</p>

<h2>Solution Approach</h2>
<p>To solve this problem, I followed a straightforward approach:</p>

<h3>Data Segment</h3>
<p>In the data segment, I defined two words to store the two integers. These integers can be of any value, positive or negative.</p>
<code>
.data
    .word 5
    .word -6
</code>

<h3>Text Segment</h3>
<p>The main code logic is implemented in the text segment. Here's a breakdown of the steps:</p>
<ol>
    <li><strong>Load Integers:</strong> Load the two integers from the data segment into registers.</li>
    <code>
        lui s0, 0x10010
        lw t0, 0(s0)     // Load first integer into t0
        lw t1, 4(s0)     // Load second integer into t1
    </code>
    <li><strong>Calculate Sum:</strong> Add the two integers together and store the result in a register.</li>
    <code>
        add a0, t0, t1   // Calculate sum and store in a0
    </code>
    <li><strong>Print Result:</strong> Use the ecall instruction to print the result on the console.</li>
    <code>
        addi a7, zero, 1  // Set a7 register for printing
        ecall             // Print the result
    </code>
    <li><strong>Exit:</strong> Use the ecall instruction to exit the program.</li>
    <code>
        addi a7, zero, 10 // Set a7 register for program exit
        ecall             // Exit the program
    </code>
</ol>

<h2>Conclusion</h2>
<p>The RISC-V program successfully accomplishes the task of calculating the sum of two integers provided in the data segment and printing the result to the console. It demonstrates basic arithmetic operations and system calls in the RISC-V instruction set architecture.</p>

<h2>Acknowledgment</h2>
<p>This exercise was completed as part of the "Computer Architecture Unit 2" course in the Applied Computer Science and Artificial Intelligence degree program at Sapienza University of Rome.</p>
