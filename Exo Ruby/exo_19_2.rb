email = []

for i in 0...50
  email << "jean.dupont.0#{i+1}@email.fr"
end

for i in 0..50
  if i % 2 == 0
    puts email[i+1]
  end
end