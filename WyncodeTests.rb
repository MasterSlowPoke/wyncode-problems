module WyncodeTests
  def test_which_letter_is_greater(n,m)
    return "#{which_letter_is_greater(n,m)} is the greater of '#{n}' and '#{m}'"  
  end

  def test_subtract_rationals(n,m)
    return "#{n} - #{m} is #{subtract_rationals(n,m)}"
  end

  def test_stringify_array(arr)
    return "#{arr} is #{stringify_array(arr)}"
  end

  def test_methods_difference(methods1, methods2)
    return "#{methods1.class} #{methods1.to_s} has #{methods_difference(methods1, methods2)} methods that #{methods2.class} #{methods2.to_s} doesn't."
  end
  
  def test_make_child(parent1, parent2, rig=false)  
    child = make_child(parent1, parent2, rig)
    return child if child.is_a? String
    return "The child's traits are #{child.to_s}"
  end
end