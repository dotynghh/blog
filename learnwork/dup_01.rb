=begin
#### String:  
str1通过dup方法复制String对象，改变str1的值，str2的值不会改变  

```ruby
str1 = "That's a fun day"
str2 = str1
str2 = str1.dup
str2[0] = "t"
puts str1	#=>That's a fun day
puts str2	#=> that's a fun day
```  
#### Array：  

```ruby
arry1 = [ 1, "happy", [1, 2], "name"]
```
arry2通过dup方法复制arry1,改变arry2的值，arry1不会改变  

```ruby
arry1 = [ "god", "dog",  "ant", "ban"]
arry2 = arry1.dup
arry2[1] = "JR"
arry1        #  => ["god", "dog", "ant", "ban"] 
arry2        #  => ["god", "JR", "ant", "ban"]
```
但是当数组相对来说比较负责时，情况就有所不同  

```ruby
arry1 = [ "god", "dog",  [ "ant", "big" ], "ban"]
arry2 = arry1.dup
arry2[1] = "JR"
arry2[2][0] = "have change!"
arry1    #      =>["god", "dog", ["have change!", "big"], "ban"]
arry2    #      => ["god", "JR", ["have change!", "big"], "ban"]
```
dup方法并不是完全的简单的复制...  =end
