class CreateChildTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :child_tasks do |t|
      t.string :title
      t.boolean :done
      t.references :task, foreign_key: true
      t.date :deadline

      t.timestamps
    end
  end
end
