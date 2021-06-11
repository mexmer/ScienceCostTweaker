-- Check that bobsmod plates is installed
if mods["bobplates"] then
	-- Green Science Pack:
	-- =============================

	if data.raw.item["tin-plate"] then
		sctm.recipe_ingredient_replace("sct-t2-instruments", "iron-plate", "tin-plate")
	end

	if data.raw.item["lead-plate"] then
		sctm.recipe_ingredient_replace("sct-t2-micro-wafer", "iron-plate", "lead-plate")
	end

	if data.raw.item["tinned-copper-cable"] then
		sctm.recipe_ingredient_replace("sct-t2-reaction-nodes", "sct-t1-magnet-coils", "tinned-copper-cable")
	end
	
	-- Blue Science Pack:
	-- =============================

	if data.raw.fluid["nitrogen"] then
		sctm.recipe_ingredient_replace("sct-t3-femto-lasers", "water", "nitrogen")
		sctm.tech_dependency_add("sct-lab-t3", "nitrogen-processing")
	end
	
	if data.raw.item["glass"] and data.raw.item["silver-plate"] then
		data.raw.recipe["sct-t3-laser-foci"].normal.ingredients =
		{
			{type="item", name="copper-plate", amount=5},
			{type="item", name="glass", amount=8},
			{type="item", name="silver-plate", amount=2}
		}
		data.raw.recipe["sct-t3-laser-foci"].expensive.ingredients =
		{
			{type="item", name="copper-plate", amount=10},
			{type="item", name="glass", amount=15},
			{type="item", name="silver-plate", amount=5}
		}
	end
	
	if data.raw.item["glass"] then
		sctm.recipe_ingredient_replace("sct-t3-sulfur-lightsource", "plastic-bar", "glass")
	end

	if data.raw.fluid["sulfur-dioxide"] then
		sctm.recipe_ingredient_replace("sct-t3-sulfur-lightsource", "sulfur", {type="fluid", name="sulfur-dioxide", amount=20}, "sulfur", {type="fluid", name="sulfur-dioxide", amount=50})
	end

	if data.raw.item["glass"] and data.raw.item["aluminium-plate"] then
		data.raw.recipe["sct-t3-laser-emitter"].normal.ingredients =
		{
			{type="item", name="electronic-circuit", amount=6},
			{type="item", name="copper-plate", amount=8},
			{type="item", name="glass", amount=4},
			{type="item", name="aluminium-plate", amount=5}
		}
		data.raw.recipe["sct-t3-laser-emitter"].normal.results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
		data.raw.recipe["sct-t3-laser-emitter"].expensive.ingredients =
		{
			{type="item", name="electronic-circuit", amount=10},
			{type="item", name="copper-plate", amount=15},
			{type="item", name="glass", amount=6},
			{type="item", name="aluminium-plate", amount=10}
		}
		data.raw.recipe["sct-t3-laser-emitter"].expensive.results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
	end
	
	if data.raw.item["silver-plate"] and data.raw.item["aluminium-plate"] and data.raw.fluid["nitrogen"] then
		data.raw.recipe["sct-t3-atomic-sensors"].normal.ingredients =
		{
			{type="item", name="advanced-circuit", amount=1},
			{type="item", name="aluminium-plate", amount=5},
			{type="item", name="silver-plate", amount=2},
			{type="item", name="copper-plate", amount=12},
			{type="fluid", name="nitrogen", amount=15}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].normal.results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].expensive.ingredients =
		{
			{type="item", name="advanced-circuit", amount=1},
			{type="item", name="aluminium-plate", amount=10},
			{type="item", name="silver-plate", amount=5},
			{type="item", name="copper-plate", amount=20},
			{type="fluid", name="nitrogen", amount=30}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].expensive.results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
--		sctm.tech_dependency_remove("chemical-science-pack", "alloy-processing-1")
	end
	
	-- Military Science Pack:
	-- =============================
	if data.raw.item["invar-alloy"] then
		sctm.recipe_ingredient_replace("sct-mil-subplating", "iron-plate", { type="item", name="invar-alloy", amount = 0})
		sctm.recipe_ingredient_replace("sct-mil-plating", "iron-plate", { type="item", name="invar-alloy", amount = 0})
	end
		
	if data.raw.item["brass-alloy"] then
		sctm.recipe_ingredient_replace("sct-mil-subplating", "copper-plate", { type="item", name="brass-alloy", amount = 0})
		sctm.recipe_ingredient_replace("sct-mil-plating", "copper-plate", { type="item", name="brass-alloy", amount = 0})
	end

	if data.raw.item["carbon"] then
		sctm.recipe_ingredient_add("sct-mil-circuit3" , { type="item", name="carbon", amount=4 }, { type="item", name="carbon", amount=10 })
		sctm.recipe_ingredient_add("sct-mil-circuit2", { type="item", name="carbon", amount=3 }, { type="item", name="carbon", amount=8 })
