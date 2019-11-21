require 'pry'

class String

  def sentence?
      if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
      if self[-1] =='?'
        true
      else
        false
      end
  end

  def exclamation?
    if self[-1] =='!'
      true
    else
      false
    end
  end

  def count_sentences
      result_array = []
      delimeters = ['.','!','?']
      result_array = self.split(Regexp.union(delimeters))
      i = 0
      while i < result_array.size
          if result_array[i] == ''
            result_array.delete_at(i)
          end
          i+=1
          result_array
      end

      result_array.count

  end
end
