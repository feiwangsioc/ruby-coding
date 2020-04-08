def fact(n)
	if n == 1
		return 1
	else 
		return n*fact(n-1)
	end 
end 

def multiple(n)
	if n == 1
		return 1
	else 
		return (n + multiple(n-1))
	end 
end 

def reverse(str)
	if str.size <= 1
		return true
	end
	if str[0] != str[-1]
	    return false 
	end
	return reverse(str[1..-2])
end    

def count(a, kind)
	if a == 0
		return 1
	end 
	if a < o || 


puts fact(4)
puts multiple(10)
puts reverse("aabbaacc")