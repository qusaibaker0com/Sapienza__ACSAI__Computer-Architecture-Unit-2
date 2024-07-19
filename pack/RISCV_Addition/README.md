<h1>Exercise: Memory Operations in RISC-V Assembly</h1>

<h2>Introduction</h2>
<p>In this exercise, I implemented memory operations using the RISC-V assembly language. The objective was to load two integers from memory, calculate their sum, and store the result back into memory.</p>

<h2>Problem Statement</h2>
<p>The task involved loading two integers from memory, adding them together, and storing the result back into memory. Specifically, I needed to use the <code>lui</code>, <code>lw</code>, and <code>sw</code> instructions in RISC-V assembly to accomplish this.</p>

<h2>Solution Approach</h2>
<p>To solve the problem, I followed these steps:</p>

<h3>Data Segment</h3>
<p>In the data segment, I defined two 32-bit integers using the <code>.word</code> directive. These integers represented the numbers to be added.</p>

<h3>Text Segment</h3>
<ol>
  <li><strong>Load Upper Immediate:</strong> I used the <code>lui</code> instruction to load the upper 20 bits of the address of the data segment into a register (<code>x5</code>).</li>
  <li><strong>Load Word:</strong> I loaded the first integer from memory into register <code>x3</code> using the <code>lw</code> instruction with an offset of 0 from the base address in register <code>x5</code>.</li>
  <li><strong>Load Word:</strong> Similarly, I loaded the second integer from memory into register <code>x4</code> using the <code>lw</code> instruction with an offset of 4 bytes from the base address in register <code>x5</code>.</li>
  <li><strong>Addition:</strong> I added the values stored in registers <code>x3</code> and <code>x4</code> together and stored the result in register <code>x3</code>.</li>
  <li><strong>Store Word:</strong> Finally, I stored the result back into memory at an offset of 8 bytes from the base address in register <code>x5</code> using the <code>sw</code> instruction.</li>
  <li><strong>System Call:</strong> I used the <code>ori</code> instruction to set a value in register <code>x17</code> for the exit code, and then performed a system call using <code>ecall</code> to terminate the program.</li>
</ol>

<h2>Conclusion</h2>
<p>In this exercise, I successfully implemented memory operations in RISC-V assembly to load two integers, compute their sum, and store the result back into memory. By utilizing the <code>lui</code>, <code>lw</code>, and <code>sw</code> instructions, I demonstrated proficiency in manipulating memory data in a RISC-V architecture.</p>

<h2>Acknowledgment</h2>
<p>This exercise was part of my coursework for the "Computer Architecture Unit 2" in my degree program "Applied Computer Science and Artificial Intelligence" at Sapienza University of Rome.</p>
