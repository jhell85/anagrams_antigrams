require 'pry'
require 'rspec'
require 'anagrams_antigrams'

describe('Anagram#is_english') do 
  it ("return an empty array if word is english") do
    word = AnagramAntigram.new("tomorrow")
    expect(word.is_english(word.word1)).to(eq(Array.new()))
  end

  it ("returns a hash with keys of 'original' and 'suggestions' if a word isn't english") do
    word = AnagramAntigram.new("Helo")
    expect(word.is_english(word.word1)).to(eq([{:original=>"Helo", :suggestions=>["Hello", "Helot", "Help"]}]))
  end
end

describe('AnagramAntigram#check_phrase') do
  it ("returns an empty Array for an english phrase") do
    word = AnagramAntigram.new("Hello my friend how are you today")
    expect(word.check_phrase(word.word1)).to(eq(Array.new()))
  end

  it ("returns an Array with a words that aren't english") do
    word = AnagramAntigram.new("Hello my frind how are you today")
    expect(word.check_phrase(word.word1)).to(eq([{:original=>"frind", :suggestions=>["Friend", "friend", "frond"]}]))
  end

  it ("returns an Array of hashes that include the original word and spelling suggestions") do
    word = AnagramAntigram.new("Hello my frnd how are you tod!ay.")
    expect(word.check_phrase(word.word1)).to(eq([{:original=>"frnd", :suggestions=>["frond", "fend", "Fronde"]}, {:original=>"tod!ay.", :suggestions=>["Tod", "Todd", "toad"]}]))
  end

  it ("returns an empty Array even if words have punctuation after them such as a comma period or exclamation point") do
    word = AnagramAntigram.new("Wow! where did you get that? Well, I'd like to get one too.")
    expect(word.check_phrase(word.word1)).to(eq(Array.new()))
  end

  it ("method creates sentence_array1 & sentence_array2 constructors for class if the sentence has all english words ") do
    word = AnagramAntigram.new("Wow! where did you get that? Well, I'd like to get one too.")
    word.set_word2("Hello World!")
    word.check_phrase(word.word1)
    word.check_phrase(word.word2)
    expect(word.sentence_array2).to(eq(["Hello", "World"]))
  end
end

describe("AnagramAntigram#is_anagram?") do
  it("method will return true for single letter words that are anagrams") do
    word = AnagramAntigram.new("later")
    word.set_word2("alert")
    word.check_phrase(word.word1)
    word.check_phrase(word.word2)
    expect(word.is_anagram?).to(eq(true))
  end

  it("method will return true for multiple letter phrases that are anagrams") do
    word = AnagramAntigram.new("a rope ends it")
    word.set_word2("desperation")
    word.check_phrase(word.word1)
    word.check_phrase(word.word2)
    expect(word.is_anagram?).to(eq(true))
  end
end
