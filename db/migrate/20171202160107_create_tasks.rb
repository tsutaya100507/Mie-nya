class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :task, null: false
      t.text :task_detail
      t.integer :type
      t.integer :status
      t.references :user
      t.date :deadline

      t.timestamps
    end
  end
end