--		table.insert(data.raw.recipe["sct-mil-circuit1"].normal.ingredients, { type="item", name="carbon", amount=2 })
--		table.insert(data.raw.recipe["sct-mil-circuit1"].expensive.ingredients, { type="item", name="carbon", amount=5 })		
		sctm.recipe_ingredient_replace("sct-mil-circuit1", "coal", { type="item", name="carbon", amount=0 })
	end
	
	-- Production Science Pack:
	-- =============================
	if data.raw.item["silicon"] then
		sctm.recipe_ingredient_replace("sct-prod-biosilicate", "stone", {type="item", name="silicon", amount = 2})
	end
	
	if data.raw.item["tin-plate"] and data.raw.item["lead-plate"] and data.raw.item["gold-plate"] and data.raw.fluid["sulfur-dioxide"] then
		data.raw.recipe["sct-prod-overclocker"].normal.ingredients = 
		{
			{type="item", name="tin-plate", amount=10},
			{type="item", name="lead-plate", amount=10},
			{type="item", name="gold-plate", amount=10},
			{type="item", name="sct-prod-chipcase", amount=1},
			{type="fluid", name="sulfur-dioxide", amount=120},
		}
		data.raw.recipe["sct-prod-overclocker"].normal.results = 
		{
			{type="item", name="sct-prod-overclocker", amount=1},
			{type="item", name="sulfur", amount=4}
		}
		data.raw.recipe["sct-prod-overclocker"].expensive.ingredients = 
		{
			{type="item", name="tin-plate", amount=20},
			{type="item", name="lead-plate", amount=20},
			{type="item", name="gold-plate", amount=20},
			{type="item", name="sct-prod-chipcase", amount=1},
			{type="fluid", name="sulfur-dioxide", amount=200},
		}
		data.raw.recipe["sct-prod-overclocker"].expensive.results = 
		{
			{type="item", name="sct-prod-overclocker", amount=1},
			{type="item", name="sulfur", amount=4}
		}
	end

	-- High-Tech Science Pack:
	-- =============================
	
	if data.raw.item["lithium-ion-battery"] and data.raw.item["silicon-nitride"] and data.raw.item["steel-gear-wheel"] then
		sctm.recipe_ingredient_replace("sct-htech-capbank", "iron-plate", "steel-gear-wheel")
		sctm.recipe_ingredient_replace("sct-htech-capbank", "battery", "lithium-ion-battery")
		sctm.recipe_ingredient_add("sct-htech-capbank", { type="item", name="silicon-nitride", amount=10},{ type="item", name="silicon-nitride", amount=25})
	end
	
	if data.raw.item["titanium-plate"] and data.raw.item["powdered-tungsten"] and data.raw.item["ruby-5"] then
		data.raw.recipe["sct-htech-injector"].normal.ingredients =
		{
			{type="item", name="copper-cable", amount=20},
			{type="item", name="processing-unit", amount=5},
			{type="item", name="titanium-plate", amount=20},
			{type="item", name="powdered-tungsten", amount=20},
			{type="item", name="ruby-5", amount=1}
		}
		data.raw.recipe["sct-htech-injector"].expensive.ingredients =
		{
			{type="item", name="copper-cable", amount=30},
			{type="item", name="processing-unit", amount=10},
			{type="item", name="titanium-plate", amount=40},
			{type="item", name="powdered-tungsten", amount=40},
			{type="item", name="ruby-5", amount=1}
		}
		sctm.tech_dependency_add("sct-lab-t4", "gem-processing-2")
		sctm.tech_dependency_add("sct-lab-t4", "titanium-processing")
		sctm.tech_dependency_add("sct-lab-t4", "tungsten-processing")
	end

	if data.raw.item["tinned-copper-cable"] then
		sctm.recipe_ingredient_replace("sct-htech-injector", "copper-cable", "tinned-copper-cable")
	end

	if data.raw.item["tungsten-plate"] and data.raw.item["cobalt-steel-alloy"] then
		data.raw.recipe["sct-htech-thermalstore"].normal.ingredients =
		{
			{type="item", name="tungsten-plate", amount=20},
			{type="item", name="cobalt-steel-alloy", amount=20}
		}
		data.raw.recipe["sct-htech-thermalstore"].expensive.ingredients =
		{
			{type="item", name="tungsten-plate", amount=40},
			{type="item", name="cobalt-steel-alloy", amount=40}
		}
	end
	
	if data.raw.item["titanium-gear-wheel"] and data.raw.item["tungsten-gear-wheel"] then
		sctm.recipe_ingredient_replace("sct-htech-random", "iron-gear-wheel", "tungsten-gear-wheel")
		sctm.recipe_ingredient_add("sct-htech-random", { type="item", name="titanium-gear-wheel", amount=5}, { type="item", name="titanium-gear-wheel", amount=10})
		sctm.recipe_ingredient_add("sct-htech-random", { type="item", name="titanium-bearing", amount=10}, { type="item", name="titanium-bearing", amount=15})
	end
	
	-- lab intermediates
	if data.raw.item["steel-gear-wheel"] then
		sctm.recipe_ingredient_replace("sct-lab2-construction", "iron-gear-wheel", "steel-gear-wheel")
	end
	
	if data.raw.item["brass-alloy"] then
		sctm.recipe_ingredient_replace("sct-lab3-construction", "steel-plate", "brass-alloy")
		sctm.tech_dependency_add("sct-lab-t3", "zinc-processing")
	end

	if data.raw.item["tungsten-plate"] then
		sctm.recipe_ingredient_replace("sct-lab4-construction", "steel-plate", "tungsten-plate")
	end
