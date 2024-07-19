<h1>Exercise: Array Sum Calculation in RISC-V Assembly</h1>

<h2>Introduction</h2>
<p>This exercise aims to develop a program in RISC-V Assembly language to calculate the sum of integers stored in an array. The objective is to understand how to manipulate memory, perform arithmetic operations, and control program flow in RISC-V Assembly.</p>

<h2>Problem Statement</h2>
<p>The task is to write a program that takes an array of integers stored in the data segment and calculates the sum of all elements in the array. This exercise helps in understanding basic array manipulation and looping constructs in RISC-V Assembly.</p>

<h2>Solution Approach</h2>

<h3>Data Segment</h3>
<p>The data segment contains the array length followed by the array elements. The array length is stored as a single word, and the array elements are stored sequentially.</p>

<h3>Text Segment</h3>
<ol>
  <li><strong>Load Array Length:</strong> Load the array length from memory into register <code>t0</code>.</li>
  <li><strong>Array Sum Calculation:</strong> Use a loop to iterate over each element in the array. Inside the loop:
    <ol>
      <li><strong>Load Array Element:</strong> Load the current array element into register <code>t1</code>.</li>
      <li><strong>Update Sum:</strong> Add the current array element to the sum stored in register <code>a0</code>.</li>
      <li><strong>Decrement Array Length:</strong> Decrement the array length stored in register <code>t0</code>.</li>
      <li><strong>Loop Condition:</strong> Check if the array length is not zero. If true, repeat the loop; otherwise, exit the loop.</li>
    </ol>
  </li>
  <li><strong>Exit Program:</strong> Set register <code>a7</code> to 1 to invoke the exit syscall, indicating successful program execution.</li>
</ol>

<h2>Conclusion</h2>
<p>The solution demonstrates how to iterate over an array in RISC-V Assembly and perform arithmetic operations to calculate the sum of its elements. By understanding this exercise, one can gain proficiency in handling arrays and loops in low-level programming languages.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of the "Computer Architecture Unit 2" coursework at Sapienza University of Rome.</p>
