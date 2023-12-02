json.extract! pet, :id, :title, :picture, :owner, :owner_id, :breed, :age, :weight, :disease, :medicins, :food, :date_in, :date_out, :keeper, :description, :created_at, :updated_at
json.url pet_url(pet, format: :json)
