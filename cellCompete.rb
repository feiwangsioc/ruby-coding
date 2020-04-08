
class Bbbb
  def cellCompete(states, days)
    
      # WRITE YOUR CODE HERE
     
      d = 1 
      while (d <= days) 
        states1 = []
        states1[0] = states[1] == 0 ? 0 : 1  
        for i in 1..6 do    
          if states[i - 1] != states[i + 1]
              states1[i] = 1 
          else     
              states1[i] = 0 
          end 
        end 
         states1[7] = states[6] == 0 ? 0 : 1 
          p states
         d += 1 
         states = states1
         p states
         p d
         puts "----------"
     end 
     
     return states
  end
end 


Bbbb.new.cellCompete( [1,1,1,0,1,1,1,1], 2 )