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
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end

end

test = String.new("Testing")
test.sentence?
# binding.pry
# bye