class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false
      t.integer :role, default: 0 # 0 = user, 1 = project_manager, 2 = admin
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
