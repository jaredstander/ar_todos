require_relative '../views/todosview'
require_relative '../models/list'

class ListController

  include TodosView

  def list_all
    lists = List.all
    lists.each do |list|
      print_all_lists(list.id, list.list_name)
    end
  end 

  def add(list_name)
    List.create(list_name)
  end

  def delete(list_id)
    List.delete(list_id)
  end 

  def update_list_attribute(list_id, atrribute_value_to_update)
    List.update(list_id, value)
  end
  
  def list_all_tasks(list_id)
    list = List.find(list_id.to_i)
    list.todos.each do |task|
      print_all_tasks(task.id, task.task)
    end
  end

end
