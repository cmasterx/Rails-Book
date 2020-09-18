class AddStory < ActiveRecord::Migration[6.0]
  def up
    add_column(:books, :story, :text)
  end

  def down
    remove_column(:books, :story)
  end
end
