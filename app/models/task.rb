class Task
  attr_reader :description, :status

  def initialize(description, status = false)
    @description = description
    @status = status
  end
end
