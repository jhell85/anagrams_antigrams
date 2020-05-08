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

  # def is_antigram
  #   antigram = false

  # end


end
