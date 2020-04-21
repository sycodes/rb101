a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# I think the final values of a and b is:
# a = 4
# b = [3, 8]

p a # => 2
p b # => [3, 8]

# I was wrong about a. arr[0] += 2 was modifying the array arr, not a.
# It assigned a new object at that index of the array.
# Instead of arr[0] containing a, it now contains 4.

p arr # => [4, [3, 8]]

# The value of b did change because b is an array.
# We modified that array by assigning a new value at index 0.