# Binary Search Algorithms
# From Khan Academy

# Jasen Carroll
# Sept 25th, 2015


def binarySearch(array, target):
    min = 0
    max = len(array) - 1
    while max >= min:
        guess = int((max + min)/2)
        print "My guess was {0}".format(array[guess])
        if array[guess] == target:
            return array[guess]
        elif array[guess] < target:
            min = guess + 1
        else:
            max = guess - 1
    return -1


def primeChecker():
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59,
              61, 67, 71, 73, 79, 83, 89, 97]
    print "Give me a prime number below 100"
    target = int(raw_input().strip())
    result = binarySearch(primes, target)
    if result != -1:
        print "Your target was {0}".format(result)
    else:
        print "That is not a prime number below 100"

primeChecker()
