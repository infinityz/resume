class CreateProfileItems < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_items do |t|
      t.string :name
      t.integer :importance, limit: 2
      t.timestamps
    end
  end
end
