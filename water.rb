def max_area(height)
  
  l = 0
  r = height.size - 1
  # ans = []
  while l < r
    # ans = [height[l], height[r]].min * (r - l)
    if height[l] < height[r]
      l += 1
    else 
      r += 1
    end 
  end 
  ans
    
end

p max_area([1,8,6,2,5,4,8,3,7])