end

if mods["bobelectronics"] then
	sctm.tech_dependency_add("sct-lab-t2", "electronics")
	if settings.startup["sct-military"].value == "tier2" then
		sctm.recipe_ingredient_replace("sct-mil-circuit3", "advanced-circuit", "electronic-circuit")
	end
	if data.raw.item["basic-circuit-board"] then
		sctm.recipe_ingredient_replace("sct-t2-instruments", "electronic-circuit", "basic-circuit-board")
		sctm.recipe_ingredient_replace("sct-lab1-mechanization", "electronic-circuit", "basic-circuit-board")
		sctm.recipe_ingredient_replace("sct-mil-circuit1", "electronic-circuit", "basic-circuit-board")
		sctm.recipe_ingredient_replace("sct-lab2-automatization", "electronic-circuit", "basic-circuit-board")
	end
	if data.raw.item["insulated-cable"] then
		sctm.recipe_ingredient_replace("sct-htech-capbank", "copper-cable", "insulated-cable")
		sctm.recipe_ingredient_replace("sct-htech-injector", "copper-cable", "insulated-cable")
	end

	if data.raw["recipe-category"]["electronics"] then
		data.raw.recipe["sct-t1-ironcore"].category = "electronics"
		data.raw.recipe["sct-t1-magnet-coils"].category = "electronics"
		data.raw.recipe["sct-t2-microcircuits"].category = "electronics"
		data.raw.recipe["sct-t2-micro-wafer"].category = "electronics"
		data.raw.recipe["sct-t2-reaction-nodes"].category = "electronics"
		data.raw.recipe["sct-mil-circuit3"].category = "electronics"
		data.raw.recipe["sct-mil-circuit2"].category = "electronics"
		data.raw.recipe["sct-mil-circuit1"].category = "electronics"
		if data.raw.recipe["sct-logistic-memory-unit"] then
			data.raw.recipe["sct-logistic-memory-unit"].category = "electronics"
		end
	end
end

if mods["bobpower"] then
	if data.raw.item["solar-panel-large"] then
		sctm.recipe_ingredient_replace("sct-lab3-construction", "solar-panel", "solar-panel-large")
		if data.raw.technology["bob-solar-energy-2"] then
			sctm.tech_dependency_remove("sct-lab-t3", "solar-energy")
			sctm.tech_dependency_add("sct-lab-t3", "bob-solar-energy-2")
		end
	end
end

