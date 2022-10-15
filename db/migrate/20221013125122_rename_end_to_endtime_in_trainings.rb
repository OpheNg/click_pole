class RenameEndToEndtimeInTrainings < ActiveRecord::Migration[6.1]

  def up
    rename_column :trainings, :end, :end_time
  end

  def down
    rename_column :trainings,:end_time, :end
  end

end
