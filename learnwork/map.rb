a = %w[ ant dog cat ]
def newmap arry
  re = []
  arry.each do |x|
    re << yield(x)
  end
  return re
end
newmap(a) {|e| e.upcase }    => ["ANT", "DOG", "CAT"]
a                                    => ["ant", "dog", "cat"]



a = %w[ ant dog cat ]
def a.newmap!
  re = []
  i = 0
  self.each do |x|
    re << yield(x)
    self[i] = re[i]
    i += 1
  end
  return self
end
a.newmap! {|e| e.upcase }
=> ["ANT", "DOG", "CAT"]

a         =>[nil, nil, nil]