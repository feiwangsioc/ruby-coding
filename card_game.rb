def cards()
	ans = []
	type = ["spade", "heart", "club", "diamond"]
	value = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
	a = rand(0..3)
	b = rand(0..12)
	ans << [type[a], value[b]]
	ans << [type.sample, value.sample]


end 


p cards()

