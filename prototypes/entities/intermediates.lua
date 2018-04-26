data:extend({
	
	-- Create new intermediary products unique to science pack creation.
	-- ===================================================================

	{
		type = "item-group",
		name = "sct-science",
		order = "aaa-a",
		inventory_order = "c-a",
		icon = "__base__/graphics/item-group/fluids.png",
		icon_size = 64,

	},

	{
		type = "item-subgroup",
		name = "sct-sciencestuff",
		group = "sct-science",
		order = "a-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-labs",
		group = "sct-science",
		order = "a-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-byproducts",
		group = "sct-science",
		order = "b-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-1",
		group = "sct-science",
		order = "c-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-2",
		group = "sct-science",
		order = "d-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-3",
		group = "sct-science",
		order = "e-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-mil",
		group = "sct-science",
		order = "f-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-prod",
		group = "sct-science",
		order = "g-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-hightech",
		group = "sct-science",
		order = "h-a",
	},
	
	-- Junk Byproducts
	-- =============================
	{
		type = "item",
		name = "sct-waste-ironcopper",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-byproducts",
		order = "a[mixedewaste]",
		stack_size = 50
	},
	{
		type = "item",
		name = "sct-waste-copperonly",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-byproducts",
		order = "a[copperwaste]",
		stack_size = 50
	},
	
	-- Tier 1 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t1-ironcore",
		icon = "__ScienceCostTweakerM__/graphics/icons/iron-core.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-1",
		order = "b[t1-ironcore]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t1-magnet-coils",
		icon = "__ScienceCostTweakerM__/graphics/icons/magnet-coils.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-1",
		order = "b[t1-magnet-coils]",
		stack_size = 200
	},

	-- Tier 2 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t2-reaction-nodes",
		icon = "__ScienceCostTweakerM__/graphics/icons/reaction-nodes.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b5[t2-reaction-nodes]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-instruments",
		icon = "__ScienceCostTweakerM__/graphics/icons/instruments.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b1[t2-instruments]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-microcircuits",
		icon = "__ScienceCostTweakerM__/graphics/icons/microcircuits.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b2[t2-microcircuits]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-micro-wafer",
		icon = "__ScienceCostTweakerM__/graphics/icons/micro-wafer.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b3[t2-micro-wafer]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-wafer-stamp",
		icon = "__ScienceCostTweakerM__/graphics/icons/wafer-stamp.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b4[t2-wafer-stamp]",
		stack_size = 200
	},

	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t3-flash-fuel",
		icon = "__ScienceCostTweakerM__/graphics/icons/flash-fuel.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b2",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-foci",
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-foci.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b3",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-emitter",
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-emitter.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b4",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-femto-lasers",
		icon = "__ScienceCostTweakerM__/graphics/icons/femto-lasers.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b1",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-atomic-sensors",
		icon = "__ScienceCostTweakerM__/graphics/icons/atomic-sensors.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b5",
		stack_size = 200
	},

	-- Military Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-mil-subplating",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-subplating.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b2",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-plating",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-plating.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b1",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit1",
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_1.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b5",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit2",
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_2.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b4",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit3",
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_3.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b3",
		stack_size = 200
	},

	-- Production Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-prod-biosilicate",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-biosilicate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b-a-c",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-baked-biopaste",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-baked-biopaste.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b-a-b",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-bioprocessor",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/bioprocessor.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b-a-a",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-overclocker",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/overclocker.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b-b",
		stack_size = 200
	},

	-- High-Tech Intermediary products.
	-- =============================
	
	-- Energy Bank
	{
		type = "item",
		name = "sct-htech-capbank",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-capbank.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b1[capbank]",
		stack_size = 200
	},
	
	-- Particle Injector
	{
		type = "item",
		name = "sct-htech-injector",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-injector.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b2[injector]",
		stack_size = 200
	},

	-- Thermal Store
	{
		type = "item",
		name = "sct-htech-thermalstore",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b5[thermalstore]",
		stack_size = 200
	},

	-- Heated Thermal Store
	{
		type = "item",
		name = "sct-htech-thermalstore-heated",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore-heated.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b4[thermalstore-heated]",
		stack_size = 200
	},

	-- Mechanical Random Number Analyzer
	{
		type = "item",
		name = "sct-htech-random",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-random.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b3[random]",
		stack_size = 200
	},

	--[[
	-- Quantum Plating
	{
		type = "item",
		name = "sct-bm4-plating",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-plating]",
		stack_size = 200
	},

	-- Charged Coils
	{
		type = "item",
		name = "sct-bm4-part3b",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part1c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3b]",
		stack_size = 200
	},

	-- Chemical Temper
	{
		type = "item",
		name = "sct-bm4-part3c",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3c]",
		stack_size = 200
	},

	-- Virtual Particle Emitter
	{
		type = "item",
		name = "sct-bm4-part3d",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3d]",
		stack_size = 200
	},

	-- Capacitor Stack
	{
		type = "item",
		name = "sct-bm4-part4a",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4a]",
		stack_size = 200
	},

	-- Thermal Shield
	{
		type = "item",
		name = "sct-bm4-part4b",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4b]",
		stack_size = 200
	},

	-- Nanofusion Core
	{
		type = "item",
		name = "sct-bm4-part4c",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4c]",
		stack_size = 200
	},

	-- Virtual Particle Shield
	{
		type = "item",
		name = "sct-bm4-part4d",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4d]",
		stack_size = 200
	},
	]]--

})
