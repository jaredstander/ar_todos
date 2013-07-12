class SeedDB
  def self.seed
    list_names =  ["Chores", "Yardwork", "Grocery List", "Study", "Daily Workout", "Wal-Mart Shopping", "Black-Friday Shopping", "Amazon Shopping"]
    list_names.each do |list_name|
      list = List.create(list_name: list_name)

      list.todos.create(task: "foo")
        Todo.new(task: "foo", list_id: list.id)

        1.upto(rand(3..10)) {Todo.create(task: Faker::Lorem.sentence(word_count = rand(3..8)))}
    end
  end
end
  
