class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :host, null: false, foreign_key: true
      t.date :date
      t.time :begining
      t.time :end
      t.string :address

      t.timestamps
    end
  end
end
