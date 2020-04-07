puts "Quelle est ton année de naissance ? "
print '>'
num = gets.chomp.to_i
age = 2020-num
age.times do|count|
  puts "En #{num = num + 1} tu avais #{count} ans"
end
