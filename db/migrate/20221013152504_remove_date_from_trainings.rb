class RemoveDateFromTrainings < ActiveRecord::Migration[6.1]
  def change
    remove_column :trainings, :date, :DateTime
  end
end
