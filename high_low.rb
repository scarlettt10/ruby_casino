require_relative "deck"


class HighLow
  def initialize(player)
    puts "Welcome to High Low #{player.name}"
    puts "You have #{player.wallet.amount} to bet with"
    menu
  end

  def menu
    puts "1) Generate Deck"
    puts "2) Shuffle Deck"
    puts "3) Pull random card"
    case gets.to_i
      when 1
        Deck.new
        puts "Deck Successfully Generated"
        menu
      when 2
        @cards.shuffle
        puts "Cards shuffled"
        menu
      when 3
        @cards.sample
      else
        "Invalid Entry, Try Again!"
      end
    end
  end
