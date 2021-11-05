def decode_char(char)
  alphabets = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...',
    'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
  }
  character = ' '
  alphabets.each do |key, value|
    character = key.to_s if char == value
  end
  character
end

def decode_word(word)
  a = ''
  char_array = word.split
  char_array.each do |char|
    a += decode_char(char)
  end
  a
end

def decode(value)
  sentence = ''
  words = value.split('   ')
  words.each do |word|
    sentence += "#{decode_word(word)} "
  end
  puts sentence
end

decode('-- -.--   -. .- -- .')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
