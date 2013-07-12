class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |l|
      l.string  :list_name
      l.timestamps
    end
  end
end
