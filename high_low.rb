
class HighLow
  attr_accessor :casino
  def initialize(casino, player)
    @casino = casino
    @deck = Deck.new
    puts "Welcome to High Low, #{player.name}!"
    puts "You have $#{player.wallet.total} to bet with."
    puts "Type '1' to continue or '2' to exit."
    case gets.to_i
    when 1
      hilo_menu(player)
    when 2
      @casino.main_menu
    end
  end

def hilo_shuffle(player)
  if @deck.cards.any?
    @deck.shuffle_cards
    puts "Cards shuffled!"
    hilo_menu(player)
  else
    "There is no deck, generate a new one!"
    hilo_menu(player)
  end
end

def init_total(player)
  @total = player.wallet.total
  puts "Your total is: $#{@total}"
  hilo_menu(player)
end

def hilo_pull_card(player)
  card = @deck.cards.sample.rank
  puts "Your card is >> #{card}!"
  case card
  when "2", "3", "4", "5", "6", "7", "8", "9", "10"
    puts "You lost $200!"
    player.wallet.lose(200)
    init_total(player)
  when "J", "Q", "K"
    puts "You won $200!"
    player.wallet.win(200)
    init_total(player)
  when "A"
    puts "You won $400!"
    player.wallet.win(400)
    init_total(player)
  end
end

def hilo_reset_deck(player)
  @deck = []
  puts "Deck Succesfully Cleared!"
  @deck = Deck.new
  hilo_menu(player)
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
        hilo_reset_deck(player)
      when 4
        @casino.main_menu
      else
        "Invalid Entry, Try Again!"
     end
   end
 end
