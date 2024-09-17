-- Rooms
STRINGS.RBC_ROOMS = {
	WAREHOUSE = {
		NAME = "Warehouse",
		DESC = function() return string.format("When upgrading boxes in the warehouse, there is a %.1f%% chance that the upgrade tool will not be consumed.", RBC.WAREHOUSE_FREE_UPGRDE_PROBABILITY * 100) end
	},
	KITCHEN = {
		NAME = "Kitchen",
		DESC = function() return string.format("Cooking time reduced by %d%%。", RBC.KITCHEN_COOKTIME_MULT * -100) end
	},
	PRIMITIVE_KITCHEN = {
		NAME = "Primitive Kitchen",
		DESC = function() return string.format("Cooking time reduced by %d%%。", RBC.PRIMITIVE_KITCHEN_COOKTIME_MULT * -100) end
	},
	ADVANCED_KITCHEN = {
		NAME = "Advanced Kitchen",
		DESC = function() return string.format("Cooking time reduced by %d%%。", RBC.ADVANCED_KITCHEN_COOKTIME_MULT * -100) end
	},
	LUXURIOUS_KITCHEN = {
		NAME = "Luxurious Kitchen",
		DESC = function() return string.format("Cooking time reduced by %d%%。", RBC.LUXURIOUS_KITCHEN_COOKTIME_MULT * -100) end
	},
	BASIC_WORKSHOP = {
		NAME = "Basic Workshop",
		DESC = "Accelerate the production process."
	},
	WORKSHOP = {
		NAME = "Workshop",
		DESC = function() return string.format("Accelerate the production process, with a %.2f%% chance of increasing the quantity of products by 1 when making items in the this room.", RBC.WORKSHOP_MULT_CRAFTING_PROBABILITY * 100) end
	},
	CHEMICAL_LABORATORY = {
		NAME = "Chemical Laboratory",
		DESC = function() return string.format("Accelerate the production process, with a %.2f%% chance of increasing the quantity of products by 1 when making items in the this room.", RBC.CHEMICAL_LABORATORY_MULT_CRAFTING_PROBABILITY * 100) end
	},
	BEDROOM = {
		NAME = "Bedroom",
		DESC = function() return string.format("The recovery speed of health and sanity during sleep has increased to %0.1f%%。", RBC.BEDROOM_EXTRAL_MULT * 100) end
	},
}