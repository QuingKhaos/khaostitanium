require("__base__.prototypes.factoriopedia-util");
local khaoslib_entity = require('__khaoslib__.prototypes.entity')
local resource_autoplace = require('__core__.lualib.resource-autoplace')

data.raw["planet"]["nauvis"].map_gen_settings = util.merge {data.raw["planet"]["nauvis"].map_gen_settings, {
  autoplace_controls = {
    ["titanium-ore"] = {},
  },
  autoplace_settings = {
    entity = {
      settings = {
        ["titanium-ore"] = {},
      },
    },
  },
}}

resource_autoplace.initialize_patch_set("titanium-ore", true)

data:extend {
  {
    type = "autoplace-control",
    name = "titanium-ore",
    localised_name = {"", "[entity=titanium-ore] ", {"entity-name.titanium-ore"}},
    category = "resource",
    order = "a-ba",
    richness = true,
  },
}

khaoslib_entity:load {
    type = "resource",
    name = "titanium-ore",
    flags = {"placeable-neutral"},
    order = "a-b-b",

    map_color = {r = 0.65, g = 0.80, b = 0.80},
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    factoriopedia_simulation = {
      init = make_resource("titanium-ore"),
    },

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "titanium-ore",
      order = "b",
      base_density = 3,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 0.8,
    },

    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__khaostitanium__/graphics/entity/titanium-ore/titanium-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5,
      },
    },
} :set_icons {{icon = "__khaostitanium__/graphics/icons/titanium-ore.png", icon_size = 64}}
  :set_minable {
    hardness = 1,
    mining_time = 2,
    mining_particle = "titanium-ore-particle",
    required_fluid = settings.startup["khaostitanium-mining-fluid"].value --[[@as string]],
    fluid_amount = settings.startup["khaostitanium-mining-fluid-amount"].value --[[@as double]],
    result = "titanium-ore"
  }
  :commit()
