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






<h1>Exercise: RISC-V Program for Integer Addition</h1>

<h2>Introduction</h2>
<p>In this exercise, I developed a RISC-V program aimed at performing integer addition. The primary objective is to demonstrate the capability of a RISC-V assembly program to perform basic arithmetic operations on integers.</p>

<h2>Problem Statement</h2>
<p>The task at hand involves creating a RISC-V program that stores two integers in the data segment and then computes their sum. The program should output the result on the console and terminate.</p>

<h2>Solution Approach</h2>
<p>To address the problem, I followed a straightforward approach:</p>

<h3>Data Segment</h3>
<p>In the data segment, I stored two integers: <code>5</code> and <code>-6</code>. These integers are loaded into registers later in the program.</p>

<h3>Text Segment</h3>
<p>The main logic of the program resides in the text segment:</p>
<ol>
  <li><strong>Load Integers:</strong> I used the <code>lw</code> instruction to load the two integers from memory into registers <code>t0</code> and <code>t1</code>.</li>
  <li><strong>Addition:</strong> Using the <code>add</code> instruction, I computed the sum of the two integers and stored the result in register <code>a0</code>.</li>
  <li><strong>Exit:</strong> I invoked the <code>ecall</code> instruction with the appropriate system call number to print the result on the console.</li>
  <li><strong>Termination:</strong> Finally, I used another <code>ecall</code> instruction to terminate the program.</li>
</ol>

<h2>Conclusion</h2>
<p>The RISC-V program successfully accomplishes the task of adding two integers and printing the result. It demonstrates the basic arithmetic capabilities of RISC-V assembly language.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of the "Computer Architecture Unit 2" course in the "Applied Computer Science and Artificial Intelligence" degree at Sapienza University of Rome.</p>
