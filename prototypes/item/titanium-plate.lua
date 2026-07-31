local item_sounds = require('__base__.prototypes.item_sounds')
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "titanium-plate",
  subgroup = "raw-material",
  order = "a[smelting]-d[titanium-plate]",
  stack_size = 100,
  weight = 1 * kg,

  inventory_move_sound = item_sounds.metal_small_inventory_move,
  pick_sound = item_sounds.metal_small_inventory_pickup,
  drop_sound = item_sounds.metal_small_inventory_move,
} :set_icons {{icon = "__khaostitanium__/graphics/icons/titanium-plate.png", icon_size = 64}}
  :commit()
