class CreateExperienceAccomplishments < ActiveRecord::Migration[5.0]
  def change
    create_table :experience_accomplishments do |t|
      t.string :name
      t.integer :importance, limit: 2 
      t.belongs_to :experience

      t.timestamps
    end
  end
end