-- add bob logistic pack if found - for now, might replace with qol later
if mods["bobtech"] then
	-- hide bob lab mk2	
	if data.raw.lab["lab-2"] then
		--table.insert(data.raw.item["lab-2"].flags, "hidden")
		sctm.tech_unlock_remove("advanced-research", "lab-2")
		-- if someone enables it, move it to sct labs group, and make it hightest tier lab
		data.raw.item["lab-2"].subgroup = "sct-labs"
		data.raw.item["lab-2"].order = "b[labs]-e[lab5]"
		data.raw.item["lab-2"].icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/lab2-64.png",
				icon_size = 64,
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/beta-64.png",
				icon_size = 64,
			},
		}		
		data.raw.recipe["lab-2"].subgroup = "sct-labs"
		data.raw.recipe["lab-2"].order = "b[labs]-e[lab5]"
		sctm.recipe_ingredient_replace("lab-2", "lab", "sct-lab-t4")
		sctm.lab_input_remove("sct-lab-t4","space-science-pack")
		if settings.startup["sct-lab-scaling"].value == true then
			data.raw.lab["lab-2"].researching_speed = 2
		else
			data.raw.lab["lab-2"].researching_speed = 1
		end
		data.raw.lab["sct-lab-t4"].next_upgrade = "lab-2"
		data.raw.lab["lab"].next_upgrade = "sct-lab-t2"
	end
	if data.raw.item["lab-alien"] then
		data.raw.item["lab-alien"].subgroup = "sct-labs"
		data.raw.item["lab-alien"].order = "b[labs]-f[lab6]"
		data.raw.item["lab-alien"].icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/alien-64.png",
			},
		}
		data.raw.lab["lab-alien"].icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/alien-64.png",
			},
		}
		data.raw.recipe["lab-alien"].subgroup = "sct-labs"
		data.raw.recipe["lab-alien"].order = "b[labs]-f[lab6]"
		sctm.recipe_ingredient_replace("lab-alien", "lab", "sct-lab-t3")
		sctm.tech_unlock_remove("alien-research", "lab-alien")
		sctm.tech_dependency_add("alien-research", "sct-alien-science-pack")
		sctm.tech_dependency_remove("alien-research", "advanced-research")
		sctm.tech_pack_replace("alien-research", "automation-science-pack", "science-pack-gold")
		sctm.tech_pack_replace("alien-research", "logistic-science-pack", "alien-science-pack")
		sctm.tech_pack_remove("alien-research", "chemical-science-pack")
	end
	if data.raw.tool["advanced-logistic-science-pack"] and  data.raw.recipe["advanced-logistic-science-pack"] then
		-- remove logistic pack from tier 1 lab
		sctm.lab_input_remove("lab", "advanced-logistic-science-pack")
		-- sctm.lab_input_add("sct-lab-t3", "advanced-logistic-science-pack")
		sctm.lab_input_add("sct-lab-t4", "advanced-logistic-science-pack")

		data.raw.tool["advanced-logistic-science-pack"].subgroup = "sct-advanced-logistic-science-pack"
		data.raw.tool["advanced-logistic-science-pack"].order = "h_a[logistic]"
		data.raw.tool["advanced-logistic-science-pack"].icon_size = 64
		data.raw.tool["advanced-logistic-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack-64.png"
		local logisticrecipe = table.deepcopy(data.raw.recipe["sct-advanced-logistic-science-pack"])
		sctm.hide_recipe("sct-advanced-logistic-science-pack")
		logisticrecipe.name = "advanced-logistic-science-pack"
		data.raw.recipe["advanced-logistic-science-pack"] = logisticrecipe
	end
	if data.raw.tool["science-pack-gold"] then
		data.raw.tool["science-pack-gold"].subgroup = "sct-alien-science-pack"
		data.raw.tool["science-pack-gold"].order = "0-gold-science-pack"
		data.raw.tool["science-pack-gold"].icon_size = 64
		data.raw.tool["science-pack-gold"].icon = "__ScienceCostTweakerM__/graphics/bobmods/gold-science-pack-64.png"
		data.raw.recipe["science-pack-gold"].subgroup = "sct-alien-science-pack"
		data.raw.recipe["science-pack-gold"].order = "0-gold-science-pack"
	end
	if data.raw.tool["alien-science-pack"] then
		data.raw.tool["alien-science-pack"].subgroup = "sct-alien-science-pack"
		data.raw.tool["alien-science-pack"].icon_size = 64
		data.raw.tool["alien-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-science-pack-64.png"
		data.raw.tool["alien-science-pack-blue"].subgroup = "sct-alien-science-pack"
		data.raw.tool["alien-science-pack-orange"].subgroup = "sct-alien-science-pack"
		data.raw.tool["alien-science-pack-purple"].subgroup = "sct-alien-science-pack"
		data.raw.tool["alien-science-pack-yellow"].subgroup = "sct-alien-science-pack"
		data.raw.tool["alien-science-pack-green"].subgroup = "sct-alien-science-pack"
		data.raw.tool["alien-science-pack-red"].subgroup = "sct-alien-science-pack"
	end

	if data.raw.item["brass-chest"] then
		sctm.recipe_ingredient_replace("sct-logistic-automated-storage", "steel-chest", "brass-chest")
		sctm.tech_dependency_add("sct-advanced-logistic-science-pack", "zinc-processing")
	end
end

if mods["bobmodules"] then
	if data.raw.item["lab-module"] then
		data.raw.item["lab-module"].subgroup = "sct-labs"
		data.raw.item["lab-module"].order = "b[labs]-g[lab7]"
		data.raw.item["lab-module"].icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/bobmods/module-lab-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/module-64.png",
			},
		}
		data.raw.lab["lab-module"].icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/bobmods/module-lab-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/module-64.png",
			},
		}
		data.raw.recipe["lab-module"].subgroup = "sct-labs"
		data.raw.recipe["lab-module"].order = "b[labs]-g[lab7]"
		sctm.recipe_ingredient_replace("lab-module", "lab", "sct-lab-t2")
