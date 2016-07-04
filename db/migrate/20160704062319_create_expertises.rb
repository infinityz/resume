class CreateExpertises < ActiveRecord::Migration[5.0]
  def change
    create_table :expertises do |t|
      t.string :name
      t.string :url
      t.integer :importance, limit: 2
      t.belongs_to :expertise_category

      t.timestamps
    end
  end
end
