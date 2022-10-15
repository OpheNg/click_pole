class CreateHosts < ActiveRecord::Migration[6.1]
  def change
    create_table :hosts do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
