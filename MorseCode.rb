def decoding_morse_code(morse_code)
  morse_code_mapping = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9', '/' => ' '
  }

  text = morse_code.split(' ').map { |code| morse_code_mapping[code] || code }.join('')
  return text
end

bottle_message = ".-  -... --- -..-  ..-. ..- .-.. .-..  --- ..-.  .-. ..- -... .. . ..."
message = decoding_morse_code(bottle_message)
puts "The message of Bottle is #{message}"
