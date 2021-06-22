json.extract! report, :id, :airline_expense, :airport_expense, :insurance_expense, :public_expense, :delayed_flights, :fatal_victims, :created_at, :updated_at
json.url report_url(report, format: :json)
