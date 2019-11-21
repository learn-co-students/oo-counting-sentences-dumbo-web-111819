require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    output = -2

    output += self.split(". ").count
    output += self.split("! ").count
    output += self.split("? ").count

    if self.end_with?("." || "!" || "?")
      output += 1
    end

    if self.end_with?("..")
      output -= 1
    end

    if self == ""
      output = 0
    end

    output
  end
  
end