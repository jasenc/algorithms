# Asymptotic

Algorithms are measured using Asymptotic Analysis.

### Asymptotic Notation

Let's say we have an algorithm. We're going to be providing it various inputs
of different sizes, represented by *n*. How long it takes for the algorithm to
produce a result could be represented as 6*n*<sup>2</sup> + 100*n* + 300. To
simplify we can drop the terms that are less significant and any constants, in
this case 100*n* + 300. We are left with 6*n*<sup>2</sup>. This practice is
known as asymptotic notation and allows us to focus on the important part of
the algorithms running time, it's rate of growth.

### Big-Theta Notation

Big-Theta notation is when the running time of an algorithm can be determined to
consistently and reliably fit within two constants of the size of the input, or
function of the input. These constants are typically expressed as k<sub>1</sub>
and k<sub>2</sub>. With Big-Theta notation we can say that we have an
asymptotically tight bound on the running time.

### Big-O Notation

Big-O notation is used to define an asymptotic upper bounds. This is used in the
case of binary search. We know the upper limit of how long binary search
will take to run - or in other words it's worst case. However the lower limit
could effectively be 1 if the first guess turns out to be correct.

### Big-Omega Notation

Contrary to Big-O, this notation is used when we know the lower limit of the
algorithm's running time, the asymptotic lower bounds.


## Author
Jasen Carroll  
Sept 29th, 2015  
jasen.c@icloud.com
