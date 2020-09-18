class ChangePriceScale < ActiveRecord::Migration[6.0]
  def up
    change_column(:books, :price, :decimal, precision: 10, scale: 2)
  end
  
  def down
    change_column(:books, :price, :decimal, precision: 10, scale: 0)
  end
  
end
