class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :url
      t.date :start_date
      t.date :end_date
      t.string :title

      t.timestamps
    end
  end
end
