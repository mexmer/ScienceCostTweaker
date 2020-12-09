local science_packs_and_intermediates = 
{
	"automation-science-pack",
	"logistic-science-pack",
	"chemical-science-pack",
	"military-science-pack",
	"production-science-pack",
	"utility-science-pack",
	"advanced-logistic-science-pack",
	"alien-science-pack",
	"science-pack-gold",
	"omni-pack",
}

local finallist = {}

-- Go through all the recipes defined in the science pack and intermidate list.
-- For any of them that exist, add them to the final list of things to limit.
for j, recipeName in pairs(science_packs_and_intermediates) do
	if data.raw.recipe[recipeName] then
		table.insert(finallist, recipeName)
	end
end

-- if angelsmod with productivity limit function exists, add it to list
if mods["angelsrefining"] and angelsmods and angelsmods.functions and angelsmods.functions.allow_productivity then
--	sctm.log("angelprodlimit")
	angelsmods.functions.allow_productivity(finallist)
-- if bobsmod with productivity limit function exists, add it to list
elseif mods["boblibrary"] and bobmods and bobmods.lib and bobmods.lib.module and bobmods.lib.module.add_productivity_limitations then
-- sctm.log("bobprodlimit")
	bobmods.lib.module.add_productivity_limitations(finallist)
end
