class RemoveCommentableIdFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :commentable_id, :integer
  end
end
