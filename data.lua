--INITIALIZE
if not SCTTweaks then SCTTweaks = {} end
if not sct then sct = {} end
if not sct.api then sct.api = {} end
if not sct.api.ignore_techs then sct.api.ignore_techs = {} end

require("sctmlib")

require("config")

-- Prototypes
require("prototypes.0_itemgroups")
require("prototypes.0_entity")
require("prototypes.0_recipe")
require("prototypes.0_technology")

-- mod tweaks
require("tweaks.aai.0_initial")
require("tweaks.angelsmods.0_initial")
require("tweaks.bobsmods.0_initial")
require("tweaks.omnimatter.0_initial")

require("tweaks.pymods.0_initial")


if (settings.startup["sct-tier1-lab"].value == "lab") then
--[[
	data.raw.recipe["sct-lab-1"].enabled = false
	data.raw.recipe["sct-lab-1"].normal.enabled = false
	data.raw.recipe["sct-lab-1"].expensive.enabled = false
	data.raw.recipe["sct-lab-1"].hidden = true
	data.raw.recipe["sct-lab-1"].normal.hidden = true
	data.raw.recipe["sct-lab-1"].expensive.hidden = true
	data.raw.lab["sct-lab-1"].enabled = false
]]---
	data.raw.recipe["sct-lab1-construction"].enabled = false
	data.raw.recipe["sct-lab1-construction"].normal.enabled = false
	data.raw.recipe["sct-lab1-construction"].expensive.enabled = false
	data.raw.recipe["sct-lab1-construction"].hidden = true
	data.raw.recipe["sct-lab1-construction"].normal.hidden = true
	data.raw.recipe["sct-lab1-construction"].expensive.hidden = true
	data.raw.item["sct-lab1-construction"].enabled = false
	data.raw.recipe["sct-lab1-mechanization"].enabled = false
	data.raw.recipe["sct-lab1-mechanization"].normal.enabled = false
	data.raw.recipe["sct-lab1-mechanization"].expensive.enabled = false
	data.raw.recipe["sct-lab1-mechanization"].hidden = true
	data.raw.recipe["sct-lab1-mechanization"].normal.hidden = true
	data.raw.recipe["sct-lab1-mechanization"].expensive.hidden = true
	data.raw.item["sct-lab1-mechanization"].enabled = false
end
