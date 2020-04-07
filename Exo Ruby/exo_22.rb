puts "Donne moi un chiffre entre 1 et 25 ? "
print '>'
n = gets.chomp.to_i

while n >= 1
      puts "* " * n
      n = n - 1
    end
#while n <= 25
  #puts ("* " * n).rjust(10)
  #n += 1
#end
