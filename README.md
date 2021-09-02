# Project Euler Functions

This is a compilation of some functions that I created to solve some of the problems in the [Project Euler](https://projecteuler.net/archives) archive. 

You can find the R files with my propossed solutions to the first 50 problems of this archive [here](). 


## Using in RStudio

To try this out in RStudio, you just have to do the following:

```
library('devtools')
devtools::install_github('emendez0911/EulerFunctions')
```

The functions available are:

| Function name        | Description                                                       |
| -------------------- | ----------------------------------------------------------------- |
| get_primes           | Gets primes using simple Sieve of Eratosthenes algorithm.         |
| greatest_common_div  | Gets greatest common divisor of two numbers.                      |
| is_hexagonal         | Checks if number is hexagonal, based on formula Hn = n(2n−1).     |
| is_palindromic       | Checks if given number is a palidrome, i.e., it can be read the same both ways.  |
| is_pandigital        | Checks if given number is pandigital, i.e., it makes use of all the digits from 1 to d exactly once, being d the number digits in the number.  |
| is_pentagonal        | Checks if number is pentagonal, based on formula Pn = n(3n−1)/2.  |
| is_prime             | Checks if given number is prime through trial division.           |
| is_triangular        | Checks if number is triangular, based on formula Tn = n*(n+1)/2.  |
| nth_permutation      | Get the nth lexicographic permutation of a vector.                |
| number_to_vector     | Converts number into numerical vector, separating each digit as elements of the vector.  |
| permute              | Gets all permutations of given vector in lexicographic order using Knuth's algorithm.    |
| prime_factors        | Gets prime factors of given number using a list of prime numbers. |
| proper_divisors      | Gets proper divisors of a number n, i.e. numbers below n that divide evenly into n.      |
| reversed_number      | Returns the reverse of a given number, i.e. same number but read from right to left.     |
| swap                 | Swaps positions of elements in given vector.                      |
| vector_to_number     | Converts numerical vector to a number, concatenating the numbers in given vector as consecutive digits of the number.  |


## Contribute

This is my first GitHub repo, so I would love to get some feedback on this. Feel free to drop any suggestions you might have to help me improve this and learn even more about R Programming.

I might come back to this in the future, as a keep solving more problems just for the fun of it. 

