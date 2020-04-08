
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
print '>'
n = gets.chomp.to_i

def half_pyramid(height)
  height.times {|n|
    print ' ' * (height - n)
    puts '#' * (n + 1)
  }
end

def full_pyramid(height)
  height.times {|n|
    print ' ' * (height - n)
    puts '#' * (2 * n + 1)
  }
end

def wtf_pyramid(height)
  height.times {|n|
    print ' ' * (height - n)
    puts '#' * ( 2 * n + 1)
  }
end



wtf_pyramid (n)
