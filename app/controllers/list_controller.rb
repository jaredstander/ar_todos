class ListController
  def list(table_id)
    List.all 
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
end
