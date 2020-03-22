json.extract! photo, :id, :titre, :slug, :created_at, :updated_at
json.url photo_url(photo, format: :json)
