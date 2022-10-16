class RemoveHostIdFromTrainings < ActiveRecord::Migration[6.1]
  def change
    remove_column :trainings, :host_id, :integer
  end
end
