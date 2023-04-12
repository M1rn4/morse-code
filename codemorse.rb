def decode_char(morse_code)
  morse_dict = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
  }
  
  morse_dict[morse_code].upcase
end

def decode_word(morse_word)
  chars = morse_word.split(" ")
  decoded_word = ""
  chars.each do |char|
    decoded_word += decode_char(char)
  end
  
  decoded_word
end

def decode(morse_message)
  words = morse_message.split("  ")
  decode_message = ""
  words.each do |word|
    decode_message += decode_word(word) + " "
  end
  decode_message.strip
end