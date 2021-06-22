class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :aircraft, null: false, foreign_key: true
      t.references :pilot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
