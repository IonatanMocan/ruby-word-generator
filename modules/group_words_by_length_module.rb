module GroupWordsByLengthModule
  def group_words_by_length_module(array, max_length)
    result = {}
    array.each do |word|
        if result.has_key?(word.length)
            result[word.length] << word
        else
            result[word.length] = [word]
        end
    end
    result
  end
end