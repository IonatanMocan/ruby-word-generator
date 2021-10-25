require 'rspec/autorun'
require_relative('../classes/new_words_generator.rb')

generator = NewWordsGenerator.new(new_words_length: 3, from_file: 'test_dictionary.txt')

describe NewWordsGenerator do
  it 'imports words from files into array' do
    expected_result = ["a", "e", "pa", "pe", "ken", "ben", "hegemony", "barbie", "oligopoly", "countryside"]
    expect(generator.import_words).to eq(expected_result)
  end

  it 'filters out long words' do
    expected_result = ["a", "e", "pa", "pe"]
    expect(generator.filter_out_long_words).to eq(expected_result)
  end

  it "groups words by length" do
    expected_result = {1=>["a", "e"], 2=>["pa", "pe"]}
    expect(generator.group_words_by_length).to eq(expected_result)
  end

  it "generate new unique words" do
    expected_result = ["apa", "paa", "ape", "pea", "epa", "pae", "epe", "pee"]
    expect(generator.generate_new_unique_words).to eq(expected_result)
  end  
end
