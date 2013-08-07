#shuffle deck

$deck = []
cards = ['H2', 'H3', 'H4', 'H5', 'H6', 'H7', 'H8', 'H9', 'HJ', 'HQ', 'HK', 'HA', 'D2', 'D3', 'D4', 'D5', 'D6', 'D7', 'D8', 'D9', 'DJ', 'DQ', 'DK', 'DA', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'SJ', 'SQ', 'SK', 'SA', 'C2', 'C3', 'C4', 'C5', 'C6', 'C7', 'C8', 'C9', 'CJ', 'CQ', 'CK', 'CA']
$card = ''
$hand = []


while cards.length > 0
  draw = cards[rand(cards.length)]
	cards.delete(draw)
	$deck.push draw
end




#set player and house

puts 'Welcome to Blackjack!'
puts "How many players are here tonight?"
$players = gets.chomp.to_i

while $players < 1 || $players > 8
	puts "Sorry, this table seats one to 8 players."
	puts "How many will be playing?"
	$players = gets.chomp.to_i
	end
	
puts "Great! We have #{$players} players."


puts "What\'s your name, player?"
	playerName = gets.chomp.capitalize
puts "Nice to meet you, #{playerName}."
puts
puts "Here's the flop..."
sleep 1
puts


#deal cards

def deal count, player
while count > 0	
	card = $deck.pop
	$hand.push card

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

	if count == 2 && player == 1
		puts "#{valName} of #{suit}"
	else 
	end

	if count != 2
		puts "#{valName} of #{suit}"
	else 
	end

count = count -1
end
end



#figure out what cards are worth
def Value hand
ace = []
$handVal = 0
valNum = 0
card = []

while $hand.length > 0
	card = $hand.pop
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
	$handVal = $handVal + valNum
end


#deal with ace
if ace.length > 0 && ($handVal + 11) > 21
	$handVal = $handVal + 1
elsif ace.length > 0 && ($handVal + 11) < 21
	$handVal = $handVal + 11
else
end


#hit?
while $handVal < 21 && player == 1
	puts 'Do you want to hit [h] or stand [s]?'
	hitChoice = gets.chomp
end

while hitChoice != 'h' && hitChoice != 's'
	puts '[h] for hit or [s] for stand'
	hitChoie = gets.chomp
end

if hitChoice == 'h'
	deal 1, 1
	Value $hand
else end
end








#show table

puts "Dealer shows"
deal 2, 9
handDealer = $hand
puts


while $players > 0
	if $players == 1
		puts "#{playerName}, you have:"
		deal 2, $players
		puts

	else	
		puts "Player #{$players} shows:"
		deal 2, $players
		puts
	end
	$players = $players - 1
end


#










#define Hit







#ask players for hits
	#deal cards

#reports hits
