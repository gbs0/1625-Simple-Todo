require_relative "tasks_controller"
require_relative "task_repository"
require_relative "router"

repository = TaskRepository.new
controller = TasksController.new(repository)


app = Router.new(controller)
app.run
