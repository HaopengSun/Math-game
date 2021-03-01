class Correct
  attr_accessor :result, :correct

  def initialize(result, correct)
    @result = result.to_i
    @correct = correct.to_i
  end

  def judge
    @result == @correct
  end

end