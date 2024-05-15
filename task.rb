class Task
  attr_accessor :description

  def initialize(attribute)
    @description = attribute
    @done = false
  end

  def done?
    return @done
  end

  def mark_as_done!
    @done = true
  end
end
