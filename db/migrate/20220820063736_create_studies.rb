class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.text      :study_record
      t.timestamps
    end
  end
end
