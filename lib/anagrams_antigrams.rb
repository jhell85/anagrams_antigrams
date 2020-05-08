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
      word.split('').last(2).keep_if { |l| l == /^[a-zA-Z]+$/ }
      # word.scan(/[A-Za-z]/)
      
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
