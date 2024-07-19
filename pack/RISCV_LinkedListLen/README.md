<h1>Exercise: Counting Nodes in a Linked List</h1>

<h2>Introduction</h2>
<p>In this exercise, I aim to develop a program that counts the number of nodes in a linked list of integers. The task is to traverse through the linked list and count the nodes until reaching the end.</p>

<h2>Problem Statement</h2>
<p>The task is to write a program that prints the number of nodes in a given linked list of integers. The linked list is stored in the data segment of the program.</p>

<h2>Solution Approach</h2>
<p>To solve this problem, I implemented a simple traversal algorithm. Here's an overview of the approach:</p>

<h3>Data Segment</h3>
<p>The linked list is represented in the data segment using .word directives. Each node consists of two words: the first word stores the integer value, and the second word stores the address of the next node.</p>

<h3>Text Segment</h3>
<p>In the text segment, I performed the following steps:</p>
<ol>
  <li><strong>Initialize Registers:</strong> I initialized the necessary registers, such as <code>s0</code> to point to the beginning of the list and <code>t0</code> to traverse through the list.</li>
  <li><strong>Traversal Loop:</strong> Using a loop, I traversed through the linked list, incrementing a counter <code>a0</code> for each node encountered.</li>
  <li><strong>Print Result:</strong> Once the traversal is complete, I used the <code>ecall</code> instruction to print the result stored in <code>a0</code>, which represents the count of nodes.</li>
</ol>

<h2>Conclusion</h2>
<p>By implementing a traversal algorithm, I successfully developed a program that counts the number of nodes in a linked list. The solution effectively addresses the problem statement by accurately determining the count of nodes in the given linked list.</p>

<h2>Acknowledgment</h2>
<p>This exercise is part of my university course "Computer Architecture Unit 2" at Sapienza University of Rome.</p>
