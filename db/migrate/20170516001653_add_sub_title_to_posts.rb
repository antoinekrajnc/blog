class AddSubTitleToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :subtitle, :string
  end
end
