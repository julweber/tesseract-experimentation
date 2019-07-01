require 'tesseract'
require 'byebug'

e = Tesseract::Engine.new {|e|
  e.language  = :de
  e.blacklist = '|'
}

text = e.text_for('../assets/01.png').strip
beybug
puts text
