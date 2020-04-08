def trap(height)
    hm = height.max
    sum = 0
    left, right = 0, height.size - 1
    for h in (1..hm) do 

        while left < right 
            if height[left] < h
                left += 1
            end 
            if height[right] < h
                right -= 1
            end 
            if height[right] >= h && height[left] >= h
                sum += (right - left + 1)
                break
            end 
        end 
        
    end 
    sum - height.sum
    
end 


p trap([2,0,2])