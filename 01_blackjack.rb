def blackjack

$deck = []
cards = ['H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'HJ', 'HQ', 'HK', 'HA', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'DJ', 'DQ', 'DK', 'DA', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'SJ', 'SQ', 'SK', 'SA', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'CJ', 'CQ', 'CK', 'CA']

while cards.length > 0
	draw = cards[rand(cards.length)]
	cards.delete(draw)
	$deck.push draw
end

def deal count 
hand = []
while count > 0	
	card = $deck.pop
	hand.push card
	count = count -1
end
deal = hand
end


def cardName card
check = (card.split(//))
value = check.pop
suit = check.pop
valName = 'none'

	if suit == 'H'
		suit = 'Hearts'
	elsif suit == 'D'
		suit = 'Diamonds'
	elsif suit == 'C'
		suit = 'Clubs'
	else suit = 'Spades'
	end

	if value == 'A'
		valName = 'Ace'
	elsif value == 'J'
		valName = 'Jack'
	elsif value == 'Q'
		valName = 'Queen'
	elsif value == 'K'
		valName = 'King'
	else
		valName = value
	end

	cardName = "#{valName} of #{suit}"
end


def handValue handArr
ace = []
handVal = 0
valNum = 0
card = []

while handArr.length > 0
	card = handArr.pop
	check = (card.split(//))
	value = check.pop
	suit = check.pop

	if value == 'A' 
		ace.push card

	elsif value == 'J' || value == 'Q' || value == 'K'
		valNum = 10
	else
		valNum = value.to_i
	end
	handVal = handVal + valNum
end


#deal with ace
while ace.length > 0
	if (handVal + 11) > 21
		handVal = handVal + 1
	elsif (handVal + 11) <= 21
		handVal = handVal + 11
	else
	end
	ace.pop
end

handValue = handVal

end


def cycle hand
#puts "HAND: #{hand}"
handName = Marshal.load( Marshal.dump(hand) )
handTotal = Marshal.load( Marshal.dump(hand) )


#card names
while handName.length > 0
	card = handName.pop
	name = cardName card
	#puts "CARD: facedown"
	#puts "CARD: #{name}"
end
#hand points
total = handValue handTotal
end



def autoPlayer
hand = deal 2
dupeHand  = Marshal.load( Marshal.dump(hand) )
puts "DEAL: #{cardName dupeHand.pop}"
puts "DEAL: --"
total = cycle hand


#hits
while total < 17
	newCard = $deck.pop
	puts "HIT: #{cardName newCard}"
	hand.unshift newCard
	total = cycle hand
end
	puts "VALUE: #{total}"
autoPlayer = total
end



def livePlayer
hand = deal 2
dupeHand  = Marshal.load( Marshal.dump(hand) )
puts "DEAL: #{cardName dupeHand.pop}"
puts "DEAL: #{cardName dupeHand.pop}"

total = cycle hand

#hits
hitChoice = 'h'
while total < 22 && hitChoice == 'h'
	puts
	puts 'Do you want to hit [h] or stand [s]?'
	hitChoice = gets.chomp

	while hitChoice != 'h' && hitChoice != 's'
		puts '[h] for hit or [s] for stand'
		hitChoice = gets.chomp
	end

	if hitChoice == 'h'
		newCard = $deck.pop
		hand.unshift newCard
		total = cycle hand
		puts "VALUE: #{total}"

	else
		puts "Stands at #{total}."
	end
end

livePlayer = total
end

#----------program----------

#set player and house
puts 'Welcome to Blackjack!'
puts "How many players are here tonight?"
players = gets.chomp.to_i

while players < 1 || players > 8
	puts "Sorry, this table seats one to eight players."
	puts "How many will be playing?"
	players = gets.chomp.to_i
	end
	
puts "Great! We have #{players} players."

puts "What\'s your name, player?"
	playerName = gets.chomp.capitalize
puts "Nice to meet you, #{playerName}."
puts
puts "Here's the deal..."
sleep 1
puts


#show table
puts "----------Dealer shows:----------"
	dealer = Marshal.load( Marshal.dump(autoPlayer) )

puts
puts

while players > 0
	if players == 1
		puts "#----------{playerName}, you have:----------"
		live = livePlayer
		puts
		puts
	else	
		puts "----------Player #{players} shows:----------"
		autoPlayer
		puts
		puts
	end
	players = players - 1
end

if dealer > live && dealer < 21
	puts "Dealer wins."
elsif live > dealer && live < 21
	puts "You win, #{playerName}!"
elsif live > 21 && dealer > 21
	puts "Draw."
else
	puts "Draw."
end

end

#----------
again = 'y'

while again == 'y'
	blackjack

puts 'Do you want to play again? [y] or [no]'
again = gets.chomp
	while again != 'y' && again != 'n'
		puts '[y] for play again or [n] for quit'
		again = gets.chomp
	end
end

puts "Goodbye!"
