class User
  def self.hello
    "hello"
  end
end
User.hello

class Mark
  class << self
    def hello 
      "words"
    end
  end
end

class A
  def hello
    puts "come from A"
  end
end
class << A
  def hello
    puts "come from Out"
  end
end
puts A.hello

class User
  class << User
    def category
      'User'
    end
  end
end
user.category