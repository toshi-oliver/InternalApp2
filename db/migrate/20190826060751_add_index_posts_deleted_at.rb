class AddIndexPostsDeletedAt < ActiveRecord::Migration[5.2]
  def change
    add_index :posts, :deleted_at
  end
end
