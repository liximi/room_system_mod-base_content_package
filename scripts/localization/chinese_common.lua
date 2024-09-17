-- Rooms
STRINGS.RBC_ROOMS = {
	WAREHOUSE = {
		NAME = "仓库",
		DESC = function() return string.format("升级仓库中的箱子时，有 %.1f%% 概率不消耗升级工具。", RBC.WAREHOUSE_FREE_UPGRDE_PROBABILITY * 100) end
	},
	KITCHEN = {
		NAME = "厨房",
		DESC = function() return string.format("烹饪时间缩短 %d%%。", RBC.KITCHEN_COOKTIME_MULT * -100) end
	},
	PRIMITIVE_KITCHEN = {
		NAME = "简陋厨房",
		DESC = function() return string.format("烹饪时间缩短 %d%%。", RBC.PRIMITIVE_KITCHEN_COOKTIME_MULT * -100) end
	},
	ADVANCED_KITCHEN = {
		NAME = "专业厨房",
		DESC = function() return string.format("烹饪时间缩短 %d%%。", RBC.ADVANCED_KITCHEN_COOKTIME_MULT * -100) end
	},
	LUXURIOUS_KITCHEN = {
		NAME = "豪华厨房",
		DESC = function() return string.format("烹饪时间缩短 %d%%。", RBC.LUXURIOUS_KITCHEN_COOKTIME_MULT * -100) end
	},
	BASIC_WORKSHOP = {
		NAME = "基础工作间",
		DESC = "加速制作过程。"
	},
	WORKSHOP = {
		NAME = "工作间",
		DESC = function() return string.format("加速制作过程，在工作间内制作物品时有 %.2f%% 概率使产物数量+1。", RBC.WORKSHOP_MULT_CRAFTING_PROBABILITY * 100) end
	},
	CHEMICAL_LABORATORY = {
		NAME = "化学实验室",
		DESC = function() return string.format("加速制作过程，在化学实验室间内制作物品时有 %.2f%% 概率使产物数量+1。", RBC.CHEMICAL_LABORATORY_MULT_CRAFTING_PROBABILITY * 100) end
	},
	BEDROOM = {
		NAME = "卧室",
		DESC = function() return string.format("睡觉时的生命值和san值回复速度变为 %0.1f%%。", RBC.BEDROOM_EXTRAL_MULT * 100) end
	},
}