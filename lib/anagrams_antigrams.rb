require 'whatlanguage'

class AnagramAntigram 
  attr_reader(:word)
  def initialize(word)
    @word = word
  end

  def is_english?
    english = false
    wl = WhatLanguage.new(:english)
    if wl.process_text(word) == {:english=>1}
      english = true
    end
    english
  end


end
