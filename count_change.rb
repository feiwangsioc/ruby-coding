def first_denomination(x)
   if x == 1 then
      1
   elsif x == 2 then
      5
   elsif x == 3 then
      10
   elsif x == 4 then
      25
   elsif x == 5 then
      50
   end
end

def cc(amount, kinds_of_coins)
   if amount == 0 then
      1
   elsif amount < 0 then
      0
   elsif kinds_of_coins == 0 then
      0
   else
      cc(amount, kinds_of_coins - 1) +
        cc(amount - first_denomination(kinds_of_coins), kinds_of_coins)
   end
end

def count_change(amount)
   cc(amount, 5)
end

puts count_change(5)
