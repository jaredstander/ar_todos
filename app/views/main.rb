require_relative '../controllers/todo_controller'
require_relative '../controllers/list_controller'

todos = TodoController.new
lists = ListController.new
  

if ARGV[0] == "list"
  if ARGV[1] == "all"
    lists.list_all
  else
    lists.list_all_tasks(ARGV[1])
  end
end

if ARGV[0] == "add_list"
  lists.add(ARGV[1])
end

if ARGV[0] == "add_task"
  # list_id = ARGV[1]
  # task = ARGV[2]
  todos.add(ARGV[1], ARGV[2])
end


if ARGV[0] == "mark_complete"
  # list_id = ARGV[1]
  # task_id_to_mark_complete = ARGV[2]
  todos.update_status(ARGV[2], 1)
end


if ARGV[0] == "delete_list"
  list_id_to_delete = ARGV[1]
  TodosView.print_list_deleted_confirmation
end

if ARGV[0] == "delete_task"
  list_id = ARGV[1]
  task_id_to_delete = ARGV[2]
  TodosView.print_task_deleted_confirmation
end
