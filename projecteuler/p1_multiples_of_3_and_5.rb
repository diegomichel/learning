require 'benchmark'
(1...1000).collect do |n|
  n if n%3==0 || n%5==0
end.compact.inject(0){ |sum,x| sum+x }

#Solution based on pdf.
sum=0
(1..999).each {|n| sum+=n if n%3==0 || n%5==0}
puts sum

#What if we try up to 1000000000
def sum_multiples limit
  sum = 0
  (1..limit).each {|n| sum+=n if n%3==0 || n%5==0}
  sum
end

def sum_divisible_by(n, t)
  p = t / n
  return n*(p*(p+1))/2
end
def sum_multiples_fast t
  sum_divisible_by(3, t) + sum_divisible_by(5, t) - sum_divisible_by(15, t)
end

puts Benchmark.measure { sum_multiples 10_000_000 }
puts Benchmark.measure { sum_multiples_fast 10_000_000 }
