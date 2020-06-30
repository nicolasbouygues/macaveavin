class AddMillesimeToWine < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :millesime, :integer
    add_column :wines, :description, :string
  end
end
