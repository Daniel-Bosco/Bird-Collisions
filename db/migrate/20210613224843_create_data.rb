class CreateData < ActiveRecord::Migration[6.1]
  def change
    create_table :data do |t|
      t.date :date
      t.string :flight_phase
      t.references :airport, null: false, foreign_key: true
      t.references :flight, null: false, foreign_key: true
      t.references :weather, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
