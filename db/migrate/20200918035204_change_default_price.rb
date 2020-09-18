class ChangeDefaultPrice < ActiveRecord::Migration[6.0]
  def change
    change_column :books, :price, :decimal, default: 0.00
  end
end
