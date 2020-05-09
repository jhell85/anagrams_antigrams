require 'whatlanguage'

class AnagramAntigram 
  attr_reader(:word1)
  attr_reader(:word2)
  attr_reader(:sentence_array2)
  attr_reader(:sentence_array1)
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

  def set_word2(word)
    @word2 = word
  end

  def check_phrase(sentence)
    bad_words = Array.new()
    saved_array = Array.new()
    sentence.split(" ").each do |word|
      reverse_word = word.split('').reverse.join('')
      reverse_word.sub!(/([^\s\w])/,'')
      word = reverse_word.split('').reverse.join('')
      saved_array.push(word)
      if is_english?(word) == false
        bad_words.push(word)
      end
    end
     if bad_words == Array.new()
      @sentence_array1 ? @sentence_array2 = saved_array : @sentence_array1 = saved_array
    end
    bad_words
  end

  def is_anagram?
    anagram = false
  end


end
