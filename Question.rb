class Question

  def initialize(user)
    @user = user
  end

  def ask
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    "#{@user}: What does #{@num1} plus #{@num2} equal?"
  end

  def result
    @num1 + @num2
  end

end
