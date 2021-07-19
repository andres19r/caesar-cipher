#!/usr/bin/env ruby

def caesar_cipher(string, shift_factor)
  array_of_bytes = string.bytes
  array_of_bytes.map! do |byte|
    if byte.between?(65,90)
      byte = (byte+shift_factor) % 90
      byte += 64 if byte < 65
    elsif byte.between?(97,122)
      byte = (byte+shift_factor) % 122
      byte += 96 if byte < 97
    else
      byte
    end
    byte.chr
  end
  array_of_bytes.join
end

puts caesar_cipher("What a string!", 5)
