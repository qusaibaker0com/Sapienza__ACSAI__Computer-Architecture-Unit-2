<h1>Exercise: RISC-V Assembly Equality Check</h1>

<h2>Introduction</h2>
<p>In this exercise, I will write a RISC-V assembly program to compare two integers loaded from the data segment and print 1 if they are equal, or 0 if they are not equal.</p>

<h2>Problem Statement</h2>
<p>The task is to load two integers from the data segment, compare them, and print 1 if they are equal, or 0 if they are not equal.</p>

<h2>Solution Approach</h2>
<p>I approached this problem by loading the integers from the data segment into registers, comparing them, and setting the return value accordingly.</p>

<h3>Data Segment</h3>
<p>The data segment contains two integers, both with the value 5.</p>

<h3>Text Segment</h3>
<p>The main code logic is as follows:</p>
<ol>
  <li><strong>Load Integers:</strong> Load the first integer from the data segment into register <code>t0</code> and the second integer into register <code>t1</code>.</li>
  <li><strong>Compare:</strong> Compare the values in registers <code>t0</code> and <code>t1</code> using the <code>beq</code> instruction.</li>
  <li><strong>Set Return Value:</strong> If the integers are equal, set register <code>a0</code> to 1; otherwise, set it to 0.</li>
  <li><strong>Print Result:</strong> Use system call <code>ecall</code> to print the value of register <code>a0</code>.</li>
</ol>

<h2>Conclusion</h2>
<p>The solution effectively compares two integers and prints the result, meeting the requirements of the problem statement.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of my university coursework for the "Computer Architecture" unit at Sapienza University of Rome.</p>
