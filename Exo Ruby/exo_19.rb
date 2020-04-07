a = []
50.times do|count|
  a <<  "jean.dupont.#{count = count + 1}@email.fr"
end

pattern = /^[0-9]*[02468]$/

a.find { |e| /^[0-9]*[02468]$/ =~ e }

puts a[22]

