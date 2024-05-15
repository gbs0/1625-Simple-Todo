require_relative "tasks_view"
require_relative "task"

class TasksController
  # Responsável por orquestrar as escolhas do usuário
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  # Listar todas as tarefas
  def list
    # 1. Buscar todas as tasks existentes no repositório
    tasks = @repository.all
    # 2. Listamos as tasks com a Ajuda da view
    @view.display(tasks)
  end

  # Adicionar uma task nova no repositorio
  def add
    # 1. Pegar a descrição da task
    description = @view.ask_for("Description")
    # 2. Criar uma nova instancia com descrição em um objeto Task (preencher o atributo description)
    task = Task.new(description)
    # 3. Colocamos a task nova criada p/ dentro do array
    @repository.create(task)
  end

  def mark_as_done
    # 1. Listamos todas as task  disponveis
    list
    # 2. Perguntamos ao user o Index de cada task
    index = @view.ask_for("index")

    # 3. Encontrar a task escolhida
    task = @repository.find(index.to_i)

    # 4. Marcamos como feita
    task.mark_as_done!
  end
end
