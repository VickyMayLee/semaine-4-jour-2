require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts "..................................................."
puts "| Bienvenue sur 'ILS VEULENT TOUS MA POO' !       |"
puts "| Le but du jeu est d'être le dernier survivant ! |"
puts "..................................................."

def get_name
puts "Quel est votre prénom" #obtention du nom du HumanPlayer
name = gets.chomp
player = HumainPlayer.new(name)
end

def list_of_enemies
enemies = Array.new #définition des ennemies
enemies << Josiane = Player.new("Josiane")
enemies << José = Player.new("José")
return enemies
end


def fighting
  while player.life_points >0 && (Josiane.life_points > 0 || José.life_points >0)
    enemies.attacks(player2)
  if player.life_points <= 0 || enemies.life_points <=0
    puts "La partie est finie"
    break
  end
end