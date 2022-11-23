def do_three_times(object, method_name)
    3.times { object.send(method_name) }
  end
  
class Dog
    def bark
      puts "Woof"
    end
end
  
dog = Dog.new
do_three_times(dog, :bark)