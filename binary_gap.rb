def binary_gap(n)
    bs = n.to_s(2)
    all_one = []
    return 0 if bs[0] == '0'
    (0...bs.size).each do |i|
        if bs[i] == '1'
            all_one << i
        end 
    end 
    maxd = 0
    (0...(all_one.size - 1)).each do |j|
    	maxd = [maxd, all_one[j + 1] - all_one[j]].max
    end 
    maxd
    
            
    
end 

puts binary_gap(817)