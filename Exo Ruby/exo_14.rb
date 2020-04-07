puts "Peux tu me donner un nombre"
print '>'
num = gets.chomp.to_i

num.times do|count|
  puts "#{num = num - 1}"
end

