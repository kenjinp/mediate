json.array!(@shareables) do |shareable|
  json.extract! shareable, :id, :title, :link, :is_public
  json.url shareable_url(shareable, format: :json)
end
