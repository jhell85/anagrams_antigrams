require 'pry'
require 'rspec'
require 'anagrams_antigrams'

describe('Anagram#is_english') do 

  it ("returns true if word is english") do
    word = AnagramAntigram.new("tomorrow")
    expect(word.is_english?(word.word1)).to(eq(true))
  end

  it ("returns false if a word isn't english") do
    word = AnagramAntigram.new("manana")
    expect(word.is_english?(word.word1)).to(eq(false))
  end

end