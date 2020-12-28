require("config")
-- Cost updates
require("configs.costs.lolwhat")
require("configs.costs.uberwaffe")
require("configs.costs.normal")
require("configs.costs.extended")
-- Recipe fixes
require("prototypes.2_recipe")
-- tweaks for other mods
require("tweaks.aai.2_final")
require("tweaks.angelsmods.2_final")
require("tweaks.bobsmods.2_final")
require("tweaks.omnimatter.2_final")

require("tweaks.pymods.2_final")

-- Technolgoy map fix
require("prototypes.2_technology")

if (settings.startup["sct-difficulty-cost"].value ~= "noadjustment") then

	-- Select the cost file depending on which one is requested.
	if not sciencecosttweaker then sciencecosttweaker = {} end
	sciencecosttweaker = sct_cost[settings.startup["sct-difficulty-cost"].value]

	-- Iterate through all research, and update the costs as configured.
	for _i, tech in pairs(data.raw.technology) do 
		-- First, determine the tier of the research, by looking at what types of science packs is used in its research cost.

		tier = 1;
		multiplier = sciencecosttweaker.costs.tier1;
		local ingredients = tech.unit.ingredients;
		for _i, pack in pairs(ingredients) do
			local packname = pack.name and pack.name or pack[1];
			if (tier < 2 and packname == "logistic-science-pack") then
				tier = 2
				multiplier = sciencecosttweaker.costs.tier2;
			end
			if (tier < 3 and packname == "military-science-pack") then
				tier = 3
				multiplier = sciencecosttweaker.costs.military;
			end
			if (tier < 4 and packname == "production-science-pack") then
				tier = 4
				multiplier = sciencecosttweaker.costs.production;
			end
			if (tier < 5 and packname == "chemical-science-pack") then
				tier = 5
				multiplier = sciencecosttweaker.costs.tier3;
			end
			if (tier < 6 and packname == "utility-science-pack") then
				tier = 6
				multiplier = sciencecosttweaker.costs.hightech;
			end
			if (tier < 99 and packname == "module-case") then
				tier = 99
				multiplier = sciencecosttweaker.costs.bobmodules;
			end
			if (tech.unit.count_formula ~= nil) then
				tier = 999999
				multiplier = sciencecosttweaker.costs.formula;
			end
		end

		-- If a multiplier is defined for this tier, then apply it.
		if (multiplier ~= nil) then
			local unitCopy = table.deepcopy(tech.unit);

			unitCopy.time = math.max(unitCopy.time * multiplier.time, 1);
				
			-- Now, since infinite research follows a slightly different layout, we have to account for that here.
			-- Only adjust the count if it has a count field
			if (unitCopy.count ~= nil) then
				-- Now adjust by the modifiers for this tier
				unitCopy.count = math.max(math.floor(unitCopy.count * multiplier.stepCount), 1);
			
				for _i, pack in ipairs( unitCopy.ingredients ) do
					-- For each type of science pack, multiply its count per research step by the given multiplier
					local packname = pack[1];
					local ingredientCostCount = pack[2];
					local simplepack = true;
					if (pack.name) then
						simplepack = false;
						packname = pack.name;
						ingredientCostCount = pack.amount;
					end;

					if (multiplier.cost[packname]) then
						local mult = 1
						
						mult = multiplier.cost[packname]
						ingredientCostCount = math.floor(ingredientCostCount * mult)
						ingredientCostCount = math.max(ingredientCostCount, 1);
						
						if simplepack then
							pack[2] = ingredientCostCount
						else
							pack.amount = ingredientCostCount
						end
--						sctm.log(tech.name .. " multiplier applied " .. " (mult: " .. mult .. ", pack: " .. packname .. ", simplepack: " .. (simplepack and 'true' or 'false') .. ")")
					end
				end
			end
			
			-- If the tech uses a count formulae instead, then adjust the formula by wrapping it in our added strings
			if (unitCopy.count_formula ~= nil) then
				unitCopy.count_formula = multiplier.prefix .. unitCopy.count_formula .. multiplier.postfix
			end
			
			tech.unit = unitCopy
		end
		
	end
end
