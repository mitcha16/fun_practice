class DuplicateFinder
  def self.find(array1, array2)
    (array1.uniq + array2.uniq).group_by do |element|
      element
    end.keep_if {|k, v| v.size > 1}.keys.join(", ")
  end
end
puts DuplicateFinder.find([1,3,3,2,4], [4,5,5,6,3])
puts DuplicateFinder.find(["cat", "cat", "dog", "fish", "bird"], ["dog", "hedgehog", "eagle", "fish"])
