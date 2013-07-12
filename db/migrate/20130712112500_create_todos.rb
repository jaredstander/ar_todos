class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.belongs_to  :list
      t.string    :task
      t.integer   :status, default: 0
      t.timestamp :completed_at, default: nil
      t.timestamps
    end
  end
end
