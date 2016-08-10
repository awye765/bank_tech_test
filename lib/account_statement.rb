class Account_Statement

  attr_reader :history

  def initialize
    @history = []
  end

  def show_history
    @history
  end

  # def update_history
  #   # @history add some stuf
  # end

end
