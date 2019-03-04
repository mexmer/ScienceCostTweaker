-- add new technology tree for science packs
data:extend({
	-- TIER 1
	-- tier 1 pack
	{
		type = "technology",
		name = "sct-automation-science-pack",
		icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-1-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "automation-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t1-ironcore",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t1-magnet-coils",
			},
		},
		prerequisites =
		{
			"sct-lab-t1",
		},
		unit =
		{
			count = 30,
			ingredients =
			{
--				{"science-pack-0", 1},
			},
			time = 1,
		},
		order = "sct-pack-a[t1]",
	},

	-- TIER 2
	-- tier 2 pack
	{
		type = "technology",
		name = "sct-logistic-science-pack",
		icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-2-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "logistic-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-instruments",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-microcircuits",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-micro-wafer",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-wafer-stamp",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-reaction-nodes",
			},
		},
		prerequisites =
		{
			"automation-2",
			"sct-lab-t2",
		},
		unit =
		{
			count = 60,
			ingredients =
			{
				{"automation-science-pack", 1},
			},
			time = 5,
		},
		order = "sct-pack-b[t2]",
	},

	-- TIER 3
	-- tier 3 pack
	{
		type = "technology",
		name = "sct-chemical-science-pack",
		icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-3-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "chemical-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t3-atomic-sensors",
			},
		},
		prerequisites =
		{
			"sct-lab-t3",
		},
		unit =
		{
			count = 90,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 10,
		},
		order = "sct-pack-c[t3]",
	},

	-- military // unlocked by t2/t3 depends on settings
	{
		type = "technology",
		name = "sct-military-science-pack",
		icon = "__ScienceCostTweakerM__/graphics/icons/military-science-pack-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "military-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-subplating",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-plating",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-circuit1",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-circuit2",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-circuit3",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-copper",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-mixed",
			},
		},
		prerequisites =
		{
			"military-2",
		},
		unit =
		{
			count = 60,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 10,
		},
		order = "sct-pack-d[mil]",
	},
	
	-- TIER 4
	-- production - tier 4
	{
		type = "technology",
		name = "sct-production-science-pack",
		icon = "__ScienceCostTweakerM__/graphics/icons/production-science-pack-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "production-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-biosilicate",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-baked-biopaste",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-bioprocessor",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-overclocker",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-chipcase",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-mixed",
			},
		},
		prerequisites =
		{
--			"chemical-science-pack",
			"circuit-network",
			"sct-lab-t4",
		},
		unit =
		{
			count = 120,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 40,
		},
		order = "sct-pack-e[prod]",
	},
	
	-- utility - tier 4
	{
		type = "technology",
		name = "sct-utility-science-pack",
		icon = "__ScienceCostTweakerM__/graphics/icons/high-tech-science-pack-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "utility-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-thermalstore",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-thermalstore-heated",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-capbank",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-random",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-copper",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-mixed",
			},
		},
		prerequisites =
		{
			"sct-lab-t4",
			"battery",
			"advanced-material-processing",
		},
		unit =
		{
			count = 120,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 40,
		},
		order = "sct-pack-f[ht]",
	},
	-- TIER S
	-- space - tier s
	{
		type = "technology",
		name = "sct-space-science-pack",
		icon = "__ScienceCostTweakerM__/graphics/icons/space-science-pack-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "satellite",
			},
		},
		prerequisites =
		{
--			"sct-lab-s",
			"sct-lab-t4"			
		},
		unit =
		{
			count = 500,
			ingredients =
			{
				{"automation-science-pack", 5},
				{"logistic-science-pack", 5},
				{"military-science-pack",5},
				{"chemical-science-pack", 5},
				{"production-science-pack",5},
				{"utility-science-pack",5},				
			},
			time = 60,
		},
		order = "sct-pack-f[ht]",
	},
})

-- military tech dependencies, based on settings
if settings.startup["sct-military"].value == "tier2" then
	sctm.tech_dependency_add("sct-research-mil", "automation-science-pack")
else
	sctm.tech_dependency_add("sct-research-mil", "chemical-science-pack")
	sctm.tech_pack_add("sct-research-mil", {"chemical-science-pack",1})
	data.raw.technology["sct-research-mil"].unit.time = 4
	data.raw.technology["sct-research-mil"].unit.count = 90
end
