module WyncodeMethods
  def which_letter_is_greater(n,m)
    return n.to_s > m.to_s ? n : m  
  end

  def subtract_rationals(n,m)
    return n.to_r - m.to_r
  end

  def stringify_array(arr)
    return "not an array" unless arr.is_a? Array
    return arr.join("$").split("$")
  end

  def methods_difference(methods1, methods2)
    return (methods1.methods - methods2.methods).count
  end

  def make_child(parent1, parent2, rig=false)
    return "Parent1 isn't a hash" unless parent1.is_a? Hash
    return "Parent2 isn't a hash" unless parent2.is_a? Hash
    return parent1.merge(parent2) { |trait, p1, p2| rand(2) == 0 ? p1 : p2 } unless rig
    return parent1
  end
end