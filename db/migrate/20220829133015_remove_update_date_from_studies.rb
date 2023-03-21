class RemoveUpdateDateFromStudies < ActiveRecord::Migration[5.2]
  def change
    remove_column :studies, :update_date, :date
  end
end
