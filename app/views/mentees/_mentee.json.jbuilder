json.extract! mentee, :id, :nome, :email, :cargo_atual, :empresa_atual, :mini_bio, :created_at, :updated_at
json.url mentee_url(mentee, format: :json)
