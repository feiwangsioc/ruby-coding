graph = {
	"A": ["B", "C"],
	"B": ["A", "C", "D"],
	"C": ["A", "B", "D", "E"],
	"D": ["B", "C", "E", "F"],
	"E": ["C", "D"],
	"F": ["D"]
}


# def bfs(graph, s)
# 	queue = []
# 	queue.push(s)
# 	seen = Hash.new
# 	seen.merge!(s)
# 	while(queue.size >= 1)
# 		vertex = queue.shift
# 		nodes = graph[vertex]
# 		 nodes.each do |w|
# 			if seen.include?(w)
# 				queue.push(w)
# 				seen.merge(w)
# 			end 
# 		end 
# 		puts(vertex)
# 	end 



# end 

# bfs(graph, "A": ["B", "C"])

puts graph["A": ["B", "C"]]