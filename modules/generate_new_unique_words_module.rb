module GerenateNewUniqueWordsModule
  def generate_new_unique_words_module(words_object, final_words_length)
    all_lengths = words_object.keys
    right_combinations = []
    all_lengths.each do |length1|
      all_lengths.each do |length2|
        right_combinations << [length1, length2].sort if length1 + length2 == final_words_length
      end
    end
  
    right_combinations = right_combinations.uniq
  
    all_combinations = []
    right_combinations.each do |combination_array|
      first_length, second_length = combination_array
      first_collection = words_object[first_length]
      second_collection = words_object[second_length]
      index1 = 0
  
      while index1 != first_collection.length
        first_word = first_collection[index1]
        index2 = 0
        while index2 != second_collection.length
          second_word = second_collection[index2]
          all_combinations << "#{first_word}#{second_word}"
          all_combinations << "#{second_word}#{first_word}"
          index2 += 1
        end
        index1 += 1
      end
    end 
    all_combinations.uniq
  end
end