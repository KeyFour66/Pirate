require 'bundler'
Bundler.require

#permet d'executer les fichiers game et player depuis app.rb
require_relative 'lib/game'
require_relative 'lib/player'

#Je créé mes 2 joueurs
player1 = Player.new("Josy")
player2 = Player.new("José")

#texte de bienvenue
puts "\n================================================= \n"
puts "\nBIENVENUE à la final de nos champions en titre !\n"
puts "\n================================================= \n\n"

puts "A ma droite #{player1.name}"
puts "A ma gauche #{player2.name}\n\n"

# Permet de visualiser les points de chaque player
puts "Voici l'état de nos champions :\n\n"
print player1.show_state
puts player2.show_state

# On créé une boucle while : tant que les points des 2 players
# sont supérieurs à 0, on continue la boucle

while (player1.life_points > 0 && player2.life_points > 0)

puts "Une phase d'attaque !!\n\n"
print player1.attacks(player2) #le player1 attaque le player2
puts player2.attacks(player1) #le player2 attaque le player1


puts "Voici l'état de nos champions :\n\n"
print player1.show_state #On visualise les points du player1 après l'attaque
puts player2.show_state #On visualise les points du player2 après l'attaque

end

#permet de tester avec pry
# binding.pry
# puts "end of file"
