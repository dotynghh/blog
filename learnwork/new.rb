#days 03
#1.
def say (name)
re = "good night " + name
return re
end
puts say "ming"
puts say "wang"
puts(say("wang"))
puts "and good night,\nsir"

#2.
def hello name
puts "hello ,#{name}"
end
hello "sir"

def hello name
puts "hello ,#{name.capitalize}"
end
hello "sir"

$greeting = "hello"
@name = "world"
puts "#$greeting,#@name"

def say (name)
"good night " + name
end
puts say "ps"

a = [ 1, 'cat', 3.23 ]
a[0]
a[2]
a 

a = %Q{ant,bee,cat,dog}
a = %W{ant bee dog he god}

inst = {
"cello" => "string",
"clarinet" => "wood",
"drum" => "percission",
"obe" => "woow"
}

while line = gets
if gets 
puts "win"
break
end
end

s = 2
while s < 2000
s = s * s
end

#block
def hello
	puts  'hello method start'
	yield
	yield
	puts 'hello method end'
end
hello {puts 'i am in block'}

def hello
	puts 'hello method start'
	yield('hello','world')
	puts 'hello method end'
end
hello { |x,y| puts "i am in block,#{x} #{y}"}

def hello name
	puts 'hello method start'
	re = 'hello' + name
	yield(re)
	puts 'hello method end'
end
hello('world') { |x| puts "#{x} ,sir"}

['cat','dog','frog'].each do |an|
	puts an
end

sum = 0
[1,2,1,0].each {|x| sum += x }
puts sum

class Array
	def find
		each do |value|
			return value if  yield(value)
		end
	end
	nil
end

puts [1,2,3].find {|x| x = =2}