require 'whatlanguage'

class Anagram 
  attr_reader(:word)
  def initialize(word)
    @word = word
  end

  def is_english
    wl = WhatLanguage.new(:english)
    wl.process_text(word)
  end
end
