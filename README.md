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
