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