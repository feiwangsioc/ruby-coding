def times_number(ar)
	ans = []
	for i in (0...ar.size) do 
		if i % 2 == 0
			n = ar[i]
			for j in (0...n) do 
				ans << ar[i+1]
			end

	    end 
	end 
	ans 
	

end 


p times_number([3,8,1,4,0,7,2,5])