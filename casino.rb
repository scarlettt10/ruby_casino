require 'pry'
require 'colorize'
require 'sounder'

require_relative 'player'
require_relative 'high_low'
require_relative 'deck'

class Casino
	attr_accessor :player

	def initialize

    @player_1 = Player.new
    main_menu
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
    puts "1) Play High Low"
    puts "2) Play Slots"
    puts "3) Add Player 2?"
    puts "4) List player names"
    puts "5) Quit"
    case gets.to_i
      when 1
        HighLow.new(@player)
      when 2
      	Slots.new(@player)
      when 3
    @player_2 = Player.new
      	main_menu
      when 4
      	puts "#{@player_1.name}"
      	puts "#{@player_2.name}"
      when 5
        puts "                                                                                                                                      
     _/_/_/    _/_/    _/      _/  _/_/_/_/     _/_/_/      _/_/      _/_/_/  _/    _/       _/_/_/    _/_/      _/_/    _/      _/   
  _/        _/    _/  _/_/  _/_/  _/           _/    _/  _/    _/  _/        _/  _/       _/        _/    _/  _/    _/  _/_/    _/    
 _/        _/    _/  _/  _/  _/  _/_/_/       _/_/_/    _/_/_/_/  _/        _/_/           _/_/    _/    _/  _/    _/  _/  _/  _/     
_/        _/    _/  _/      _/  _/           _/    _/  _/    _/  _/        _/  _/             _/  _/    _/  _/    _/  _/    _/_/      
 _/_/_/    _/_/    _/      _/  _/_/_/_/     _/_/_/    _/    _/    _/_/_/  _/    _/     _/_/_/      _/_/      _/_/    _/      _/       
                                                                                                                                      
                                                                                                                                      ".colorize(:cyan)
        exit
      else 
        puts "Invalid Choice! Try again!".colorize(:red)
        main_menu
    end
  	main_menu
  end
end

Casino.new


=begin
#teacher code from slack

require 'pry'
require_relative 'player'
require_relative 'high_low'

class Casino
  attr_accessor :player

  def initialize
    puts 'Welcome To The Ruby Casino'
    @player = Player.new
    menu
  end

  def menu
    puts "1) Play HighLow"
    puts "2) Quit"
    case gets.to_i
      when 1
        HighLow.new(@player)
      when 2
        puts 'Thanks for playing'
        exit
      else
        puts 'Invalid Choice! Try Again!'
        menu
    end
    menu
  end
end

Casino.new

=end
