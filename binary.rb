# Binary Search Algorithms
# From Khan Academy

# Jasen Carroll
# Sept 25th, 2015

def binarySearch(array, target)
	min = 0
	max = array.length - 1
	while max >= min
		guess = ((max + min)/2).floor
		puts "My guess was #{array[guess]}"
		if array[guess] == target
			return array[guess]
		elsif array[guess] < target
			min = guess + 1
		else
			max = guess - 1
		end
	end
	return -1
end

def primeChecker()
	primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
	puts "Give me a prime number below 100"
	target = gets.chomp.to_i
	result = binarySearch(primes, target)
	if result != -1
		puts "Your target was #{result}"
	else
		puts "That is not a prime number below 100"
	end
end

primeChecker()
