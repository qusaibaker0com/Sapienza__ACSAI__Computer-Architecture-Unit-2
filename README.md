<h1>Exercise: RISC-V Memory Operations</h1>

<h2>Introduction</h2>
<p>This exercise aims to familiarize with memory operations in RISC-V assembly language. The objective is to load two integers from memory, add them together, and store the result back into memory.</p>

<h2>Problem Statement</h2>
<p>In this exercise, I need to write RISC-V assembly code to perform memory operations. Specifically, I'm required to:</p>
<ul>
  <li>Load two integers from memory.</li>
  <li>Add them together.</li>
  <li>Store the result back into memory.</li>
</ul>

<h2>Solution Approach</h2>
<p>To achieve the desired functionality, I employed the following approach:</p>

<h3>Data Segment</h3>
<p>In the data segment, I initialized two words representing the integers to be operated on. These integers were set to 17 and 25, respectively.</p>

<h3>Text Segment</h3>
<p>In the text segment, I performed the following steps:</p>
<ol>
  <li><strong>Load Upper Immediate (lui):</strong> I used the lui instruction to load the base address of the data segment into register x5.</li>
  <li><strong>Load Word (lw):</strong> I loaded the first integer from memory into register x3 using the lw instruction.</li>
  <li><strong>Load Word (lw):</strong> Similarly, I loaded the second integer from memory into register x4.</li>
  <li><strong>Addition (add):</strong> I added the two integers stored in registers x3 and x4, and stored the result in register x3.</li>
  <li><strong>Store Word (sw):</strong> Finally, I stored the result back into memory at an offset of 8 from the base address.</li>
  <li><strong>System Call (ecall):</strong> I used the ecall instruction to terminate the program.</li>
</ol>

<h2>Conclusion</h2>
<p>In this exercise, I successfully implemented RISC-V assembly code to perform memory operations. The code loads two integers from memory, adds them together, and stores the result back into memory as required.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of my university coursework for the "Computer Architecture Unit 2" in my degree program "Applied Computer Science and Artificial Intelligence" at Sapienza University of Rome.</p>
