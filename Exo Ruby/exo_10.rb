puts "Quelle est ton année de naissance ? "
print '>'
user_age = gets.chomp.to_i
newuser_age = 2017 - user_age
puts " tu as : #{newuser_age} ans en 2017"
