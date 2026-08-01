local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["lex-aircraft"] then
  khaoslib_recipe:load("lex-flying-gunship"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
  khaoslib_recipe:load("lex-flying-cargo"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
  khaoslib_recipe:load("lex-flying-heavyship"):replace_ingredient("steel-plate", function(ingredient) ingredient.name = "titanium-plate" return ingredient end):commit()
end
