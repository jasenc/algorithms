# Lesson 1

A Social Network Magic Trick

## Eulerian Paths

In this case a [graph][1] is composed of nodes and edges. A Eulerian path is one
in which a trail visits every edge exactly once. Most graphs have a Eulerian
Path, two cases in which they do not would be a graph with an odd number of
nodes in which every node has an even number of edges connecting, or the
opposite - an even number of nodes in which every node has an odd number of
edges connecting.

## Naive

```python
def naive(a, b):
    x = a
    y = b
    z = 0
    while x > 0:
        z = z + y
        x = x - 1
    return z
```

## Russian Peasant's algorithm

Otherwise known as [Ancient Egyptian multiplication][2].

```python
def russian(a, b):
    x = a; y = b
    z = 0
    while x > 0:
        if x % 2 == 1: z = z + y
        # Double y by bitwise shift operator
        y = y << 1
        # Half x by bitwise shift operator - if odd returns whole number.
        x = x >> 1
    return z
```

## Naive vs Russian

Both of these algorithms actually multiply the provided arguments. On one hand
Naive is easier to read and interpret what is going on. However, Russian is
a much faster and efficient algorithm. If we set both arguments equal to 2<sup>n</sup>,
Naive tends to have a linear run time that when `n = 23` the run time is
approximately 3 seconds. Therefore Naive can be expressed using Big-Theta
notation. Whereas Russian's `n = 1000` has a run time of no more than 2
milliseconds, a Big-O notation.

## Measuring time

In order to predict the run time of algorithms without having to plug in various
code sets we can make a few simplifying assumptions.

1. Simple statement takes unit time.
```python
x = x + 1
```
2. Sequence of simple statements is the sum.
```python
if y = 4: z = z/2
```
3. Loop takes time equal to the body x iterations.
```python
for i in range(4):
    print i
```

Therefore, in the Naive algorithm the loop is run for each and every value of x,
explaining the linearly growing run time. In the Russian Peasant's algorithm
since x is being halved each time, the loop is run only at a rate of
log<sub>2</sub>(x) explaining the comparatively minuscule run time.

## Recursive Russian Peasant's

```python
def rec_russian(a, b):
    if a == 0: return 0
    if a % 2 == 0: return 2*rec_russian(a/2,b)
    return b + 2*rec_russian((a-1)/2,b)
```

## Author
Jasen Carroll  
Oct 2nd, 2015  
jasen.c@icloud.com


[1]: https://en.wikipedia.org/wiki/Degree_(graph_theory)
[2]: https://en.wikipedia.org/wiki/Ancient_Egyptian_multiplication
