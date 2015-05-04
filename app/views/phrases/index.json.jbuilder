json.array!(@phrases) do |phrase|
  json.extract! phrase, :id, :topic
  json.url phrase_url(phrase, format: :json)
end
