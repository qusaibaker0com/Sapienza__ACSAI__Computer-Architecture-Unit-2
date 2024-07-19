<h1>Exercise: Print Numbers Down to 1</h1>

<h2>Introduction</h2>
<p>In this exercise, I aimed to write a program in RISC-V assembly language to print all numbers starting from a given positive integer down to 1.</p>

<h2>Problem Statement</h2>
<p>The task involves loading a positive integer from the data segment and then printing all numbers starting from that integer down to 1.</p>

<h2>Solution Approach</h2>
<p>To solve this problem, I followed a simple iterative approach. I loaded the initial integer from the data segment, then used a loop to decrement the integer and print it until it reached 1.</p>

<h3>Data Segment</h3>
<p>I stored the initial integer value in the data segment using the <code>.word</code> directive.</p>

<h3>Text Segment</h3>
<ol>
  <li><strong>Loading the Integer:</strong> I loaded the initial integer from the data segment into register <code>a0</code>.</li>
  <li><strong>Printing Numbers:</strong> I entered a loop labeled as <code>ciclo</code> where I printed the value of register <code>a0</code> using the <code>ecall</code> instruction, which corresponds to printing an integer. Then, I decremented the value of <code>a0</code> by 1.</li>
  <li><strong>Loop Condition:</strong> I checked if the value of <code>a0</code> is not equal to zero using the <code>bne</code> instruction. If the condition is met, the program jumps back to the <code>ciclo</code> loop to continue printing numbers. Otherwise, it exits the loop.</li>
  <li><strong>Exiting the Program:</strong> Finally, I loaded the value 10 into register <code>a7</code> to indicate the exit syscall, and then executed the exit syscall using <code>ecall</code>.</li>
</ol>

<h2>Conclusion</h2>
<p>In conclusion, the program successfully prints all numbers starting from the given positive integer down to 1.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of my university coursework for the "Computer Architecture Unit 2" in my degree program "Applied Computer Science and Artificial Intelligence" at Sapienza University of Rome.</p>
