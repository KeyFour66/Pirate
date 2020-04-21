
require "pry"

class Player

  attr_accessor :name, :life_points

  #on initialise les variables pour les utiliser dans les méthodes ci dessous
  def initialize(name)
    @name = name
    @life_points = 10
  end

  # Permet de visualiser le nom de points de chaque player
  def show_state
    puts "#{@name} a #{life_points} points de vie"
  end

  # Methode qui permet de soustraire le nombre de point de dommage au total des points restants
  def gets_damage(damage_received)
    @life_points = @life_points - damage_received
    #Boucle if pour renvoyer un message si le player est mort
    if @life_points <= 0
      return "Le joueur #{@name} a été tué !"
    end
  end
  # Methode d'attaque d'un player sur un autre
  def attacks (player)

    puts "#{@name} attaque #{player.name} !"
    # La variable damage_received stocke le résultat du chiffre aléatoire reçu de la méthode compute_damage
    damage_received = compute_damage
    # on inflige au player concerné les dommages
    player.gets_damage(damage_received)
    puts "il lui inflige #{damage_received} points de dommages"

  end
  # méthode qui défini aléatoirement un chiffre entre 1 et 6
  def compute_damage
    return rand(1..6)
  end

end

# class HumanPlayer < Player

#   attr_accessor :weapon_level

#   def initialize(name, life_points, weapon_level)
#     @weapon_level = 1
#     @life_points = 100
#     super(name)
#   end

#   def show_state
#     puts "#{@name} a #{life_points} points de vie et une arme de niveau #{weapon_level}"
#   end

# # binding.pry
# # puts "end of file"

#   # def compute_damage
#   #   return rand(1..6) * @weapon_level
#   # end

#   # def search_weapon(weapon)
#   #   weapon = rand(1..6)
#   #   return "Tu as trouvé une arme de niveau #{weapon}"
#   #   if weapon > @weapon_level
#   #     @weapon_level = weapon
#   #     puts "Elle est meilleure que mon arme actuelle, je la garde !"
#   #   else
#   #     puts "Elle n'est pas mieux que mon arme actuelle"
#   # end

#   # def search_health_pack(health_pack)
#   #   health_pack = rand(1..6)
#   #   if health_pack == 1
#   #     puts "Tu n'as rien trouvé .."
#   #   elsif (health_pack > 2 && health_pack < 6)
#   #       if @life_points > 50
#   #         @life_points = 100
#   #       else
#   #         @life_points = @life_points + 50
#   #       end
#   #     puts "Bravo, tu as trouvé un pack de +50 points de vie!"
#   #   else
#   #       if @life_points > 20
#   #         @life_points = 100
#   #       else
#   #         @life_points = @life_points + 50
#   #       end
#   #     puts "Bravo, tu as trouvé un pack de +80 points de vie!"
#   #   end
