class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :gender, null: false
      t.integer :age
      t.string :eye_color
      t.string :hair_color
      t.string :height
      t.string :ethnicity
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
