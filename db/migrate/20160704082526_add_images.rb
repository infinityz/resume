class AddImages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :experiences, :logo
    add_column :links, :icon, :string
  end

  def down
    remove_attachment :experiences, :logo
    add_column :links, :icon, :string
  end
end
