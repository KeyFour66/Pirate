puts 'Bienvenue au 6éme sans ascenseur ! '
puts "lance les dés"
score = rand(1..6)
puts score
stair = 0
attempt = 1

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

until score >= 10
puts 'lance encore le dé' if stair =< 10
puts 'félicitation ,te voila enfin en haut sans ascenseur !'

puts "gagné en #{attempt} tentatives"
  attempt = attempt +1
  break if score >= 10

end
