class TodoController
  def list_all_tasks
    Todo.all
  end 
  
  def list
    Todo.find(:list_id)
  end 

  def add(list_id, value)
    Todo.create(:list_id => list_id, :task_id => value)
  end

  def delete(task_id) 
    Todo.delete(:task_id)
  end 

  def update_status(task_id, status_value) 
    Todo.update(:task_id, :status =>) 
  end
end

