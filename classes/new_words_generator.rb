require_relative('../modules/words_importer_module.rb')
require_relative('../modules/filter_out_long_words_module.rb')
require_relative('../modules/group_words_by_length_module.rb')
require_relative('../modules/generate_new_unique_words_module.rb')

include WordsImporterModule
include FilterOutLongWordsModule
include GroupWordsByLengthModule
include GerenateNewUniqueWordsModule

class NewWordsGenerator
  attr_accessor :from_file, :new_words_length, :to_file

  def initialize(new_words_length:, from_file: from_file = 'dictionary.txt', to_file: to_file = 'new_words.txt')
    @from_file = from_file
    @new_words_length = new_words_length
    @to_file = to_file
  end

  def import_words
    words_importer_module(@file_name)
  end

  def filter_out_long_words
    filter_out_long_words_module(import_words, @new_words_length)    
  end

  def group_words_by_length
    group_words_by_length_module(filter_out_long_words, @new_words_length)
  end

  def generate_new_unique_words
    generate_new_unique_words_module(group_words_by_length, @new_words_length)
  end

  def export_generated_words_to_file
    File.open(@to_file, "w+") do |f|
      if generate_new_unique_words.empty? 
        f.puts "No combinations of #{@new_words_length} characters were possible"
      else
        generate_new_unique_words.each { |new_word| f.puts(new_word) }
      end
    end
    p "Success! #{generate_new_unique_words.length} new words were exported to #{@to_file}"
  end
end

