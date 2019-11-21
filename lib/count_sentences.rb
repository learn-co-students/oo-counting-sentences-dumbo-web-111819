require 'pry'

class String
  

  def sentence?
    self[-1] == "."

  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    # self.strip.split(/\w[?!.]/).length
    self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size 
  end

end

test = String.new("Testing")
test.sentence?
# binding.pry
# bye