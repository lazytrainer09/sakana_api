class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :detail
      t.datetime :deadline
      t.boolean :is_completed, default: false

      t.timestamps
    end
  end
end
