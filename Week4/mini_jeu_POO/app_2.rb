require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


def welcome
  puts "|*//////////////////////////////////////////////////////////////*|"
  puts "|*                       Bienvenue sur                          *|"
  puts "|*                'ILS VEULENT TOUS MA POO!'                    *|"
  puts "|*      Le but du jeu est d'être le dernier survivant !         *| "
  puts "|*//////////////////////////////////////////////////////////////*"
end
welcome

# Définir le nom de ton personnage
puts " "
print "Quel est ton nom ?"
print "> "
name_to_save = gets.chomp
player1 = HumanPlayer.new("#{name_to_save}")
puts "Bienvenue dans l'arène , le ring , la cage ! #{name_to_save} !"

# here your ennemis !
villains = []
villain1 = Player.new("Josiane")
villain2 = Player.new("José")
villains << villain1
villains << villain2
sleep(2)
puts "Attention maintenant place à José et Josianne !!"
sleep(2)
# La boucle while lance la phase de combat
while (villain1.life_points > 0 || villain2.life_points > 0) && player1.life_points > 0
  puts " "
  puts "Voici l'état de ton joueur :"
  print player1.show_state
  sleep (3)
  puts " "
  # laisse au joueur le choix de l'action à effectuer à chacun de ses tours
  puts "Quelle action veux-tu effectuer ?"
  puts "a - chercher une meilleure arme"
  puts "s - chercher à se soigner"
  puts " "
  puts "Attaquer un joueur en vue :"
  # la condition ici sert à afficher dans le menu l'ennemi qui est encore en vie
  if villain1.life_points > 0
    print "0 - "
    print "#{villain1.show_state}"
  end
  if villain2.life_points > 0
    print "1 - "
    print"#{villain2.show_state}"
  end
  print ">"
  action = gets.chomp
  sleep(3)
  # selon l'action choisie par le joueur (cf. le fichier player : arme, soin, attaque ennemi 1 ou 2)
  if action == "a"
    player1.search_weapon
  elsif action == "s"
    player1.search_health_pack
  elsif action == "0"
    player1.attacks(villain1)
  elsif action == "1"
    player1.attacks(villain2)

  end
sleep(3)
puts " "
# les ennemis attaquent à leur tour
  if villain1.life_points > 0 || villain2.life_points > 0
    puts "Attention #{@name_to_save} on t'attaque !"
  end
sleep(1)
  villains.each do |a|
    if a.life_points > 0
      a.attacks(player1)
      sleep(4)
    end
  end
end
# Le joueur ou les ennemis sont K.O. ; on sort de la boucle while
puts "La partie est finie"
if player1.life_points > 0
  puts " Tu as killé José et Josianne !"
else
  puts "Game over, mouaaaaaaahaaaahaa !"
end

binding.pry
