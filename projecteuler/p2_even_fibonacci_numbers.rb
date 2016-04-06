p2 = 1
p3 = 2
sum = 0
while p3 < 4000000
  sum += p3 if p3.even?
  p1 = p2
  p2 = p3
  p3 = p1+p2
end
p sum
