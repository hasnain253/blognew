class ChangeBodyToCommentsInComment < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :body, :comments
  end
end
