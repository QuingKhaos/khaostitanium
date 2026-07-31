local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local mod_mining_with_fluid = khaoslib_technology:load(settings.startup["khaostitanium-mining-fluid"].value == "lubricant" and "lubricant" or "sulfur-processing")
mod_mining_with_fluid:add_effect {type = "mining-with-fluid", modifier = true} :commit()
