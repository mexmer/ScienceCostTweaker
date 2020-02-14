data:extend({
--[[
	-- sct-lab-1 hidden, using normal lab
	{
		type = "item",
		name = "sct-lab-t1",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-1/icon.png",
		subgroup = "sct-labs",
		order = "a[labs]-a[sct-lab-t1]",
		place_result = "sct-lab-t1",
		stack_size = 10,
		enabled = true,
	},

	{
		type = "lab",
		name = "sct-lab-t1",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-1/icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-1"},
		max_health = 150,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-1/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-1/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "60kW",
		inputs =
		{
			"automation-science-pack"
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		},
		fast_replaceable_group = "lab",
	},	
]]--
	-- New Science Labs, from Tier 2 to Tier 4. (Vanilla lab becomes Tier 1)
	-- ===================================================================
	-- == Tier 2 ==
	{
		type = "item",
		name = "sct-lab-t2",
		icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/sct-lab-t2/icon-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/2-64.png",
			},
		},		
		subgroup = "sct-labs",
		order = "a[labs]-b[sct-lab-t2]",
		place_result = "sct-lab-t2",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-t2",
		icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/sct-lab-t2/icon-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/2-64.png",
			},
		},		
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-t2"},
		max_health = 200,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-t2/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-t2/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "150kW",
		inputs =
		{
			"automation-science-pack",
			"logistic-science-pack"
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9},
		},
		fast_replaceable_group = "lab",
	},
	-- == Tier 3 ==
	{
		type = "item",
		name = "sct-lab-t3",
		icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/sct-lab-t3/icon-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/3-64.png",
			},
		},		
		subgroup = "sct-labs",
		order = "a[labs]-c[sct-lab-t3]",
		place_result = "sct-lab-t3",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-t3",
		icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/sct-lab-t3/icon-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/3-64.png",
			},
		},		
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-t3"},
		max_health = 250,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-t3/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-t3/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "500kW",
		inputs =
		{
			"automation-science-pack",
			"logistic-science-pack",
			"chemical-science-pack",
			"military-science-pack",
--			"production-science-pack",
--			"utility-science-pack",
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		},
		fast_replaceable_group = "lab",
	},

	-- == Tier 4 ==
	{
		type = "item",
		name = "sct-lab-t4",
		icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/sct-lab-t4/icon-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/4-64.png",
			},
		},		
		subgroup = "sct-labs",
		order = "a[labs]-d[sct-lab-t4]",
		place_result = "sct-lab-t4",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-t4",
		icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/sct-lab-t4/icon-64.png",
			},
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/overlays/4-64.png",
			},
		},		
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-t4"},
		max_health = 300,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-t4/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-t4/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "2MW",
		inputs =
		{
			"automation-science-pack",
			"logistic-science-pack",
			"chemical-science-pack",
			"military-science-pack",
			"production-science-pack",
			"utility-science-pack",
			"space-science-pack"
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		},
		fast_replaceable_group = "lab",
	},
	
})

-- Rework vanilla science lab into a Tier 1 science lab.
data.raw["item"]["lab"].subgroup = "sct-labs"
data.raw["item"]["lab"].order = "a[labs]-a[lab1]"
data.raw["item"]["lab"].icons = 
{
	{
		icon_size = 64,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-t1/icon-64.png",
	},
	{
		icon_size = 64,
		icon = "__ScienceCostTweakerM__/graphics/overlays/1-64.png",
	},
}

data.raw["lab"]["lab"].icons = 
{
	{
		icon_size = 64,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-t1/icon-64.png",
	},
	{
		icon_size = 64,
		icon = "__ScienceCostTweakerM__/graphics/overlays/1-64.png",
	},
}
data.raw["lab"]["lab"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
data.raw["lab"]["lab"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
data.raw["lab"]["lab"].on_animation =
	{
		filename = "__ScienceCostTweakerM__/graphics/sct-lab-t1/entity.png",
		width = 113,
		height = 91,
		frame_count = 33,
		line_length = 11,
		animation_speed = 1 / 3,
		shift = {0.2, 0.15}
	}
data.raw["lab"]["lab"].off_animation =
	{
		filename = "__ScienceCostTweakerM__/graphics/sct-lab-t1/entity.png",
		width = 113,
		height = 91,
		frame_count = 1,
		shift = {0.2, 0.15}
	}
data.raw["lab"]["lab"].energy_usage = "60kW"
data.raw["lab"]["lab"].inputs =
	{
		"automation-science-pack"
	}
data.raw["lab"]["lab"].module_specification =
	{
		module_slots = 0,
		max_entity_info_module_icons_per_row = 3,
		max_entity_info_module_icon_rows = 1,
		module_info_icon_shift = {0, 0.9}
	}
data.raw["lab"]["lab"].fast_replaceable_group = "lab"

if settings.startup["sct-lab-modules"].value == "tier3" then
	data.raw["lab"]["sct-lab-t3"].module_specification.module_slots = 1
	data.raw["lab"]["sct-lab-t4"].module_specification.module_slots = 2
end

if settings.startup["sct-lab-modules"].value == "tier4" then
	data.raw["lab"]["sct-lab-t4"].module_specification.module_slots = 2
end

if settings.startup["sct-lab-scaling"].value == true then
	data.raw["lab"]["sct-lab-t2"].researching_speed = 1.1
	data.raw["lab"]["sct-lab-t3"].researching_speed = 1.3
	data.raw["lab"]["sct-lab-t4"].researching_speed = 1.5
end

if settings.startup["sct-military"].value == "tier2" then
        sctm.lab_input_add("sct-lab-t2", "military-science-pack")
end

if DiscoScience then
	DiscoScience.prepareLab(data.raw["lab"]["lab"])
	DiscoScience.prepareLab(data.raw["lab"]["sct-lab-t2"])
	DiscoScience.prepareLab(data.raw["lab"]["sct-lab-t3"])
	DiscoScience.prepareLab(data.raw["lab"]["sct-lab-t4"])
end