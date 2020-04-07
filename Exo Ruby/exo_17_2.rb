puts "Quel est votre âge ?"
print "> "
user_age = gets.chomp.to_i

count =0
year = 2020 - user_age

while user_age >= 0
  if user_age == count
    puts "Il y a #{user_age} ans, en #{year}, tu avais la moitié de l'âge que tu as aujourd'hui !"
  else
    puts "Il y a #{user_age} ans, en #{year}, tu avais #{count} ans !"
  end
  user_age -= 1
  count += 1
  year += 1
end