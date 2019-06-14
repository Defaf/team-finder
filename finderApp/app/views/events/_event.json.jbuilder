json.extract! event, :id, :nameEvent, :description, :date, :time, :duration, :team, :location, :created_at, :updated_at
json.url event_url(event, format: :json)
