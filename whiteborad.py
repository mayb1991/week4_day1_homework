# Find Even numbers
# Create a function that, given a 
# list as a parameter, finds the even 
# numbers inside the list. The function 
# should then return a list.
# Example:
# Input: [2, 7, 10, 11, 12]
# Output: [2, 10, 12]


def find_even_nums(li_even):
    even_nums = []
    for even in li_even:
        if even % 2 == 0:
            even_nums.append(even)
    return even_nums
even_and_odd = [2, 7, 10, 11, 12, 19, 3, 7]
print(find_even_nums(even_and_odd))