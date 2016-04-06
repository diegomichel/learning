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
puts Benchmark.measure { sum_multiples 1_000 }
puts Benchmark.measure { sum_multiples 1_000_000_000 }
