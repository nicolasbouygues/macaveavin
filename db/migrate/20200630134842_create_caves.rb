class CreateCaves < ActiveRecord::Migration[6.0]
  def change
    create_table :caves do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
