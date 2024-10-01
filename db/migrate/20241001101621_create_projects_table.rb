class CreateProjectsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description
      t.integer :status, default: 0 # 0 = not_started, 1 = in_progress, 2 = completed, 3 = on_hold, 4 = cancelled
      t.timestamps
    end
  end
end
