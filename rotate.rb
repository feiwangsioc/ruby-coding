
# class Rotate
    # def rotate(nums, k)
        
    #     while k >= 1
    #         numn = []
    #         numn[0] = nums[-1]
            
    #         for i in 1...nums.size do
    #             numn[i] = nums[i - 1]
    #         end 
    #         k -= 1
    #         nums = numn
        
    #     end 
    #     return numn
    # end

    def rotate(nums, k)
        length = nums.size
        k = k % length
        numn = []
        for i in 0...length do 
            numn[(i + k) % length ] = nums[ i ]
        end 
        numn
    end 


# end 

p rotate([1,2,3,4,5,6,7], 3) 

# p Rotate.new.rotate([-1,-100,3,99], 2) 