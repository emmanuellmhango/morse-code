$morse_codes = {
  '.-' => 'A',
  '-.' => 'N',
  '-----' => '0',
  '-...' => 'B',
  '---' => 'O',
  '.----' => '1',
  '-.-.' => 'C',
  '.--.' => 'P',
  '..---' => '2',
  '-..' => 'D',
  '--.-' => 'Q',
  '...--' => '3',
  '.' => 'E',
  '.-.' => 'R',
  '....-' => '4',
  '..-.' => 'F',
  '...' => 'S',
  '.....' => '5',
  '--.' => 'G',
  '-' => 'T',
  '-....' => '6',
  '....' => 'H',
  '..-' => 'U',
  '--...' => '7',
  '..' => 'I',
  '...-' => 'V',
  '---..' => '8',
  '.---' => 'J',
  '.--' => 'W',
  '----.' => '9',
  '-.-' => 'K',
  '-..-' => 'X',
  '.-..' => 'L',
  '-.--' => 'Y',
  '--' => 'M',
  '--..' => 'Z'
}

def decode_char(str)
  $morse_codes[str]
end

def decode_word(word)
  decoded_word = ''
  words_arr = word.split
  words_arr.each { |str| decoded_word <<= decode_char(str) }
  decoded_word
end

def decode_message(message)
  decoded_str = ''
  words = message.split('   ')
  words.each { |word| decoded_str <<= decode_word(word) << ' ' }
  decoded_str
end

word = decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts word
