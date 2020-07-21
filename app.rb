require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


def introduction_of_players #présentation des joueurs
  player1 = Player.new("Josiane")
  player2 = Player.new("José")
  puts "Voici l'état de chaque joueur :"
  player1.show_state 
  player2.show_state
end




def fight
  player1 = Player.new("Josiane")
  player2 = Player.new("José")
  puts "Passons à la phase d'attaque :"
  player1.attacks(player2)
    while  player1.life_points > 0 && player2.life_points >0 
    player1.attacks(player2)
    if player1.life_points <= 0 || player2.life_points <=0
    break 
    end
  end
end

def perform
introduction_of_players
fight
end

perform

