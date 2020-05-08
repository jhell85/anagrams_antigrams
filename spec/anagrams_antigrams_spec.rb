require ('pry')
require ('rspec')
require ('anagrams_antigrams')

describe('Anagram#is_english') do 

  it ("returns true false if word is english or not") do
    word = Anagram.new("today")
    expect(word.is_english?).to(eq(true))
  end
end