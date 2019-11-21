require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
    #  binding.pry
      true
    else
      false

    end
  end

  def count_sentences
    self.split(/[.?!]+/).count
  #  binding.pry
    #return a count of sentences in that string.
  end
end
