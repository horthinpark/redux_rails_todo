class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :text
      t.boolean :completed, null: false, default: false

      t.timestamps null: false
    end
  end
end
