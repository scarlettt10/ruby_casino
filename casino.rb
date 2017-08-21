require 'pry'
require 'colorize'

require_relative 'player'
require_relative 'high_low'

class Casino
	attr_accessor :player

	def initialize
		puts "Welcome to the RUBY CASINO"
		puts ""
    @player = Player.new
    menu
		
  end
  
  def menu
    puts "1) Play HighLow"
    puts "2) Quit"
    case gets.to_i
      when 1
        HighLow.new(@player)
      	HighLow
      when 2
        puts "Thanks for playing"
        puts "?$$'''$N        $$$''^#$            $              d$*'''$d       '$$F  '$r   
'$$   $$k       9$$    '           d$N            $$F     *        $$>    *   
'$$   $$F       9$$  :             $$$r          $$$               $$>  f     
'$$   $$        9$$.e$            . $$$          $$$               $$L.$F     
'$$**#'         9$$ ^$            f  $$L         $$$               $$> ^F     
'$$             9$$  '           .   '$$         $$$               $$>  F     
'$$             9$$     '        P''''$$N        '$$.     J        $$>    x   
{$$             9$$   .$        '     '$$         ^$$.   d$        $$r   dF   
''''           `''''''''       '''    ''''           ''''         ''''''''".colorize(:cyan)
        exit
      else 
        puts "Invalid Choice! Try again!"
        menu
    end
  	menu
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
