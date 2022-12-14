zgo2 = zgo2 or {}
zgo2.config = zgo2.config or {}
zgo2.config.Plants = {}
zgo2.config.Plants_ListID = zgo2.config.Plants_ListID or {}
local function AddPlant(data)

	// Convert the Job commands to job ids
	data = zgo2.util.ConvertJobCommandToJobID(data)

	local PlantID = table.insert(zgo2.config.Plants,zgo2.Plant.VerifyData(data))

	zgo2.config.Plants_ListID[data.uniqueid] = PlantID
	return PlantID
end

/*

	This Plant config can be edited using the ingame editor

*/
AddPlant({
	jobs = {},
	weed = {
		thc = 50,
		amount = 1500,
	},
	uniqueid = 246224726,
	style = {
		hair = {
			pattern_id = 4,
			color01 = Color(255, 73, 164, 255),
			y = 0,
			color02 = Color(255, 204, 54, 255),
			x = 0,
			texture = "zerochain/zgo2/plant/hair/zgo2_hair",
		},
		seed = {
			texture = "path",
			color = Color(0, 255, 0, 255),
		},
		scale = 1.45,
		leaf = {
			pattern_id = 1,
			color01 = Color(73, 177, 82, 255),
			color02 = Color(54, 122, 54, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
		},
		bud = {
			pattern_id = 4,
			color01 = Color(255, 161, 0, 255),
			color02 = Color(209, 151, 168, 255),
			texture = "zerochain/zgo2/plant/bud/zgo2_bud02",
		},
		mesh = 2,
		height = 1,
		leaf02 = {
			pattern_id = 1,
			color01 = Color(56, 83, 52, 255),
			color02 = Color(165, 180, 95, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
		},
		width = 1.14,
		seedbox = {
			title_font = "F1MenuTitle",
			color = Color(0, 255, 0, 255),
			phongexponent = 15,
			imgur_scale_h = 1,
			fresnel = 1.58,
			title_pos_y = 0.15,
			[ "title_enabled" ] = true,
			phongboost = 3,
			phongtint = Color(85, 109, 56, 255),
			imgur_color = Color(171, 161, 115, 255),
			imgur_scale_w = 1,
			title_color = Color(213, 188, 116, 255),
			imgur_pos_y = 0.34,
			imgur_pos_x = 0.06,
			imgur_scale = 0.32,
			imgur_url = "Voh7Apg",
			imgur_blendmode = "Multiply",
			texture = "path",
			title_pos_x = 0.32,
		},
		stem = {
			pattern_id = 4,
			color01 = Color(97, 145, 86, 255),
			y = 0,
			color02 = Color(73, 116, 73, 255),
			x = 0,
			texture = "zerochain/zgo2/plant/stem/zgo2_stem01",
		},
		leaf01 = {
			pattern_id = 4,
			color01 = Color(80, 155, 53, 255),
			color02 = Color(101, 112, 61, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
		},
	},
	ranks = {},
	sell = {
		value = 7,
	},
	screeneffect = {
		refract_spin_snap = 0.07,
		refract_blink_min = 0.08,
		refract_spin_speed = -180,
		basetexture_blink_interval = 2.05,
		basetexture_spin_snap = 1.97,
		refract_blink_interval = 2.27,
		refract_alpha = 0.3,
		basetexture_color = Color(86, 81, 170, 255),
		audio_dsp = 12,
		refract_scale = 0.1,
		bloom_color = Color(151, 32, 132, 255),
		basetexture_scale = 1.25,
		basetexture_alpha = 0.3,
		bloom_sizey = 100,
		mblur_delay = 0.01,
		mblur_addalpha = 45.87,
		basetexture_url = "7MWdbsI",
		bloom_passes = 10,
		refract_bounce_max = 5.51,
		basetexture_bounce_interval = 1.69,
		refract_blink_max = 0.67,
		refract_bounce_interval = 2.98,
		bloom_colormul = 1.93,
		refract_ref = 0.03,
		refract_url = "7MWdbsI",
		basetexture_spin_speed = -176,
		audio_music = "",
		basetexture_bounce_max = 0.61,
		refract_bounce_min = 0.06,
		basetexture_bounce_min = 3.5,
		refract_color = Color(47, 116, 203, 255),
		refract_blur = 3,
		bloom_multiply = 84.9,
		basetexture_blink_max = 0.41,
		refract_tint = Color(219, 210, 153, 255),
		mblur_drawalpha = 0.81,
		basetexture_blink_min = 0.45,
		bloom_darken = 0.47,
		bloom_sizex = 9.73,
	},
	name = "OG Kush",
	grow = {
		pref_lightcolor_color = Color(255, 255, 255, 255),
		time = 300,
		water = 1000,
	},
})

AddPlant({
	jobs = {},
	weed = {
		thc = 50,
		amount = 1500,
	},
	uniqueid = "dc9e13b176",
	grow = {
		pref_lightcolor_color = Color(170, 0, 255, 255),
		time = 500,
		water = 2000,
		[ "pref_lightcolor_req" ] = true,
	},
	ranks = {},
	sell = {
		value = 10,
	},
	screeneffect = {
		refract_spin_snap = 0.73,
		refract_blink_min = 0.49,
		refract_spin_speed = -14.5,
		basetexture_blink_interval = 0.27,
		basetexture_spin_snap = 45,
		refract_blink_interval = 1.54,
		refract_alpha = 0.63,
		basetexture_color = Color(167, 26, 186, 255),
		audio_dsp = 31,
		refract_scale = 0.1,
		basetexture_bounce_max = 1.46,
		basetexture_scale = 0.75,
		basetexture_alpha = 0.31,
		bloom_sizey = 0,
		mblur_delay = 0.02,
		mblur_addalpha = 2.73,
		basetexture_url = "xizvhL7",
		bloom_passes = 10,
		refract_bounce_max = 11.32,
		basetexture_bounce_interval = 1.35,
		refract_blink_max = 0.54,
		refract_bounce_interval = 2.35,
		refract_bounce_min = 11.98,
		refract_ref = 0.01,
		bloom_colormul = 11.27,
		basetexture_spin_speed = 180,
		audio_music = "",
		bloom_darken = 0.24,
		refract_url = "8SXjP1Y",
		basetexture_bounce_min = 1.26,
		refract_color = Color(216, 172, 163, 255),
		refract_blur = 3,
		bloom_multiply = 0.48,
		refract_tint = Color(202, 129, 208, 255),
		basetexture_blink_max = 0.64,
		mblur_drawalpha = 0.84,
		basetexture_blink_min = 0.11,
		bloom_color = Color(191, 0, 255, 255),
		bloom_sizex = 100,
	},
	name = "Purble Haze",
	style = {
		hair = {
			pattern_id = 2,
			color01 = Color(127, 44, 133, 255),
			texture = "zerochain/zgo2/plant/hair/zgo2_hair",
			color02 = Color(166, 56, 116, 255),
		},
		width = 1.25,
		bud = {
			pattern_id = 4,
			color01 = Color(213, 61, 137, 255),
			texture = "zerochain/zgo2/plant/bud/zgo2_bud01",
			color02 = Color(162, 136, 216, 255),
		},
		mesh = 3,
		scale = 1.44,
		stem = {
			pattern_id = 4,
			color01 = Color(130, 133, 44, 255),
			texture = "zerochain/zgo2/plant/stem/zgo2_stem01",
			color02 = Color(166, 56, 116, 255),
		},
		leaf02 = {
			pattern_id = 1,
			color01 = Color(141, 50, 167, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
			color02 = Color(47, 86, 150, 255),
		},
		seedbox = {
			title_pos_x = 0.31,
			phongtint = Color(175, 81, 222, 255),
			imgur_color = Color(225, 92, 255, 255),
			imgur_scale = 0.22,
			imgur_blendmode = "Multiply",
			title_color = Color(191, 0, 255, 255),
			imgur_pos_y = 0,
			phongexponent = 15,
			imgur_pos_x = 0,
			imgur_url = "l3ogBgn",
			fresnel = 1,
			title_pos_y = 0.15,
			title_font = "ContentHeader",
			[ "title_enabled" ] = true,
			phongboost = 10,
		},
		height = 0.88,
		leaf01 = {
			pattern_id = 4,
			color01 = Color(88, 44, 133, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
			color02 = Color(166, 56, 116, 255),
		},
	},
})

AddPlant({
	jobs = {},
	weed = {
		thc = 50,
		amount = 2000,
	},
	uniqueid = "18d12fa7f7",
	grow = {
		pref_lightcolor_color = Color(0, 119, 255, 255),
		time = 500,
		water = 2000,
		[ "pref_lightcolor_req" ] = true,
	},
	ranks = {},
	sell = {
		value = 2,
	},
	screeneffect = {
		refract_spin_snap = 0.73,
		refract_blink_min = 0.49,
		refract_spin_speed = -14.5,
		basetexture_blink_interval = 0.27,
		basetexture_spin_snap = 0,
		refract_blink_interval = 1.54,
		bloom_darken = 0.24,
		basetexture_color = Color(26, 159, 186, 255),
		audio_dsp = 31,
		refract_scale = 0.1,
		basetexture_bounce_max = 1.46,
		basetexture_scale = 0.61,
		basetexture_alpha = 0.31,
		bloom_sizey = 0,
		mblur_delay = 0.02,
		mblur_addalpha = 2.73,
		basetexture_url = "qlBMyAB",
		bloom_passes = 10,
		refract_bounce_max = 11.32,
		basetexture_bounce_interval = 1.35,
		mblur_drawalpha = 0.84,
		refract_bounce_interval = 2.35,
		bloom_colormul = 11.27,
		refract_ref = 0.01,
		basetexture_blink_min = 0.11,
		basetexture_spin_speed = 24.16,
		audio_music = "",
		bloom_color = Color(0, 12, 255, 255),
		refract_bounce_min = 11.98,
		basetexture_bounce_min = 1.26,
		refract_color = Color(216, 172, 163, 255),
		refract_blink_max = 0.54,
		bloom_multiply = 0.48,
		basetexture_blink_max = 0.64,
		refract_tint = Color(129, 200, 208, 255),
		refract_blur = 3,
		refract_url = "8SXjP1Y",
		refract_alpha = 0.63,
		bloom_sizex = 100,
	},
	name = "Iccy Kush",
	style = {
		hair = {
			pattern_id = 2,
			color01 = Color(172, 253, 255, 255),
			color02 = Color(94, 139, 255, 255),
			texture = "zerochain/zgo2/plant/hair/zgo2_hair",
		},
		width = 1.25,
		bud = {
			pattern_id = 3,
			color01 = Color(61, 132, 213, 255),
			color02 = Color(136, 208, 216, 255),
			texture = "zerochain/zgo2/plant/bud/zgo2_bud01",
		},
		leaf02 = {
			pattern_id = 1,
			color01 = Color(50, 155, 167, 255),
			color02 = Color(47, 47, 149, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
		},
		scale = 1.49,
		height = 0.96,
		mesh = 1,
		seedbox = {
			phongtint = Color(81, 186, 222, 255),
			title_pos_x = 0.31,
			imgur_color = Color(91, 227, 255, 255),
			imgur_scale = 0.1,
			phongexponent = 15,
			title_color = Color(255, 255, 255, 255),
			imgur_pos_y = 0.2,
			imgur_blendmode = "Multiply",
			imgur_pos_x = 0,
			title_font = "ContentHeader",
			fresnel = 1,
			title_pos_y = 0.15,
			imgur_url = "qlBMyAB",
			[ "title_enabled" ] = true,
			phongboost = 10,
		},
		stem = {
			pattern_id = 4,
			color01 = Color(44, 110, 133, 255),
			color02 = Color(56, 76, 166, 255),
			texture = "zerochain/zgo2/plant/stem/zgo2_stem01",
		},
		leaf01 = {
			pattern_id = 4,
			color01 = Color(44, 133, 131, 255),
			color02 = Color(56, 155, 166, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
		},
	},
})

AddPlant({
	jobs = {},
	weed = {
		thc = 50,
		amount = 500,
	},
	uniqueid = "052ddbd3bb",
	grow = {
		pref_lightcolor_color = Color(255, 255, 255, 255),
		time = 600,
		water = 1000,
	},
	ranks = {},
	sell = {
		value = 10,
	},
	screeneffect = {
		refract_spin_snap = 0.83,
		refract_blink_min = 0.72,
		refract_spin_speed = 232,
		basetexture_blink_interval = 2.4,
		basetexture_spin_snap = 1.31,
		refract_blink_interval = 0.04,
		refract_alpha = 0.59,
		basetexture_color = Color(255, 150, 30, 255),
		audio_dsp = 8,
		refract_scale = 1.07,
		bloom_color = Color(237, 204, 105, 255),
		basetexture_scale = 0.89,
		basetexture_alpha = 0.13,
		bloom_sizey = 85.12,
		mblur_delay = 0.01,
		mblur_addalpha = 26.98,
		basetexture_url = "9vesYIc",
		bloom_passes = 6,
		refract_bounce_max = 12.91,
		basetexture_bounce_interval = 1.42,
		refract_blink_max = 0.55,
		refract_bounce_interval = 2.94,
		refract_url = "9vesYIc",
		refract_ref = 0.02,
		refract_bounce_min = 10.98,
		basetexture_spin_speed = -182,
		audio_music = "",
		basetexture_bounce_max = 6.66,
		bloom_colormul = 1.56,
		basetexture_bounce_min = 14.68,
		refract_color = Color(90, 253, 52, 255),
		refract_blur = 1,
		bloom_multiply = 21.07,
		basetexture_blink_max = 0.91,
		refract_tint = Color(255, 207, 64, 255),
		mblur_drawalpha = 0.76,
		basetexture_blink_min = 0.74,
		bloom_darken = 0.19,
		bloom_sizex = 11.01,
	},
	name = "Lemon Kush",
	style = {
		hair = {
			pattern_id = 4,
			color01 = Color(255, 190, 153, 255),
			color02 = Color(255, 212, 85, 255),
			texture = "zerochain/zgo2/plant/hair/zgo2_hair",
		},
		width = 1.13,
		bud = {
			pattern_id = 4,
			color01 = Color(209, 203, 75, 255),
			color02 = Color(190, 150, 105, 255),
			texture = "zerochain/zgo2/plant/bud/zgo2_bud01",
		},
		leaf02 = {
			pattern_id = 1,
			color01 = Color(255, 212, 0, 255),
			color02 = Color(42, 103, 47, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
		},
		scale = 1.53,
		height = 0.97,
		mesh = 2,
		seedbox = {
			phongtint = Color(255, 255, 255, 255),
			title_font = "F1MenuTitle",
			title_pos_x = 0.31,
			imgur_color = Color(255, 255, 255, 29),
			imgur_scale = 0.29,
			phongexponent = 15,
			title_color = Color(255, 255, 255, 255),
			imgur_pos_y = 0.36,
			imgur_blendmode = "Additive",
			imgur_pos_x = 0.41,
			imgur_url = "TMbL3hA",
			fresnel = 1,
			title_pos_y = 0.15,
			main_color = Color(255, 161, 0, 255),
			[ "title_enabled" ] = true,
			phongboost = 0.5,
		},
		stem = {
			pattern_id = 1,
			color01 = Color(255, 250, 174, 255),
			color02 = Color(50, 80, 38, 255),
			texture = "zerochain/zgo2/plant/stem/zgo2_stem01",
		},
		leaf01 = {
			pattern_id = 1,
			color01 = Color(255, 137, 2, 255),
			color02 = Color(74, 145, 46, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
		},
	},
})

AddPlant({
	jobs = {},
	weed = {
		thc = 50,
		amount = 2000,
	},
	uniqueid = "587ccfc975",
	grow = {
		pref_lightcolor_color = Color(0, 119, 255, 255),
		time = 500,
		water = 2000,
		[ "pref_lightcolor_req" ] = true,
	},
	ranks = {},
	sell = {
		value = 2,
	},
	screeneffect = {
		refract_spin_snap = 0.73,
		refract_blink_min = 0.49,
		refract_spin_speed = -14.5,
		basetexture_blink_interval = 0.27,
		basetexture_spin_snap = 0,
		refract_blink_interval = 1.54,
		refract_alpha = 0.63,
		basetexture_color = Color(85, 11, 11, 255),
		audio_dsp = 31,
		refract_scale = 0.1,
		basetexture_bounce_max = 1.46,
		basetexture_scale = 0.13,
		basetexture_alpha = 0.16,
		bloom_sizey = 49.5,
		mblur_delay = 0.02,
		mblur_addalpha = 2.73,
		basetexture_url = "p8hx90B",
		bloom_passes = 10,
		refract_bounce_max = 11.32,
		basetexture_bounce_interval = 1.35,
		refract_blink_max = 0.54,
		refract_bounce_interval = 2.35,
		bloom_colormul = 11.27,
		refract_ref = 0,
		refract_url = "8SXjP1Y",
		basetexture_spin_speed = 24.16,
		audio_music = "",
		bloom_darken = 0.69,
		refract_bounce_min = 11.98,
		basetexture_bounce_min = 1.26,
		refract_color = Color(216, 172, 163, 255),
		refract_blur = 3,
		bloom_multiply = 3.08,
		refract_tint = Color(208, 145, 129, 255),
		basetexture_blink_max = 0.64,
		mblur_drawalpha = 0.84,
		basetexture_blink_min = 0.11,
		bloom_color = Color(255, 0, 80, 255),
		bloom_sizex = 50,
	},
	name = "Dark Devil",
	style = {
		hair = {
			pattern_id = 2,
			color01 = Color(142, 49, 102, 255),
			texture = "zerochain/zgo2/plant/hair/zgo2_hair",
			color02 = Color(255, 88, 88, 255),
		},
		width = 1.25,
		bud = {
			pattern_id = 9,
			color01 = Color(187, 74, 57, 255),
			texture = "zerochain/zgo2/plant/bud/zgo2_bud01",
			color02 = Color(179, 70, 89, 255),
		},
		mesh = 1,
		scale = 1.49,
		stem = {
			pattern_id = 1,
			color01 = Color(155, 54, 54, 255),
			texture = "zerochain/zgo2/plant/stem/zgo2_stem01",
			color02 = Color(120, 33, 33, 255),
		},
		leaf02 = {
			pattern_id = 4,
			color01 = Color(161, 40, 40, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
			color02 = Color(193, 70, 70, 255),
		},
		seedbox = {
			title_font = "ContentHeader",
			title_pos_x = 0.31,
			phongtint = Color(81, 186, 222, 255),
			imgur_color = Color(139, 53, 53, 255),
			imgur_scale = 0.1,
			imgur_blendmode = "Multiply",
			title_color = Color(255, 255, 255, 255),
			imgur_pos_y = 0.26,
			phongexponent = 15,
			imgur_pos_x = 0.06,
			imgur_url = "xizvhL7",
			fresnel = 1,
			title_pos_y = 0.15,
			main_color = Color(255, 255, 255, 255),
			[ "title_enabled" ] = true,
			phongboost = 10,
		},
		height = 0.96,
		leaf01 = {
			pattern_id = 4,
			color01 = Color(179, 52, 80, 255),
			texture = "zerochain/zgo2/plant/leaf/zgo2_leaf07",
			color02 = Color(228, 110, 110, 255),
		},
	},
})
