json.array!(@sushi_menus) do |sushi_menu|
  json.extract! sushi_menu, :id, :food_type, :has_order, :menus
  json.url sushi_menu_url(sushi_menu, format: :json)
end
