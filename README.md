# Ruby Building Blocks
##Solution of classic "intro to programming" problems. 
### Caesar Cipher
"In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence."

Method #caesar_cipher takes in a string and the shift factor and then outputs the modified string
###Stock Picker
Method #stock_picker takes in an array of stock prices, one for each hypothetical day. It returns a pair of days representing the best day to buy and the best day to sell. Days start at 0. 
###Substrings
Method #substrings takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It returns a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
###Bubble Sort
Method #bubble_sort that takes an array and returns a sorted array
###Upgraded Bubble Sort
Method #bubble_sort_by sorts an array but accepts a block. The block takes two arguments which represent the two elements currently being compared. The block's return is similar to the spaceship operator: if the result of the block is negative, the element on the left is "smaller" than the element on the right. 0 means they are equal. A positive result means the left element is greater.
###Enumerable Methods
My own version of methods in the Enumarable module