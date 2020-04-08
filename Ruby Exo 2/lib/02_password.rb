
def signup
puts "Définie ton mot de passe : "
print '>'
mp = gets.chomp
return mp
end

def login(mp)
  mplog =nil
until mp == mplog
  puts "saisie ton mot de passe "
  mplog = gets.chomp
end

return mplog
puts "Bienvenue dans Secret Zone !"
puts " quelques secrets : blablabla "
end



def perform
  login(signup)
end

perform
