class RemoveColumn < ActiveRecord::Migration[5.1]
  def up
    remove_column :posts, :image
  end
end
