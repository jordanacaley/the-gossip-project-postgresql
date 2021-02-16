class CreateChangeColumnNullLikes < ActiveRecord::Migration[6.1]
  def change
    change_column_null :likes, :gossip_id, true
    change_column_null :likes, :comment_id, true
  end
end
