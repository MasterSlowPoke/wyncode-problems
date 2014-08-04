require "./WyncodeTests.rb"
require "./WyncodeMethods.rb"

include WyncodeTests
include WyncodeMethods

line = "-" * 75

puts line, "Method Based Answers!", line, "\n"

puts "Which is “greater”, \“A\” or \“a\”?"
puts "\nANSWER"
puts "def which_letter_is_greater(n,m)
  return n.to_s > m.to_s ? n : m  
end

def test_which_letter_is_greater(n,m)
  return \"\#{which_letter_is_greater(n,m)} is the greater of '\#{n}' and '\#{m}'\"  
end\n\n"

puts test_which_letter_is_greater("a","A")
puts test_which_letter_is_greater("aa","AA")
puts test_which_letter_is_greater("A","a")
puts test_which_letter_is_greater({},"A")
puts test_which_letter_is_greater("a",[])
puts test_which_letter_is_greater(3,1)
puts test_which_letter_is_greater(nil,"A")

puts "", line, ""

puts "1 - 1.0/3 produces the wrong answer because it uses Floats. But Ruby’s standard library contains something called a \“rational\” 
that can express “⅓” correctly. Can you rewrite the expression 1-⅓ so that it returns the correct result? Hint: Start with the String “1/3”."
puts "\nANSWER"
puts 'def subtract_rationals(n,m)
  return n.to_r - m.to_r
end

def test_subtract_rationals(n,m)
  return "#{n} - #{m} is #{subtract_rationals(n,m)}"
end'
puts "\n"

puts test_subtract_rationals(1, "1/3")
puts test_subtract_rationals(1, Rational(1,3))
puts test_subtract_rationals(2.0, 1)
puts test_subtract_rationals("2/3", 0.234325)

puts "", line, ""

puts "Using a combination of Array’s join method and String’s split method, write a line of code that converts [1,2,3] into [\"1\", \"2\", \"3\"]."
puts "\nANSWER"
puts 'def stringify_array(arr)
  return "not an array" unless arr.is_a? Array
  return arr.join("$").split("$")
end

def test_stringify_array(arr)
  return "#{arr} is #{stringify_array(arr)}"
end
'

puts test_stringify_array([1,2,3])
puts test_stringify_array(1)
puts test_stringify_array([11,12,13])
puts test_stringify_array(["G","H","Z"])
puts test_stringify_array([nil,2.0,"3"])

puts "", line, ""

puts "How many methods does a String have that a Symbol doesn’t?"
puts "\nANSWER"
puts 'def methods_difference(methods1, methods2)
  return (methods1.methods - methods2.methods).count
end

def test_methods_difference(methods1, methods2)
  return "#{methods1.class} #{methods1.to_s} has #{methods_difference(methods1, methods2)} methods that #{methods2.class} #{methods2.to_s} doesn\'t."
end'

puts test_methods_difference(:a, "b")
puts test_methods_difference("b", :a)
puts test_methods_difference("b", "a")
puts test_methods_difference(1, :a)
puts test_methods_difference({}, :a)
puts test_methods_difference(1, nil)

puts "", line, ""

puts "Create a Hash that represents you: hair color, eye color, gender, etc. Create another Hash representing your (ideal?) significant other. 
Figure out how to combine those two Hashes into a single Hash representing your (imaginary?) child. How would you write that expression to guarantee 
your child inherits your traits?"
puts "\nANSWER"
puts 'def make_child(parent1, parent2, rig=false)
  return "Parent1 isn\'t a hash" unless parent1.is_a? Hash
  return "Parent2 isn\'t a hash" unless parent2.is_a? Hash
  return parent1.merge(parent2) { |trait, p1, p2| rand(2) == 0 ? p1 : p2 } unless rig
  return parent1
end

def test_make_child(parent1, parent2, rig=false)  
  child = make_child(parent1, parent2, rig)
  return child if child.is_a? String
  return "The child\'s traits are #{child.to_s}"
end
'
puts ""

my_traits = {hair_color: "brown", eye_color: "green", gender: "male"} 
her_traits = {hair_color: "black", eye_color: "brown", gender: "female"}

puts test_make_child(my_traits, her_traits)
puts test_make_child(my_traits, her_traits, true)
puts test_make_child(my_traits, "blonde")
puts test_make_child("fart", her_traits)
puts test_make_child(my_traits, nil)

puts "", line, ""