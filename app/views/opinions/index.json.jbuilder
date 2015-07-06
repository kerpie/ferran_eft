json.array!(@opinions) do |opinion|
  json.extract! opinion, :id, :comment
  json.url opinion_url(opinion, format: :json)
end
