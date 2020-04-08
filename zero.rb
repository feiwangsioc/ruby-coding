
def howmany(line)
	line = line.split("")
   count = Hash.new{0}
   line.each do |l|
   	count[l] += 1
   end 
   count

   count.each do |k, v|
   	v += 1
   	p "#{k}: #{v}"
   end 

end 


howmany("aabbccdeee")

# puts howmany("aabbccdeee").size

# puts howmany("aabbccdeee").keys

# puts howmany("aabbccdeee").values.max

# puts howmany("aabbccdeee").keys.max