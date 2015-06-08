json.array!(@happywords) do |happyword|
  json.extract! happyword, :id, :genre, :phrase
  json.url happyword_url(happyword, format: :json)
end
