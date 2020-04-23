class Game

  attr_accessor :players, :board

  def initialize
    @players = []
    @board = Board.new
  end

  def welcome
    puts "|⭐️//////////////////////////////////////////////////////////////⭐️|"
    puts "|               ⭕️⭕️⭕️  Bienvenue sur  ❌❌❌                      |"
    puts "|                   ⚡️☠️  Mort Back ! ☠️⚡️                           |"
    puts "|        Le but du jeu est d'aligner 3 symboles ‼️                  |"
    puts "|⭐️//////////////////////////////////////////////////////////////⭐️|"
  end


  # Methode qui demande les 2 noms 2 joueurs
  def ask_name
    puts ""


    puts "Salut Cowboy 🤠 , Quel est le Nom du Joueur 1 🙆🏻‍♂️ ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "⭕️")
    sleep (2)

    puts "OK , Maintenant Quel est le Nom du Joueur 2 🙅🏻‍♂️?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "❌")
  end

  # Méthode qui fait jouer chaque joueur un par un
  def select_player
    while @board.game_state_variable == false
      @players.each { |item| choose_case(item) }
    end
  end

  # le User veut jouer and retouner un symbol dans la case selectionnée
  def choose_case (player)
    # si le joueur gagne
    if @board.game_state_variable == true
      puts "Bravo 🤠 #{player.name} 🍾 !! Tu as gagné 🏆 !!"
    # si le jeu est match nul
    elsif @board.game_nil_variable == true
      puts "la partie est finie, partie nul 🥂!!"
    # Quand le Jeu run
    else
      puts "#{player.name} avec le symbole '#{player.symbol}' à toi de jouer ! Saisie la case que tu souhaites . Exemple : a1, b2, c3..."
      print "> "
      @board.write_on_case(gets.chomp.to_s, player.symbol)
      @board.show_board
      @board.game_state
    end
  end

  # Demande au user de rejouer ou quitter

  def ask_new_game
    puts "Tape rejouer si tu veux 'rejouer' au Morpion ! Ou n'importe quel charactère pour sortir "
    print "> "
    new_game = gets.chomp.to_s

    if new_game == "rejouer"
      # Put back the array vide sans symbol
      @board.array_cases.map! { |item| item.content = " " }
      # call the self perform to play again
      self.perform
    else
      puts 'OK , reviens quand tu veux ... Hasta la vista baby 🤠'
    end
  end

  def perform
    welcome
    sleep (2)
    ask_name
    puts "Le nom du joueur 1 est #{@players[0].name} et son symbole est #{@players[0].symbol}"
    puts "Le nom du joueur 2 est #{@players[1].name} et son symbole est #{@players[1].symbol}"
    # Montre un plateau vide avant de jouer
    @board.show_board
    select_player
    sleep(2)
    ask_new_game
  end
end
