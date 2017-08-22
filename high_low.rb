
class HighLow
  attr_accessor :casino
  def initialize(casino, player)
    @casino = casino
    @deck = Deck.new
    puts "Welcome to High Low, #{player.name}!"
    puts "You have $#{player.wallet.amount} to bet with."
    puts "Type '1' to continue or '2' to exit."
    case gets.to_i
    when 1
      hilo_menu(player)
    when 2
      @casino.main_menu
    end
  end

def hilo_shuffle
  if @deck.cards.any?
    @deck.shuffle_cards
    puts "Cards shuffled!"
    hilo_menu
  else
    "There is no deck, generate a new one!"
    hilo_menu
  end
end

def hilo_pull_card(player)
  card = @deck.cards.sample.rank
  puts "Your card is >> #{card}!"
  case card
  when "2", "3", "4", "5", "6", "7", "8", "9", "10"
    puts "You lost $200!"
  when "J", "Q", "K"
    puts "You won $200!"
  when "A"
    puts "You won $400!"
  end
end

def hilo_reset_deck
  @deck = []
  puts "Deck Succesfully Cleared!"
  hilo_menu
end

def hilo_menu(player)
    puts "1) Shuffle Deck."
    puts "2) Pull random card and bet $100."
    puts "3) Clear Deck."
    puts "4) Exit."
    case gets.to_i
      when 1
        hilo_shuffle(player)
      when 2
        hilo_pull_card(player)
      when 3
        hilo_reset_deck
      when 4
        @casino.main_menu
      else
        "Invalid Entry, Try Again!"
     end
   end
 end
