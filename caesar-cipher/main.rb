=begin
  Implement a Caesar cipher that takes in a string and the shift factor
  and then outputs the modified string using a right shift:
  caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"


  so in this example we have shifted a letter 5 steps ahead,,
  also since letters are wrapped from z to a 
  5 letters ahead of W is B.

=end


def caesar_cipher(string, shift)
  caesar_string = ""
    
    string.chars.map do |char|
      if char.ord.between?(65,90)
        num = char.ord + shift
        num -= 26 while num > 90
        num += 26 while num < 65
        caesar_string << num.chr
      elsif char.ord.between?(97,122)
        num = char.ord + shift
        num -= 26 while num > 122
        num += 26 while num < 97
        caesar_string << num.chr
      else
        caesar_string << char
      end
    end

  caesar_string
end