

def ask_first_name
  puts 'Quel est ton prénom ?'
  puts '>'
  first_name = gets.chomp
end

def say_hello(first_name)

  # mon code ici
  puts "Bonjour #{first_name}"
end

say_hello(ask_first_name)
