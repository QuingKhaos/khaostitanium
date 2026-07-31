local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "titanium-plate",
  subgroup = "raw-material",
  order = "a[smelting]-d[titanium-plate]",
  enabled = true,
  allow_productivity = true,
  energy_required = 8,
  main_product = "titanium-plate",
} :set_categories {"smelting"}
  :set_icons{{icon = "__khaostitanium__/graphics/icons/titanium-plate.png", icon_size = 64}}
  :set_ingredients {
    {type = "item", name = "titanium-ore", amount = 5},
  }
  :set_results {
    {type = "item", name = "titanium-plate", amount_min = 2, amount_max = 3},
  }
  :commit()
