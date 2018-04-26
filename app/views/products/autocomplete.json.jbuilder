json.products do
  json.array!(@products) do |product|
    json.name product.name
    json.url product_path(product)
  end
end