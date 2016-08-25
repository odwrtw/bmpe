json.extract! pic, :id, :filename, :validated, :camera_id, :created_at, :updated_at
json.url pic_url(pic, format: :json)