# Question 1 & Question 2 relate to understanding object IDs - 
# Instead of copying here, please reference back to the problem set online

# Question 3:
# Let's call a method, and pass both a string and an array as arguments and see how even though they are treated in the same way by Ruby, the results can be different.
# Study the following code and state what will be displayed...and why:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
  p a_string_param.object_id # 60
  p an_array_param.object_id # 80
end

my_string = "pumpkins"
p my_string.object_id # 100
my_array = ["pumpkins"]
p my_array.object_id # 80
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
p my_string.object_id # 60
p my_array.object_id # 80
# Running object_id on my variables to better understand where they point to in memory
# for my_array/an_array_param = the object_id doesn't change - they continue to share the same place in memory
# for my_string/a_string_param = the object_id changes - they are stored in different points of memory
#=> My string looks like this now: pumpkins
#=> My array looks like this now: ["pumpkins", "rutabaga"]

# LS's explanation:
=begin 
Why? It seems clear from the above that Ruby treats string and array arguments differently...but not so fast. Actually the arguments are treated in exactly the same way...but the results are different.
In both cases, Ruby passes the arguments "by value", but unlike some other languages, the value that gets passed is a reference to some object. The string argument is passed to the method as a reference to an object of type String. Similarly, the array is passed to the method as a reference to an object of type Array.
The important distinction is that while a reference is passed, the method initializes a new local variable for both the string and the array and assigns each reference to the new local variables. These are variables that only live within the scope of the method definition.
So, if both arguments live inside the method as a new variable that stores a reference to the passed object...why don't the string and the array behave the same way in our output?
The difference lies in what Ruby does when the program executes either a String#+= operation or an Array#<< operation.
The String#+= operation is re-assignment and creates a new String object. The reference to this new object is assigned to a_string_param. The local variable a_string_param now points to "pumpkinsrutabaga", not "pumpkins". It has been re-assigned by the String#+= operation. This means that a_string_param and my_string no longer point to the same object.
With the array, one array object can have any number of elements. When we attach an additional element to an array using the << operator, Ruby simply keeps using the same object that was passed in, and appends the new element to it.
So, because the local variable an_array_param still points to the original object, the local variables my_array and an_array_param are still pointing at the same object, and we see the results of what happened to the array "outside" of the method.
=end



# Question 4:
# To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.
def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
  p a_string_param.object_id # 260
  p an_array_param.object_id # 300
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string.object_id # 260
my_array.object_id # 280
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
my_string.object_id # 260
my_array.object_id  #280
# Again, added object_id to better assess what's happening with the code
#=> My string looks like this now: pumpkinsrutabaga
#=> My array looks like this now: ["pumpkins"]

# LS's explanation:
=begin     
As you can see, we have achieved the opposite effect from our last example.
We are still passing in the same two string and array arguments, but the results are the opposite, 
because our method does the "same thing" to each, but in a different way than before. That is, in 
both cases, the method attempts to change the string from "pumpkins" to "pumpkinsrutabaga" and add 
"rutabaga" to the array.
Despite the similarity of the results inside the method definition, the results outside the method 
definition are the opposite.
As before, the explanation is all about what Ruby does with local variables when we change the 
object it points to. Does it create a new local variable? Or is it able to just modify the existing object?
With the Array#= assignment, our literal ['pumpkins', 'rutabaga'] array is a new object, and we are 
assigning it to the local variable an_array_param.
=end



# Question 5:
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# Whether the above "coincidentally" does what we think we wanted "depends" upon what is going on inside the method.
# How can we change this code to make the result easier to predict and easier for the next programmer to maintain?
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# Every language (Ruby included) provides ways and means of writing "clever" code that depends on 
# some of the less obvious traits of the language.
# Every good programmer practices these tricks...and then avoids them like the plague.
# Clever programmers don't write "clever" code. They write explicit code that is easy to read, 
# debug and modify as the requirements change.

# Question 6:
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
# How could you remove the unnecessary duplication in this method?
def color_valid(color)
  color == "blue" || color == "green" ? true : false
end
# But you don't need to specify true or false, therefore:
def color_valid(color)
  color == "blue" || color == "green"
end
