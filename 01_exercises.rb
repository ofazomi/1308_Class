#----------EXERCISES----------
#http://tl-ruby.s3.amazonaws.com/drop1/assignments/RubyExercises.txt


#--01--

arr = [1,2,3,4,5,6,7,8,9,10]
arr.each do |a|
  puts a
end


#--02--
arr.each do |a|
	if a > 5
		puts a
	else
	end
end

arr.each { |a| puts a if a > 5 } #same as above, more concise


#--03--
odd_arr = arr.select do |a|
	a % 2 != 0
end


#--04--
arr.push(11)


#--05--
arr.pop
arr.push(3)


#--06--
arr.uniq!


#--07--
#array has slots, indexed
#hash is corresponding pairs, order unimportant


#--08--
#ruby 1.8 syntax
hash = {:a => 1, :b => 2}

#ruby 1.9 syntax
h = {a: 1, b: 2}


#--09--
#ruby 1.9 syntax
h = {a: 1, b: 2, c: 3, d: 4}

h[:b]


#--10--
#add item to hash
h[:e] = 5


#--13--
#remove all key values pairs less than 3.5
h.each do |key,value|
	if value <3.5
		h.delete(key)
	end
end

#alt way to code

	h.delete_if do |k,v|
		v < 3.5
	end

#alt way to code
h.delete_if { |k,v| v < 3.5 } #mutated the caller without bang


#--14--

#can hash value be array?
#yes
h = {a: [ 1, 2, 3], b: [car, donkey, motorcycle]}

#can you have an array of hashes?
#yes - can be used to export user information from a program
arr = [{a: 1, b:2},{a: 3, b:0}]


#--15--
#http://api.rubyonrails.org/
#like it because it gives example code
