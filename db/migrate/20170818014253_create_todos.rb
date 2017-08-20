class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.date :due_date, null: false
      t.boolean :completed, default: false
      t.text :details

      t.timestamps
    end
  end
end
