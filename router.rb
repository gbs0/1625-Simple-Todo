class Router
  def initialize(controller)
    @controller = controller
  end

  def menu
    puts "----------------------"
    puts "Welcome to Simple Todo"
    puts "1. List all Tasks"
    puts "2. Create Task"
    puts "3. Mark as Done"
    puts "4. Remove a Task"
    puts "0. Quit"
  end

  def run
    loop do
      menu
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.mark_as_done
    when 4 then @controller.remove
    when 0 then exit
    else
      puts "Please type 1, 2, 3 or 4 :)"
    end
  end
end
