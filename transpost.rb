def trans(m)
	mt = m.transpose 
	r = m.size
	c = m[0].size 
	m.reverse!
	for i in (0...r) do 
		for j in (i+1...c) do 
			m[i][j], m[j][i] = m[j][i], m[i][j]
		end 
	end 
	p m 
end 

trans([[1,2,3],[4,5,6],[7,8,9]])