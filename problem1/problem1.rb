require_relative('../classes/new_words_generator.rb')

new_words = NewWordsGenerator.new(new_words_length: 6, from_file: 'dictionary.txt', to_file: 'new_words.txt')
new_words.export_generated_words_to_file
