
<h1>Exercise: RISC-V Assembly Code - Swap Content of Registers</h1>

<h2>Introduction</h2>
<p>In this exercise, I am tasked with writing RISC-V Assembly code to swap the contents of two registers, <code>t0</code> and <code>t1</code>, if the value stored in <code>t0</code> is less than the value stored in <code>t1</code>.</p>

<h2>Problem Statement</h2>
<p>The problem is to implement a code snippet that checks if the value stored in register <code>t0</code> is less than the value stored in register <code>t1</code>. If this condition is true, then the contents of the two registers should be swapped. Otherwise, no action is taken.</p>

<h2>Solution Approach</h2>
<p>To solve this problem, I have used a conditional branch instruction to compare the values in <code>t0</code> and <code>t1</code>. If <code>t0</code> is less than <code>t1</code>, a temporary register is used to swap their contents.</p>

<h3>Data Segment</h3>
<p>No data is stored in the data segment for this exercise.</p>

<h3>Text Segment</h3>
<p>The main logic of the code resides in the text segment.</p>
<ol>
  <li><strong>Load Values:</strong> Load the values stored in memory locations pointed to by register <code>s0</code> into registers <code>t0</code> and <code>t1</code>.</li>
  <li><strong>Conditional Branch:</strong> Use the <code>blt</code> instruction to compare the values in <code>t0</code> and <code>t1</code>. If <code>t0</code> is less than <code>t1</code>, branch to the <code>ciclo</code> label.</li>
  <li><strong>Swap Contents:</strong> If the branch condition is true, swap the contents of <code>t0</code> and <code>t1</code> using a temporary register <code>t2</code>.</li>
  <li><strong>Loop:</strong> Execute the code at the <code>ciclo</code> label, which signifies the end of the swap operation.</li>
  <li><strong>Exit:</strong> Use the <code>ecall</code> instruction to terminate the program.</li>
</ol>

<h2>Conclusion</h2>
<p>The provided RISC-V Assembly code successfully swaps the contents of registers <code>t0</code> and <code>t1</code> if the value in <code>t0</code> is less than the value in <code>t1</code>, fulfilling the requirements of the exercise.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of the "Computer Architecture Unit 2" course in the "Applied Computer Science and Artificial Intelligence" degree at Sapienza University of Rome.</p>
