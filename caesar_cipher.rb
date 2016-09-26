def caesar_cipher(str, fact)
  if fact > 26 || fact < -26
    puts "Invalid shift factor (should be between 26 and -26)"
  else
    if fact > 0
      str.each_char do |char|
        c = char
        if c[/[A-Za-z]/] != nil
          if c >= 'a'
            if c.ord + fact > 'z'.ord
              c = (c.ord - 'z'.ord - 1 + 'a'.ord + fact).chr
            else
              c = (c.ord + fact).chr
            end
          else
            if c.ord + fact > 'Z'.ord
              c = (c.ord - 'Z'.ord - 1 + 'A'.ord + fact).chr
            else
              c = (c.ord + fact).chr
            end
          end
        end
        print c
      end
    else
      str.each_char do |char|
        c = char
        if c[/[A-Za-z]/] != nil
          if c >= 'a'
            if c.ord + fact < 'a'.ord
              c = (c.ord + 'z'.ord + 1 - 'a'.ord + fact).chr
            else
              c = (c.ord + fact).chr
            end
          else
            if c.ord + fact < 'A'.ord
              c = (c.ord + 'Z'.ord + 1 - 'A'.ord + fact).chr
            else
              c = (c.ord + fact).chr
            end
          end
        end
        print c
      end
    end
  end
  puts ""
end
caesar_cipher("What a string!", 5)
caesar_cipher("What a string!", -5)