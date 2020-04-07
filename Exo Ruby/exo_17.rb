puts "Quelle est ton année de naissance ? "
print '>'
num = gets.chomp.to_i
age = 2020-(num)



age.times do|count|
  if num == count
    puts " Il y a n ans, tu avais la moitié de l'âge que tu as aujourd'hui"
  else
  puts "En #{num = num + 1} tu avais #{count} ans"
end
