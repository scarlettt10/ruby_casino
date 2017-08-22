require_relative 'wallet'
# require_relative 'casino'

class Player
	attr_accessor :name, :age, :wallet, :casino
	def initialize
		@casino = Casino
		puts "Add New Player:"
		puts "What's your name?"
		@name = gets.strip
		puts "What's your age #{@name}?"
		@age = gets.to_i
		# if age < 21
		# 	puts "You are not authorized to play this game."
		# 	@casino.main_menu
		# end
		puts "How much money are you playing with #{@name}?"
		@wallet = Wallet.new(gets.to_f)
	end
end



