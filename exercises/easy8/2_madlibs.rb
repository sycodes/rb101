# Mad libs are a simple game where you create a story template with blanks for words. 
# You, or another player, then construct a list of words and place them into the story, 
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective 
# and injects those into a story that you create.

print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Enter an adverb: "
adverb = gets.chomp

prompt1 = "Do you #{verb} your #{noun} #{adjective} #{adverb}? That's hilarious!"
prompt2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
prompt3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [prompt1, prompt2, prompt3].sample