local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["jetpack"] then
  khaoslib_recipe:load("jetpack-1"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
end
