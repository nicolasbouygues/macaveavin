class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.references :cellar, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :domaine
      t.integer :millesime
      t.integer :rating
      t.integer :garde

      t.timestamps
    end
  end
end
