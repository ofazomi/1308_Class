require 'pry'

def say(msg)
  puts "=> #{msg}"
end

say 'Number 1?'
	num1 = gets.chomp

say 'Number 2?'
	num2 = gets.chomp

	#binding.pry to debug,  ctrlD to continue

#do while loop
begin
say 'What now? 1-add  2-sub 3-mult 4-divide'
operator = gets.chomp
end while !['1','2','3', '4'].include?(operator)

if operator == '1'
	result = num1.to_i + num2.to_i
elsif operator == '2'
	result = num1.to_i - num2.to_i
elsif operator == '3'
	result = num1.to_i * num2.to_i
elsif operator == '4'
	result = num1.to_f / num2.to_f
end

say "Result is: #{result}."

#loop will go back to start

#gems are code libraries
