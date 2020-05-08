require 'whatlanguage'

class AnagramAntigram 
  attr_reader(:word1)
  def initialize(word1)
    @word1 = word1
  end

  def is_english?(word)
    english = false
    wl = WhatLanguage.new(:english)
    if wl.process_text(word) == {:english=>1}
      english = true
    end
    english
  end

  def word2(word)
    @word2 = word
  end

  def check_phrase(sentence)
    results = Array.new()
    sentence.split(" ").each do |word|
      reverse_word = word.split('').reverse.join('')
      reverse_word.sub!(/([^\s\w])/,'')
      word = reverse_word.split('').reverse.join('')
      if is_english?(word) == false
        results.push(word)
      end
    end
    results
  end

  def is_anagram?
    antigram = false
  end


end
