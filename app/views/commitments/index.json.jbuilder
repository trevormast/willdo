json.array!(@commitments) do |commitment|
  json.extract! commitment, :id, :description, :tag, :user_id
  json.url commitment_url(commitment, format: :json)
end
