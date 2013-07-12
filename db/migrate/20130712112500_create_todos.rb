class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.integer   :list_id
      t.string    :task
      t.integer   :status
      t.timestamp :completed_at
      t.timestamps
    end
  end
end
