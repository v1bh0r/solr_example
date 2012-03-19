class ChangeTypeOfFieldExperience < ActiveRecord::Migration
  def up
    change_column :candidates, :work_experience, :string
  end

  def down
  end
end
