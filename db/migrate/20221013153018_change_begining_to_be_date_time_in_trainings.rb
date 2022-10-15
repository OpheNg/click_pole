class ChangeBeginingToBeDateTimeInTrainings < ActiveRecord::Migration[6.1]
  def change
    change_column :trainings, :begining, :date_time
  end
end
