

# NIGHTMARE FUEL, but I will keep it here for entertainment purposes, what was I even thinking creating this abomination
def caesar_cipher_ascii(string, shift_factor)
  string.chars.map do |char| 
    if ALPHABET.include?(char.upcase)
      offset = char == char.upcase ? 64 : 96
      max_index = char == char.upcase ? 90 : 122
    
      new_char_ascii = char.ord + shift_factor > max_index ? (char.ord + shift_factor) % max_index + offset : char.ord + shift_factor
      #new_char_ascii = ((char.ord + shift_factor) % max_index ) <= offset ? ((char.ord + shift_factor) % max_index ) + offset : ((char.ord + shift_factor) % max_index )

      new_char_ascii.chr
    else
      char
    end
  end.join('')
end

ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".chars

def caesar_cipher(string, shift_factor)
  string.chars.map do |char|
    if ALPHABET.include?(char.upcase)
      is_downcase = char == char.downcase

      index = ALPHABET.find_index(char.upcase)
      new_index = (index + shift_factor) % ALPHABET.length

      new_letter = is_downcase ? ALPHABET[new_index].downcase : ALPHABET[new_index]
      new_letter
    else
      char
    end
  end.join('')
end


puts caesar_cipher_ascii("What a string!", 5)
puts caesar_cipher("What a string!", 5)