class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.float :airline_expense
      t.float :airport_expense
      t.float :insurance_expense
      t.float :public_expense
      t.integer :delayed_flights
      t.integer :fatal_victims

      t.timestamps
    end
  end
end
