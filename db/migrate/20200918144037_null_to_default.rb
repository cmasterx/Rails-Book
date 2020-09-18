class NullToDefault < ActiveRecord::Migration[6.0]
  def up
    change_column :books, :title, :string, default: '', null: true
    change_column :books, :author, :string, default: '', null: true
    change_column :books, :genre, :string, default: '', null: true
    change_column :books, :price, :decimal, default: '', null: true
    change_column :books, :published_date, :string, default: '', null: true
  end
  
  def down
    change_column :books, :published_date, :string, default: nil, null: true
    change_column :books, :price, :decimal, default: nil, null: true
    change_column :books, :genre, :string, default: nil, null: true
    change_column :books, :author, :string, default: nil, null: true
    change_column :books, :title, :string, default: nil, null: true
  end
end
