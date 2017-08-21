
class HighLow
  def initialize(player)
    puts "Welcome to High Low, #{player.name}!"
    puts "You have #{player.wallet.amount} to bet with."
    puts "Type '1' to continue or '2' to exit."
    case gets.to_i
    when 1
      @deck = Deck.new
      hilo_menu
    when 2
      main_menu
    else
      puts "Invalid Entry, Try Again!"
    end
  end


def hilo_shuffle
  if @deck.cards.any?
    @deck.shuffle_cards
    puts "Cards shuffled"
    hilo_menu
  else
    "There is no deck, generate a new one!"
    hilo_menu
  end
end

def hilo_pull_card
  card = @deck.cards.sample.rank
  puts "Your card is >> #{card}!"
  if card[:i] > 6
    puts "You won $200!"
  hilo_menu
  else
    puts "You lost $200!"
    hilo_menu
  end
end

def hilo_reset_deck
  @deck = []
  puts "Deck Succesfully Cleared!"
  hilo_menu
end

def hilo_menu
    puts "1) Shuffle Deck."
    puts "2) Pull random card and bet $100."
    puts "3) Clear Deck."
    puts "4) Exit."
    case gets.to_i
      when 1
        hilo_shuffle
      when 2
        hilo_pull_card
      when 3
        hilo_reset_deck
      when 4
        main_menu
      else
        "Invalid Entry, Try Again!"
     end
  end
end
