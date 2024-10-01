class CreateHistorysTable < ActiveRecord::Migration[6.1]
  def change
    create_table :histories do |t|
      t.references :trackable, polymorphic: true, index: true # This makes it polymorphic for comments or statuses
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
