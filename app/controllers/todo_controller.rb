require_relative '../views/todosview'
require_relative '../models/todo'


class TodoController

  include TodosView
  

  def add(list_id, value)
    Todo.create(:list_id => list_id, :task_id => value)
    print_add_task_confirmation
  end

  def delete(task_id) 
    Todo.delete(:task_id)
  end 

  def update_status(task_id, status_value)
    Todo.update(:task_id, :status => status_value)
    print_marked_complete_confirmation
  end

end

