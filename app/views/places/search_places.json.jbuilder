json.array!(@places) do |place|
  json.id place[:id]
  json.name place[:name]
  json.snippet place[:snippet]
  json.rating place[:rating]
  json.url place[:url]
  json.coords place[:coords]
  json.address place[:address]
  json.summary place[:summary]
  json.closed place[:closed]
end
