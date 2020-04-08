def find_special_integer(arr)
  l_n = Array.new(2){Array.new() {0}}
       j = 0
  l_n[0][j] = arr[0]
  l_n[1][j] = 1
  (1...arr.size).each do |i|
      if l_n[0][j] == arr[i]
        l_n[1][j] += 1
      else 
        j += 1
        l_n[0][j] = arr[i]
        l_n[1][j] = 1
      end 
    end 
      max = l_n[1][0]
      ff = l_n[0][0]

   for k in 0..j do 


      if max < l_n[1][k]
        max = l_n[1][k]
        ff = l_n[0][k]
      end 
    end 

  return ff
    
end

p find_special_integer([1,1,1,2,2,6,6,6,6,7,10,9,9,9,8,8,8])