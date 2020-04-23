class Board

  attr_accessor :array_cases, :choose_case, :game_state_variable, :game_nil_variable

  def initialize
    # Initialise les 9 BoardCases
    @A1 = BoardCase.new("a1", " ")
    @A2 = BoardCase.new("a2", " ")
    @A3 = BoardCase.new("a3", " ")
    @B1 = BoardCase.new("b1", " ")
    @B2 = BoardCase.new("b2", " ")
    @B3 = BoardCase.new("b3", " ")
    @C1 = BoardCase.new("c1", " ")
    @C2 = BoardCase.new("c2", " ")
    @C3 = BoardCase.new("c3", " ")

    @game_state_variable = false

    @game_nil_variable = false

    @array_cases = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]

  end

  # Methode qui ecrit  le user symbol dans la case choisit par le current user
  def write_on_case (case_choose, player_symbol)
    @array_cases.map { |item| item.position == case_choose ? item.content = player_symbol  : item }
  end

  # la fontion verifie chaqUe possibilité de gain and rend  the game_state_variable à true si trouve
  def game_state

    if @A1.content == "⭕️" && @A2.content == "⭕️" && @A3.content == "⭕️" || @A1.content == "❌" && @A2.content == "❌" && @A3.content == "❌"
     @game_state_variable = true
    end

    # On test la 2ème ligne
    if @B1.content == "⭕️" && @B2.content == "⭕️" && @B3.content == "⭕️" || @B1.content == "❌" && @B2.content == "❌" && @B3.content == "❌"
     @game_state_variable = true
    end

    # On test la 3eme ligne
    if @C1.content == "⭕️" && @C2.content == "⭕️" && @C3.content == "⭕️" || @C1.content == "❌" && @C2.content == "❌" && @C3.content == "❌"
    @game_state_variable = true
    end

    # On test la première colonne
    if @A1.content == "⭕️" && @B1.content == "⭕️" && @C1.content == "⭕️" || @A1.content == "❌" && @B1.content == "❌" && @C1.content == "❌"
     @game_state_variable = true
    end

    # On test le deuxième colone
    if @A2.content == "⭕️" && @B2.content == "⭕️" && @C2.content == "⭕️" || @A2.content == "❌" && @B2.content == "❌" && @C2.content == "❌"
     @game_state_variable = true
    end

    # On test la 3eme colone
    if @A3.content == "⭕️" && @B3.content == "⭕️" && @C3.content == "⭕️" || @A3.content == "❌" && @B3.content == "❌" && @C3.content == "❌"
     @game_state_variable = true
    end

    # On test la diagonale gauche
    if @A1.content == "⭕️" && @B2.content == "⭕️" && @C3.content == "⭕️" || @A1.content == "❌" && @B2.content == "❌" && @C3.content == "❌"
     @game_state_variable = true
    end

    # On test la diagonale droite
    if @A3.content == "⭕️" && @B2.content == "⭕️" && @C1.content == "⭕️" || @A3.content == "x" && @B2.content == "x" && @C1.content == "x"
     @game_state_variable = true
    end

  end

  # Methode qui vérifie si le board est plein de  "x" and "o" qui stop le game quand null game

  def game_nil
    @array_cases.each { |item| item.content == /[:SPACE:]/ ? @game_nil_variable = true : @game_nil_variable = false }
  end

  # c'est la view du jeu . voir pour la mettre normalement dans une class view
  def show_board
    # Montre les cases vides a l' initialisation and mets  é chaque tour du joueur
    puts "   1    2   3 "
    puts " a #{@A1.content} | #{@A2.content} | #{@A3.content}"
    puts "   ---------"
    puts " b #{@B1.content} | #{@B2.content} | #{@B3.content}"
    puts "   ---------"
    puts " c #{@C1.content} | #{@C2.content} | #{@C3.content}"

  end
end
