#Exercise 1 - sum_to

#Write a function sum_to(n) that uses recursion to calculate the sum from 1 to n (inclusive of n).

# Test Cases


def sum_to(n)
  return nil if n < 0
  return 1 if n == 1

  return n + sum_to(n - 1)

end


#p sum_to(5)  == 15  #returns 15
#p sum_to(1)  == 1  #returns 1
#p sum_to(9)  == 45  #returns 45
#p sum_to(-8) == nil  #returns nil

#Exercise 2 - add_numbers

#Write a function add_numbers(nums_array) that takes in an array of Integers and returns the sum of those numbers. Write this method recursively.

# Test Cases

def add_numbers(arr)
  return nil if arr == []
  return arr[0] if arr.length == 1

  return arr.delete_at(0) + add_numbers(arr)

end



#p add_numbers([1,2,3,4])  == 10    # => returns 10
#p add_numbers([3])        == 3    # => returns 3
#p add_numbers([-80,34,7]) == -39    # => returns -39
#p add_numbers([])         == nil    # => returns nil

#Exercise 3 - Gamma Function

#Let's write a method that will solve Gamma Function recursively. The Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(n)
  return nil if n== 0
  return 1 if n == 1

  return (n -1) * gamma_fnc(n - 1)
end


# Test Cases
p gamma_fnc(0) ==  nil # => returns nil
p gamma_fnc(1) ==  1 # => returns 1
p gamma_fnc(4) ==  6 # => returns 6
p gamma_fnc(8) ==  5040 # => returns 5040

#Exercise 4 - Ice Cream Shop

#Write a function ice_cream_shop(flavors, favorite) that takes in an array of ice cream flavors available at the ice cream shop, as well as the user's favorite ice cream flavor. Recursively find out whether or not the shop offers their favorite flavor.

def ice_cream_shop(flavors, target)
    return false if flavors == []
    return true if flavors[0] == target 
    flavors.shift
    return ice_cream_shop(flavors, target)

end



# Test Cases
#p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#p ice_cream_shop([], 'honey lavender')  # => returns false



#Exercise 5 - Reverse

#Write a function reverse(string) that takes in a string and returns it reversed.

def reverse(s, l = 0, r = s.length - 1)
  return "" if s == ""
  return s if l >= r
  s[l], s[r] = s[r], s[l]
  return reverse(s, l + 1, r -1)
end

#def reverse(s)
#  return "" if s == ""
#  return s if s.length == 1
#  mid = s[1...-1]
#  return s[-1] + mid + s[0]
#end



  # Test Cases
p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""