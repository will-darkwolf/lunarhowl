# Define a list of words
words = [
    "apple",
    "banana",
    "cherry",
    "grapefruit",
    "kiwi",
    "watermelon",
    "orange",
    "blueberry",
]

# Create a new list called 'filtered_words' by iterating through each word in the 'words' list.
# For each word, check if its length is between 3 and 10 (inclusive).
# If it is, add the word to the 'filtered_words' list. This uses a list comprehension for concise filtering.
filtered_words = [word for word in words if 3 <= len(word) <= 10]

# Sort the 'filtered_words' list in reverse alphabetical order using the 'sorted' function.
# The 'reverse=True' argument ensures descending order.
sorted_words = sorted(filtered_words, reverse=True)

# Print the sorted list of words.
print(sorted_words)
