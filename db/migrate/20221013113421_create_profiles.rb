class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end
