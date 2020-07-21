class Player 
  attr_accessor :name 
  attr_accessor :life_points

  def  initialize(name_to_update) 
    @name = name_to_update #définition du nom  des joueurs
    @life_points = 10 #nombre de vie identitique pour tous les jours
  end


  def show_state #affichage de l'état d'un joueur
    puts "#{@name} a #{@life_points} points de vie" 
  end

  def gets_damage(life_points_lost)
    @life_points = @life_points - life_points_lost
    if @life_points <= 0
      puts "le joueur #{@name} a été tué !"
    end
  end
  
  def attacks(player)
    puts "#{@name} attaque #{@name}"
    life_points_lost = compute_damage
    puts  "il lui inflige #{life_points_lost} points de dommages"
    gets_damage(life_points_lost)
  end 

  def compute_damage
    return rand(1..6)
  end

end


class HumanPlayer < Player
  attr_accessor :weapon_level

  def  initialize(name_to_update) 
    @name = name_to_update #définition du nom  des HumanPlayers
    @life_points = 100
    @weapon_level = 1
  end

  def show_state #affichage de l'état d'un HumanPlayer
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{weapon_level}" 
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    @new_weapon_level = rand(1..6)
    puts "tu as trouvé une arme de niveau #{@new_weapon_level}"
    if new_weapon_level > @weapon_level #choix de l'arme
      @weapon_level = new_weapon_level
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
  end

  def search_health_pack
    health_pack =  rand(1..6)
    if health_pack = 1
      puts  "Tu n'as rien trouvé... "
    elsif health_pack(2..6)
      @life_points = life_points + 50
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
    else 
      @life_points = life_points + 80
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
  end
end