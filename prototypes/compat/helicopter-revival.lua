local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["HelicopterRevival"] then
  khaoslib_recipe:load("helicopter"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
  khaoslib_recipe:load("scout-helicopter"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()

  khaoslib_technology:load("heli-technology"):add_prerequisite("titanium-processing"):commit()
  khaoslib_technology:load("heli-technology-scout"):add_prerequisite("titanium-processing"):commit()
end
