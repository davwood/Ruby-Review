require 'open-uri'
# keep only the elements that start with an a
def select_elements_starting_with_a(array)
	array.select {|x| x =~ /\A[Aa]/ }
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
	array.select {|x| x =~ /\A[AaEeIiOoUu]/ }
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
	array.select {|x| x != nil }
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
	array.select {|x| x != nil && x != false }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
	array.map {|x| x.reverse }
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice, 
def every_possible_pairing_of_students(array)
	newarray = []
	array.map do |student|
		array.each {|x| newarray.push([student,x]) if student != x}
	end
	output = newarray.map {|pair| pair.sort}.sort_by {|pair| [pair.first, pair.last] }
	output.uniq
end

# discard the first 3 elements of an array, 
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
	alength = array.length
	array.slice(3..alength)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
	array.unshift(element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
	array.sort_by {|word| word[-1,1]}
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
	slength = string.length
	string.slice(0..(slength / 2.0).round-1)
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
	return number if number < 0
	return number * -1
end

# turn an array of numbers into two arrays of numbers, one an array of 
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
	array.partition {|item| item.even? }
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
	palindromes = array.select do |word|
		word == word.reverse
	end
	palindromes.length
end

# return the shortest word in an array
def shortest_word_in_array(array)
	array.inject do |memo,word|
		memo.length > word.length ? word : memo
	end
end

# return the shortest word in an array
def longest_word_in_array(array)
	array.inject do |memo,word|
		memo.length > word.length ? memo : word
	end
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
	array.inject do |sum,n|
		sum + n
	end
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
	array + array
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
	symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 33
def average_of_array(array)
	(array.inject {|sum,n| sum + n} / array.length.to_f).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
	array.take_while {|element| element <= 5 } 
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
	Hash[*array]
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
	letters = array.map {|x| x.split(//)}
	letters.flatten.sort	
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
	hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
	(hash.values + hash.keys).inject {|sum,n| sum + n}
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
	string.gsub(/[A-Z]/,'')
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
	float.ceil
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
	float.floor
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
	date.strftime("%d/%m/%Y")
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
	email.scan(/@(.*?)\.com/m).flatten.pop
end

# capitalize the first letter in each word of a string, 
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
	word_array = string.split(' ')
	capitalized_words = word_array.map do 
		|word| 
		if word != "a" && word != "and" && word != "the" 
			word.capitalize
		else 
			word 
		end
	end
	capitalized_words[0].capitalize!
	capitalized_words.join(" ")
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
	return false if string.match(/[$&+,:;=?@#|]/).nil?
	true
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
	range.max
end

# should return true for a 3 dot range like 1...20, false for a 
# normal 2 dot range
def is_a_3_dot_range?(range)
	beginning = range.begin
	ending = range.end
	
	(ending - beginning) == range.to_a.length
end

# get the square root of a number
def square_root_of(number)
	Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
	(`wc -w < #{file_path}`).chop.lstrip.to_i
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
	str_method.call
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
	bank_holidays = [Time.new(2014, 1, 1),
	Time.new(2014, 4, 18),
	Time.new(2014, 4, 21),
	Time.new(2014, 5, 5),
	Time.new(2014, 5, 26),
	Time.new(2014, 8, 25),
	Time.new(2014, 12, 25),
	Time.new(2014, 12, 26)]

	bank_holidays.any? {|x| x == date}
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
	while birthday.wday != 5

		year = birthday.year 
		month = birthday.month
		day = birthday.day

		birthday = Time.new(year+1, month, day)
	end
	birthday.year
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
	words = `cat < #{file_path}`.split(' ')
	
	words_clean = words.map {|word| word.gsub(/[$&+,\.:;=?@#|]/,'')}

	grouped = words_clean.group_by do |word|
		word.length
	end

	grouped.each do |key,value|
		grouped[key] = value.length
	end
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
	a = 15
	multiples_of_15 = []
	while a < 101
		multiples_of_15.push(a)
		a += 15
	end

	b = 3
	multiples_of_3 = []
	while b < 101
		multiples_of_3.push(b)
		b += 3
	end

	c = 5
	multiples_of_5 = []
	while c < 101
		multiples_of_5.push(c)
		c += 5
	end

	i = 0
	fizzling_array = []
	while i <= 100
		if 
			!(multiples_of_15.select {|x| x == i}).empty?
			fizzling_array.push('Fizzbuzz')
		elsif 
			!(multiples_of_3.select {|x| x == i}).empty?
			fizzling_array.push('Fizz')
		elsif 
			!(multiples_of_5.select {|x| x == i}).empty?
			fizzling_array.push('Buzz')
		else
			fizzling_array.push(i)
		end

	i = i + 1
	end
	puts fizzling_array.inspect
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
	99.downto(0) do |number|
		if number == 1
			puts "1 bottle of beer on the wall, 1 bottle of beer."
			puts "Take one down and pass it around, no more bottles of beer on the wall."
		elsif number == 0
			puts "No more bottles of beer on the wall, no more bottles of beer."
			puts "Go to the store and buy some more, 99 bottles of beer on the wall."
		else
			puts "#{number} bottles of beer on the wall, #{number} bottles of beer"
			puts "Take one down and pass it around, #{number-1} bottles of beer on the wall."
		end
	end
end