def exist(board, word)
    b_s = board.join
    p b_s
    count = 0
    for w in (0...word.size) do
    	for b in (0...b_s.size) do 
    		if word[w] == b_s[b]
    			b_s[b] = ""
    			count += 1
    			break
    		end 
    	end 
    end 

    return count == word.size ? true : false
        
        
    
    
end



p exist([["a","b"],["c","d"]], "abcd")