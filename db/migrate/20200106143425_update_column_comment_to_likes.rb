class UpdateColumnCommentToLikes < ActiveRecord::Migration[6.0]
  def change
    change_column :likes, :comment_id, :integer, :null => true
  end
end
