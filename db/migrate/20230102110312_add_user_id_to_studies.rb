class AddUserIdToStudies < ActiveRecord::Migration[5.2]
  def change
    add_column :studies, :user_id, :integer
  end
end
