local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "titanium-ore",
  localised_name = {"entity-name.titanium-ore"},
  subgroup = "raw-resource",
  order = "fb[titanium-ore]",
  stack_size = 50,
  weight = 4.5 * kg,

  inventory_move_sound = item_sounds.resource_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.resource_inventory_move,

  pictures = {
    {filename = "__khaostitanium__/graphics/icons/titanium-ore.png", size = 64, scale = 0.5},
    {filename = "__khaostitanium__/graphics/icons/titanium-ore-1.png", size = 64, scale = 0.5},
    {filename = "__khaostitanium__/graphics/icons/titanium-ore-2.png", size = 64, scale = 0.5},
    {filename = "__khaostitanium__/graphics/icons/titanium-ore-3.png", size = 64, scale = 0.5},
  },
} :set_icons {{icon = "__khaostitanium__/graphics/icons/titanium-ore.png", icon_size = 64}}
  :commit()
