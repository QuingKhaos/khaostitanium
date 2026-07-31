local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "titanium-processing",
  order = "b-b",
} :set_icons {{icon = "__khaostitanium__/graphics/technology/titanium-processing.png", icon_size = 256}}
  :set_prerequisites {"lubricant", "chemical-science-pack"}
  :set {
    research_trigger = {
      type = "mine-entity",
      entities = {"titanium-ore"},
    },
  }
  :add_unlock_recipe("titanium-plate")

if settings.startup["khaostitanium-mining-fluid"].value == "sulfuric-acid" then
  tech:replace_prerequisite("lubricant", "sulfur-processing")
end

tech:commit()
