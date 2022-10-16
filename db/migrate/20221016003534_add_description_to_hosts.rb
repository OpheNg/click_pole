class AddDescriptionToHosts < ActiveRecord::Migration[6.1]
  def change
    add_column :hosts, :description, :string
  end
end
