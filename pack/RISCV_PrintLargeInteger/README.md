<h1>Exercise: Finding the Largest Number</h1>

<h2>Introduction</h2>
<p>In this exercise, I was tasked with writing a program in RISC-V assembly language to determine and print the largest of two integers.</p>

<h2>Problem Statement</h2>
<p>The task involves comparing two integers stored in memory and printing the larger one.</p>

<h2>Solution Approach</h2>
<p>I approached the problem by first loading the two integers from memory into registers. Then, I compared the values using a conditional branch instruction to determine which one is larger. Finally, I printed the larger integer.</p>

<h3>Data Segment</h3>
<p>The data segment contains two integers, 5 and 7, which are loaded into registers for comparison.</p>

<h3>Text Segment</h3>
<ol>
  <li><strong>Loading Integers:</strong> I used the <code>lw</code> instruction to load the integers from memory into registers.</li>
  <li><strong>Comparison:</strong> I compared the two integers using the <code>blt</code> instruction to branch if the second integer is less than the first.</li>
  <li><strong>Printing Result:</strong> Depending on the result of the comparison, I printed the larger integer using the appropriate system call.</li>
</ol>

<h2>Conclusion</h2>
<p>Overall, the solution effectively identifies and prints the larger of two integers stored in memory.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of my coursework for the "Computer Architecture Unit 2" in my degree program "Applied Computer Science and Artificial Intelligence" at Sapienza University of Rome.</p>
