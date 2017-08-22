require 'pry'
require 'colorize'
require 'sounder'

require_relative 'player'
require_relative 'high_low'
require_relative 'deck'

class Casino

	def initialize(player)
    @player = player
  end

  def main_menu
  	puts '  _   _   _   _   _   _   _     _   _     _   _   _  '.colorize(:yellow)
  	puts ' / \ / \ / \ / \ / \ / \ / \   / \ / \   / \ / \ / \ '.colorize(:yellow)
 		puts '( W | E | L | C | O | M | E ) ( T | O ) ( T | H | E )'.colorize(:yellow)
 		puts ' \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/   \_/ \_/ \_/ '.colorize(:yellow)
		puts "
     ##### /##                 /                               # ###
  ######  / ##               #/                              /  /###  /                      #
 /#   /  /  ##               ##                             /  /  ###/                      ###
/    /  /   ##               ##                            /  ##   ##                        #
    /  /    /                ##                           /  ###
   ## ##   /   ##   ####     ## /###   ##   ####         ##   ##          /###      /###   ###   ###  /###     /###
   ## ##  /     ##    ###  / ##/ ###  / ##    ###  /     ##   ##         / ###  /  / #### / ###   ###/ #### / / ###  /
   ## ###/      ##     ###/  ##   ###/  ##     ###/      ##   ##        /   ###/  ##  ###/   ##    ##   ###/ /   ###/
   ## ##  ###   ##      ##   ##    ##   ##      ##       ##   ##       ##    ##  ####        ##    ##    ## ##    ##
   ## ##    ##  ##      ##   ##    ##   ##      ##       ##   ##       ##    ##    ###       ##    ##    ## ##    ##
   #  ##    ##  ##      ##   ##    ##   ##      ##        ##  ##       ##    ##      ###     ##    ##    ## ##    ##
      /     ##  ##      ##   ##    ##   ##      ##         ## #      / ##    ##        ###   ##    ##    ## ##    ##
  /##/      ### ##      /#   ##    /#   ##      ##          ###     /  ##    /#   /###  ##   ##    ##    ## ##    ##
 /  ####    ##   ######/ ##   ####/      #########           ######/    ####/ ## / #### /    ### / ###   ### ######
/    ##     #     #####   ##   ###         #### ###            ###       ###   ##   ###/      ##/   ###   ### ####
#                                                ###
 ##                                       #####   ###
                                        /#######  /#
                                       /      ###/                                                                     ".colorize(:red)

  highLow = HighLow.new(self, @player)

  while true do

    puts "1) Play High Low"
    puts "2) Play Slots"
    puts "3) Quit"
    case gets.to_i
      when 1
        highLow.run()
      when 2
      	Slots.new(self, @player)
      when 3
        puts "
     _/_/_/    _/_/    _/      _/  _/_/_/_/     _/_/_/      _/_/      _/_/_/  _/    _/       _/_/_/    _/_/      _/_/    _/      _/
  _/        _/    _/  _/_/  _/_/  _/           _/    _/  _/    _/  _/        _/  _/       _/        _/    _/  _/    _/  _/_/    _/
 _/        _/    _/  _/  _/  _/  _/_/_/       _/_/_/    _/_/_/_/  _/        _/_/           _/_/    _/    _/  _/    _/  _/  _/  _/
_/        _/    _/  _/      _/  _/           _/    _/  _/    _/  _/        _/  _/             _/  _/    _/  _/    _/  _/    _/_/
 _/_/_/    _/_/    _/      _/  _/_/_/_/     _/_/_/    _/    _/    _/_/_/  _/    _/     _/_/_/      _/_/      _/_/    _/      _/

                                                                                                                                      ".colorize(:cyan)
        break
      else
        puts "Invalid Choice! Try again!".colorize(:red)
    end
  end
end
end

player = Player.new()
casino = Casino.new(player)
casino.main_menu()
