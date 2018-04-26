-- add bob logistic pack if found - for now, might replace with qol later
if mods["bobtech"] then
require("tweaks.bobsmods.sciencegroup")
	if data.raw.tool["logistic-science-pack"] or data.raw.recipe["logistic-science-pack"] then
--		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "logistic-science-pack")	
	end
-- hide bob lab mk2	
	if data.raw.lab["lab-2"] then
		table.insert(data.raw.item["lab-2"].flags, "hidden")	
		bobmods.lib.tech.remove_recipe_unlock("advanced-research", "lab-2")
	end
	if data.raw.technology["advanced-research"] then
		data.raw.technology["advanced-research"].upgrade = false
		bobmods.lib.tech.remove_recipe_unlock("advanced-electronics-2", "sct-lab-4")
		bobmods.lib.tech.add_recipe_unlock("advanced-research", "sct-lab-4")
	end
	if data.raw.item["lab-alien"] then
		data.raw.item["lab-alien"].subgroup = "sct-labs"
		data.raw.item["lab-alien"].order = "e[lab5]"
	end
	if data.raw.tool["logistic-science-pack"] then
		data.raw.tool["logistic-science-pack"].subgroup = "science-pack"
		data.raw.tool["logistic-science-pack"].order = "e-c-b"
	end
	if data.raw.recipe["logistic-science-pack"] then
		data.raw.recipe["logistic-science-pack"].subgroup = "sct-sciencepack-logistic"
	end
	if data.raw.tool["science-pack-gold"] then
		data.raw.tool["science-pack-gold"].subgroup = "science-pack"
		data.raw.tool["science-pack-gold"].order = "e-b-a"
	end
	if data.raw.recipe["science-pack-gold"] then
		data.raw.recipe["science-pack-gold"].subgroup = "sct-sciencepack-gold"
	end
	if data.raw.recipe["alien-science-pack"] and data.raw.tool["alien-science-pack"] then
		data.raw.recipe["alien-science-pack"].subgroup = "sct-sciencepack-alien"
		data.raw.recipe["alien-science-pack-blue"].subgroup = "sct-sciencepack-alien"
		data.raw.recipe["alien-science-pack-orange"].subgroup = "sct-sciencepack-alien"
		data.raw.recipe["alien-science-pack-purple"].subgroup = "sct-sciencepack-alien"
		data.raw.recipe["alien-science-pack-yellow"].subgroup = "sct-sciencepack-alien"
		data.raw.recipe["alien-science-pack-green"].subgroup = "sct-sciencepack-alien"
		data.raw.recipe["alien-science-pack-red"].subgroup = "sct-sciencepack-alien"
		data.raw.tool["alien-science-pack"].order = "e-b-b"
		data.raw.tool["alien-science-pack-blue"].order = "e-b-c"
		data.raw.tool["alien-science-pack-orange"].order = "e-b-d"
		data.raw.tool["alien-science-pack-purple"].order = "e-b-e"
		data.raw.tool["alien-science-pack-yellow"].order = "e-b-f"
		data.raw.tool["alien-science-pack-green"].order = "e-b-g"
		data.raw.tool["alien-science-pack-red"].order = "e-b-h"
	end
end

if mods["bobmodules"] then
	if data.raw.item["lab-module"] then
		data.raw.item["lab-module"].subgroup = "sct-labs"
		data.raw.item["lab-module"].order = "f[lab6]"
	end
end

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
		 bobmods.lib.recipe.replace_ingredient("sct-lab-3", "filter-inserter", "red-filter-inserter")
	end
end

