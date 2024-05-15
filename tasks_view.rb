class TasksView
  def display(tasks)
    tasks.each_with_index do |task, index|
      checkbox = task.done? ? "[X]" : "[ ]"
      puts "- #{index} | Desc: #{task.description} -> #{checkbox}"
    end
  end

  def ask_for(information)
    puts "What's is the Task #{information}?"
    gets.chomp
  end
end

# TasksView.ask_info("Description")
# TasksView.display(@tasks)
