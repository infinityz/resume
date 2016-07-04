class CreateExpertiseCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :expertise_categories do |t|
      t.string :name
      t.integer :importance, limit: 2

      t.timestamps
    end
  end
end
