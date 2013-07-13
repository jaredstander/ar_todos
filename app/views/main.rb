require_relative '../controllers/todos_controller'
require_relative '../controllers/lists_controller'


module TodosView

  todos = TodosController.new
  lists = ListsController.new
  
  def self.list
    puts "#{self.id}: #{self.completed} #{self.task}"
  end

  def self.print_all_lists
    List.all
  end

  def self.print_all_tasks(list)
    #self.print all tasks from list
  end

  def self.print_add_list_confirmation(list)
    puts "#{list} added!"
  end

  def self.print_add_task_confirmation(list, task)
    puts "#{task} successfully added to #{list}"
  end

  def self.print_marked_complete_confirmation
    puts "Task successfully marked complete!"
  end

  def self.print_list_deleted_confirmation
    puts "List successfully deleted!"
  end

  def self.print_task_deleted_confirmation
    puts "Task successfully deleted!"
  end

end

if argv[0] == "list"
  if argv[1] == "all"
    TodosView.print_all_lists
  else
    TodosView.print_all_tasks(argv[1])
  end
end

if argv[0] == "add_list"
  list_id = argv[1]
  #add list to lists
  TodosView.print_add_list_confirmation(argv[1])
end

if argv[0] == "add_task"
  list_id = argv[1]
  task = argv[2]
  TodosView.print_add_task_confirmation(argv[1], argv[2])
end


if argv[0] == "mark_complete"
  list_id = argv[1]
  task_id_to_mark_complete = argv[2]
  TodosView.print_marked_complete_confirmation
end


if argv[0] == "delete_list"
  list_id_to_delete = argv[1]
  TodosView.print_list_deleted_confirmation
end

if argv[0] == "delete_task"
  list_id = argv[1]
  task_id_to_delete = argv[2]
  TodosView.print_task_deleted_confirmation
end
