puts "hello world!!"

x = 0

loop do 
	x += 1
	next if x % 2 == 0
	puts x 
	break if x >= 10
end 


print "first number:"
first = gets.to_i
print "second number:"
second = gets.to_i

begin
	answer = first / second
rescue 
	puts "can not divide by zero"
	exit 
	
end

puts "the answer is #{answer}"