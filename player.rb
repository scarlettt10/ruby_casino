require_relative 'wallet'

class Player
	attr_accessor :name, :age, :wallet
	def initialize
		puts "What's your name?"
		@name = gets.strip
		puts "What's your age #{@name}?"
		@age = gets.to_i
		puts "How much money are you playing with #{@name}?"
		@wallet = Wallet.new(gets.to_f)
	end
end



