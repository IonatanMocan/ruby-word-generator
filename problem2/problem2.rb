require_relative('../classes/new_words_generator.rb')

# Change the name of 'dictionary.txt' if the file 
# you uploaded in this folder is called differently
FROM_FILE = 'dictionary.txt'

# Pick the final length of the generated words
NEW_WORDS_LENGTH = 6

# Change the name of 'new_words.txt' if you'd like 
# the final file to be called differently
TO_FILE = 'new_words.txt'

new_words = NewWordsGenerator.new(new_words_length: NEW_WORDS_LENGTH, from_file: FROM_FILE, to_file: TO_FILE)
new_words.export_generated_words_to_file