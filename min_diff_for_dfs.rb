def get_minimum_difference(root)

    result = []
    ans = []
    dfs(root, result) if root 
    p result
    result.sort!
    for i in (0...result.size-1) do
        ans << (result[i] - result[i+1]).abs
    end 
    ans.min
        
    
end
    
def dfs(node, result)  #iterative
    return if node.nil?
    stack = []
    stack.push(node)

    while (!stack.empty?)
        n = stack.pop
        result << n.val
        stack.push(n.left) if n.left
        stack.push(n.right) if n.right
        
    end
end

def dfs(node, result) #recursive
    return if node.nil?
    
    result << node.val
    dfs(node.left, result)
    dfs(node.right, result)
end
