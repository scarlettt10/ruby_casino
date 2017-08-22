class Wallet
	attr_accessor :amount, :high_low
	def initialize(amount)
		@amount = amount
	end

	def win(winnings)
		# if win add  win, or win * 2 to @amount
		# binding.pry
		puts "adding money to wallet"
 		@amount + winnings.to_f
		binding.pry
	end

	# def lose
	# 	#if lose subtract lose from amount
	# 	@amount << (&: -= )
	# end

	# TODO: should have other methods to add or sub from wallet
end
