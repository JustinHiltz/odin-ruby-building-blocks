def caesar_cipher(text, shift_factor)
  alphabet = ("a".."z").to_a.join
  alphabet_big = ("A".."Z").to_a.join
  i = 0
  while i <= text.length
    if /[a-z]/.match(text[i])
      text[i] = alphabet[(alphabet.index(text[i])-shift_factor)].to_s
      i += 1
    elsif /[A-Z]/.match(text[i])
        text[i] = alphabet_big[(alphabet_big.index(text[i])-shift_factor)].to_s
        i += 1
      else
        text[i] = text[i].to_s
        i += 1
      end
    end
  puts text
end

caesar_cipher("Yarn of things from where?", 5)

# Taken from:
# https://github.com/Ixpata/caesars-cipher/blob/master/caesars_cipher.rb