eval("5*10")
answer = 5

answer < eval("answer + 1")
eval("class Hi; def hello; p 'Hello !'; end; end")
Hi.new.hello

contents = File.open('zen', 'r')
result = eval("contents.read")
# Be careful eval is considered evil...
# Never pass to eval any input from outside
p eval("ls //")
