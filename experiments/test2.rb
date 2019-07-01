require 'rtesseract'
require 'byebug'

text = ""

image = RTesseract.new('../assets/01.png', lang: "deu")
text = image.to_s # Getting the value

byebug
puts text


words = RTesseract::Box.new('../assets/01.png', lang: 'deu').words
pp words
