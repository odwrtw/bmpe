json.extract! experiment, :id, :name, :description, :created_at, :updated_at
json.url experiment_url(experiment, format: :json)