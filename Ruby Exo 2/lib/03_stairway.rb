puts 'Bienvenue au 6éme sans ascenseur ! '

score = rand(1..6)
puts score
stair = 0
#
case score

when 5
puts 'Bingo , tu avances 1 marche !'
stair = stair +1

when 6
puts 'Bingo , tu avances 1 marche !'
stair = stair +1

when 1
  stair = stair - 1
  puts 'Dommage , tu descends 1 marche !'

else
  puts "Un coup dans l'eau !"
end



