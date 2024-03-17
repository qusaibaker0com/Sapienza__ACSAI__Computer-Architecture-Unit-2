<h1>Exercise: Finding the Largest Item in an Integer Array</h1>

<h2>Introduction</h2>
<p>In this exercise, I was tasked with writing a program in Assembly RISC-V to find and print the largest item in an array of integers.</p>

<h2>Problem Statement</h2>
<p>The problem involves processing an array of integers stored in the data segment and determining the largest integer in the array.</p>

<h2>Solution Approach</h2>
<p>To solve this problem, I employed a simple algorithm that iterates through the array, comparing each element with the current maximum value found so far. If an element is greater than the current maximum, it updates the maximum value. This process continues until all elements in the array have been examined.</p>

<h3>Data Segment</h3>
<p>The data segment contains the array of integers. The first element stores the length of the array, followed by the array elements.</p>

<h3>Text Segment</h3>
<p>In the text segment, the following steps are executed:</p>
<ol>
  <li><strong>Load Array Length:</strong> Load the length of the array into register <code>t0</code>.</li>
  <li><strong>Load First Array Item:</strong> Load the first element of the array into register <code>a0</code> as the initial maximum value.</li>
  <li><strong>Iterate Through Array:</strong> Loop through each element of the array, comparing it with the current maximum value.</li>
  <li><strong>Update Maximum:</strong> If an element is greater than the current maximum, update the maximum value.</li>
  <li><strong>Continue Iteration:</strong> Repeat the iteration until all elements have been examined.</li>
  <li><strong>Print Result:</strong> Print the maximum value found.</li>
</ol>

<h2>Conclusion</h2>
<p>This solution effectively identifies the largest item in the integer array and demonstrates the basic principles of array traversal and comparison in Assembly RISC-V.</p>

<h2>Acknowledgment</h2>
<p>This exercise was completed as part of the "Computer Architecture Unit 2" course at Sapienza University of Rome.</p>
