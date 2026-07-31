local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "string-setting",
  name = "khaostitanium-mining-fluid",
  setting_type = "startup",
  default_value = "lubricant",
  allowed_values = {"lubricant", "sulfuric-acid"},
} :commit()

khaoslib_setting:load {
  type = "int-setting",
  name = "khaostitanium-mining-fluid-amount",
  setting_type = "startup",
  default_value = 3,
  minimum_value = 1,
  maximum_value = 1000,
} :commit()
