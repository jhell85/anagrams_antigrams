require 'spellchecker'

class AnagramAntigram 
  attr_reader :word1, :sentence_array1, :sentence_array2 
  attr_accessor :word2
  def initialize(word1)
    @word1 = word1
  end

  def is_english(sentence)
    sentence.downcase!
    output = Array.new
    results = Spellchecker.check(sentence, dictionary='en')
    results.each do |result|
      if !result[:correct]
        bad_word = { :original => result[:original], :suggestions => result[:suggestions][0..2]}
        output.push(bad_word)
      end
    end
    output
  end

  def check_phrase(sentence)
    sentence
    phrase_array = Array.new
    return_array = is_english(sentence)
    if return_array == Array.new
      if !sentence[/(?:(?!\n)\s)/i] # regex for finding whitespace in a string 
        sentence += " "
      end
      sentence.split(" ").each do |word|
        reverse_word = word.split('').reverse.join('')
        reverse_word.sub!(/([^\s\w])/,'') # regex for finding punctuation 
        word = reverse_word.split('').reverse.join('')
        phrase_array.push(word)
      end
      @sentence_array1 ? @sentence_array2 = phrase_array : @sentence_array1 = phrase_array
    end
   return_array
  end

  def is_anagram?
    anagram = false
    sentence1 = @sentence_array1.join('').chars.sort
    sentence2 = @sentence_array2.join('').chars.sort
    if sentence1.eql?(sentence2)
      anagram = true
    end
  anagram
  end

  def is_antigram?
    antigram = false
  end
end