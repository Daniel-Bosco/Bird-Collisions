json.extract! datum, :id, :date, :flight_phase, :airport_id, :flight_id, :weather_id, :report_id, :created_at, :updated_at
json.url datum_url(datum, format: :json)
