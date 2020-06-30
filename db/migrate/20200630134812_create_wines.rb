class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :rating
      t.integer :garde

      t.timestamps
    end
  end
end
