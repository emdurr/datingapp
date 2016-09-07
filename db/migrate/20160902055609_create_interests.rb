class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :activity_type
      t.string :interest
      t.string :interest_level
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
