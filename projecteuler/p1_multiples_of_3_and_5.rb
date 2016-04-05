(1...1000).collect do |n|
  n if n%3==0 || n%5==0
end.compact.inject(0){ |sum,x| sum+x }
