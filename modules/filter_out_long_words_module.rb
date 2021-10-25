module FilterOutLongWordsModule
  def filter_out_long_words_module(array, max_length)
    index = 0
    result = []
    array.length.times do
      if array[index].length < max_length
        result << array[index]
      end
      index += 1
    end
    result
  end
end