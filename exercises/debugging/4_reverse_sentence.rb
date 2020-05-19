def reverse_sentence(sentence)
  words = sentence.split(' ') # => ['how', 'are', 'you', 'doing']
  reversed_words = []

  i = 0
  while i < words.length # => 4
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# On line 7, you can't add a string with an array. 
# You can fix this by adding brackets: [words[i]].