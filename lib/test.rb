require 'pry'
[1,2,3].each do |i|
    p i
    binding.pry
end