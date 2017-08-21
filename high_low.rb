class HighLow
  def initialize(player)
    @deck = Deck.new
    puts "Welcome to High Low, #{player.name}!"
    puts "You have #{player.wallet.amount} to bet with."
    puts "Type 'play' to continue or 'quit' to exit."
    case gets.to_i
    when 1
      # @deck = Deck.new
      hilo_menu
    when 2
      main_menu
    else
      puts "Invalid Entry, Try Again!"
    end
  end

def hilo_generate
  @deck = Deck.new
  puts "Deck Successfully Generated"
  hilo_menu
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
  puts "Your card is >> #{@deck.cards.sample.rank}!"
  hilo_menu
end

def hilo_reset_deck
  @deck = []
  puts "Deck Succesfully Cleared!"
  hilo_menu
end

def hilo_menu
    puts "1) Generate Deck"
    puts "2) Shuffle Deck"
    puts "3) Pull random card"
    puts "4) Clear Deck"
    case gets.to_i
      when 1
        hilo_generate
      when 2
        hilo_shuffle
      when 3
        hilo_pull_card
      when 4
        hilo_reset_deck
      else
        "Invalid Entry, Try Again!"
     end
    main_menu
  end
end