--		sctm.tech_dependency_add("effect-transmission", "chemical-science-pack")
--		sctm.tech_dependency_add("effect-transmission-2", "production-science-pack")
--		sctm.tech_dependency_add("effect-transmission-3", "utility-science-pack")
	end
end

if mods["bobplates"] and mods["bobelectronics"] and mods["bobtech"] then
	sctm.recipe_ingredient_add("sct-logistic-memory-unit2", {type="item", name="silicon-wafer", amount=2}, {type="item", name="silicon-wafer", amount=4})
end

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value then
		if data.raw.recipe["yellow-filter-inserter"] then
			sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "yellow-filter-inserter")
		else
			sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "inserter")
		end
--		sctm.tech_pack_add("stack-inserter-2", {"production-science-pack",1})
--		sctm.log(serpent.block(data.raw.recipe["sct-lab4-manipulators"]))
--		sctm.recipe_ingredient_replace("sct-lab4-manipulators", "stack-filter-inserter", "red-stack-filter-inserter")
		sctm.tech_dependency_add("sct-lab-t4", "stack-inserter-2")
	end
	if settings.startup["bobmods-logistics-beltoverhaul"] and settings.startup["bobmods-logistics-beltoverhaul"].value then
		 sctm.recipe_ingredient_replace("sct-lab1-mechanization", "transport-belt", "basic-transport-belt")
	end
end

if mods["bobtech"] and settings.startup["bobmods-burnerphase"] then
	if (data.raw.recipe["steam-science-pack"]) then
		data.raw.recipe["steam-science-pack"].subgroup = "sct-science-pack-0"		
	end
	if (data.raw.tool["steam-science-pack"]) then
		data.raw.tool["steam-science-pack"].subgroup = "sct-science-pack-0"		
	end
	sctm.tech_disable("lab")
	if (data.raw.technology["lab"]) then
		local deps = sctm.tech_dependency_get("lab")
		if (deps and #deps) then
--			sctm.log(serpent.block(deps))
			for _i, prereq in pairs(deps) do
				sctm.tech_dependency_add("sct-lab-t1", prereq)
			end
		end
	end
	sctm.tech_disable("automation-science-pack")
	if (data.raw.technology["automation-science-pack"]) then
		local deps = sctm.tech_dependency_get("automation-science-pack")
--		sctm.log(serpent.block(deps))
		if (deps and #deps) then
			for _i, prereq in pairs(deps) do
				sctm.tech_dependency_add("sct-automation-science-pack", prereq)
			end
		end
	end
	if (data.raw.tool["steam-science-pack"] and not data.raw.tool["sct-science-pack-0"]) then
		data.raw.technology["sct-automation-science-pack"].unit.time = 20
		sctm.tech_pack_add("sct-automation-science-pack", {"steam-science-pack", 1})
		data.raw.technology["sct-lab-t1"].unit.time = 20
		sctm.tech_pack_add("sct-lab-t1", {"steam-science-pack", 10})		
	end
	if (data.raw.recipe["burner-lab"]) then
		data.raw.recipe["burner-lab"].subgroup = "sct-science-pack-0"
	end
	if (data.raw.lab["burner-lab"]) then
		data.raw.lab["burner-lab"].subgroup = "sct-science-pack-0"
	end

	if (data.raw.technology["steam-automation"]) then
		sctm.tech_dependency_remove("automation","basic-automation")
		sctm.tech_dependency_add("automation","steam-automation")
	end
end