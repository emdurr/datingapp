json.extract! profile, :id, :gender, :eye_color, :hair_color, :height, :ethnicity, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)