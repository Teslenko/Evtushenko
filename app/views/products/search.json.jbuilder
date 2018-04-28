json.products do
  json.array!(@products) do |product|
    json.name product.name
    json.url product_path(product)
  end
end

json.for_man do
  json.array!(@for_man) do |for_man|
    json.name for_man.name
    json.url for_man_path(for_man)
  end
end

json.for_woman do
  json.array!(@for_woman) do |for_woman|
    json.name for_woman.name
    json.url for_woman_path(for_woman)
  end
end
