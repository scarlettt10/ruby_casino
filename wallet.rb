class Wallet
	attr_accessor :amount, :total
	def initialize(amount)
		@amount = amount
		@total = @amount
	end

	def win(winnings)
		# if win add  win, or win * 2 to @amount
 		@total = @amount + winnings.to_f
	end

	def lose(losings)
		#if lose subtract lose from amount
		@total = @amount - losings.to_f
	end

	# TODO: should have other methods to add or sub from wallet
end
