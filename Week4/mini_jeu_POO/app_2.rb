require 'bundler'
Bundler.require

#permet d'executer les fichiers game et player depuis app.rb
require_relative 'lib/game'
require_relative 'lib/player'


binding.pry
puts "end of file"
