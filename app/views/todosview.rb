module TodosView

  def list
    puts "#{self.id}: #{self.completed} #{self.task}"
  end

  def print_all_lists(list_id, lists_name)
    puts "#{list_id}: #{lists_name}"
  end

  def print_all_tasks(task_id, task)
    puts "#{task_id}: #{task}"
  end

  def print_add_list_confirmation(list)
    puts "#{list} added!"
  end

  def print_add_task_confirmation(list, task)
    puts "#{task} successfully added to #{list}"
  end

  def print_marked_complete_confirmation
    puts "Task successfully marked complete!"
  end

  def print_list_deleted_confirmation
    puts "List successfully deleted!"
  end

  def print_task_deleted_confirmation
    puts "Task successfully deleted!"
  end

end
