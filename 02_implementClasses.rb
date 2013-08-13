class Card
	attr_accessor :suit, :value

	def intialize(suit, value)
		@suit = suit
		@value = value
	end

	def value
	end
end

class Deck
	attr_accessor :cards

	def initialize(cards)
		@cards = ['H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'HJ', 'HQ', 'HK', 'HA', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'DJ', 'DQ', 'DK', 'DA', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'SJ', 'SQ', 'SK', 'SA', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'CJ', 'CQ', 'CK', 'CA']
	end

	def shuffle
		@cards.shuffle!
	end

	def hit
	end

end


class Player
	attr_accessor :player, :auto

	def initialize(player, auto)
		@player = player
		@auto = auto
	end

end

class Dealer
	attr_accessor :dealer

	def initialize(dealer)
		@dealer = dealer

end

#Engine

class Blackjack
	def initialize
		@player = Player.new
		@deck = Deck.new
		@dealer = Dealer.new
	end
	
	def deal_cards
		@deck.cards
	end


	def run
	deal_cards
	see table
	players_go
	dealerer_goes
	who_won?
	play_again?
end
end

end
