local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local mod_mining_with_fluid = khaoslib_technology:load(settings.startup["khaostitanium-mining-fluid"].value == "lubricant" and "lubricant" or "sulfur-processing")
mod_mining_with_fluid:add_effect {type = "mining-with-fluid", modifier = true} :commit()

khaoslib_technology:load("solar-panel-equipment"):add_prerequisite("titanium-processing"):add_science_pack {"chemical-science-pack", 1} :commit()
khaoslib_technology:load("belt-immunity-equipment"):add_prerequisite("titanium-processing"):add_science_pack {"chemical-science-pack", 1} :commit()
khaoslib_technology:load("night-vision-equipment"):add_prerequisite("titanium-processing"):add_science_pack {"chemical-science-pack", 1} :commit()
khaoslib_technology:load("battery-equipment"):add_prerequisite("titanium-processing"):add_science_pack {"chemical-science-pack", 1} :commit()

local equipment_recipes = khaoslib_recipe.find(function(recipe)
  return khaoslib_recipe.has_result(recipe, function(result)
    return result.name:match("equipment") ~= nil
  end)
end)

for _, recipe in pairs(equipment_recipes) do
  khaoslib_recipe:load(recipe):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
end

khaoslib_recipe:load("low-density-structure"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
khaoslib_technology:load("low-density-structure"):add_prerequisite("titanium-processing"):commit()

khaoslib_recipe:load("flying-robot-frame"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
khaoslib_technology:load("robotics"):add_prerequisite("titanium-processing"):commit()

khaoslib_recipe:load("steam-turbine"):add_ingredient {type = "item", name = "titanium-plate", amount = 20} :commit()
khaoslib_recipe:load("heat-exchanger"):add_ingredient {type = "item", name = "titanium-plate", amount = 20} :commit()
khaoslib_technology:load("nuclear-power"):add_prerequisite("titanium-processing"):commit()
