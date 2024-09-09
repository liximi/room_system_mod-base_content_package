GLOBAL.setmetatable(env,{__index=function(t,k) return GLOBAL.rawget(GLOBAL,k) end})

PrefabFiles = {}
Assets = {}

--[Localization]
local mod_loc_files = { 	--本mod的所有本地化文件名(不含语种前缀)
    "common",				--无法归类或没必要归类的文本
}
local user_setting_lan = GetModConfigData("language")       --读取Mod语言自定义设置
local loc = require "languages/loc"
local lan = loc and loc.GetLanguage and loc.GetLanguage()   --读取玩家的客户端语言设置
local prefix = ""
if user_setting_lan == "CHINESE" then
    prefix = "chinese"
elseif user_setting_lan == "ENGLISH" then
    prefix = "english"
else
    if lan == LANGUAGE.CHINESE_S or lan == LANGUAGE.CHINESE_S_RAIL then
        prefix = "chinese"
    else
        prefix = "english"
    end
end

for _, f_name in ipairs(mod_loc_files) do
    modimport("scripts/localization/"..prefix.."_"..f_name)	--加载所有本地化文件
end

--[Constants]
modimport "rbc_main_scripts/constants"
--[Tools]
-- modimport "rbc_main_scripts/tools"
--[Containers]
-- modimport "rbc_main_scripts/containers"
--[RPCs]
-- modimport "rbc_main_scripts/rpcs"
--[Controller]
-- modimport "rbc_main_scripts/controller"
--[UI]
-- modimport "rbc_main_scripts/ui"
--[Actions]
-- modimport "rbc_main_scripts/actions"
--[StateGraphs]
modimport "rbc_main_scripts/stategraphs"
--[Recipes]
-- modimport "rbc_main_scripts/recipes"

--[replica组件注册]
-- AddReplicableComponent("m23m_region_manager")

--注册地图图标
-- AddMinimapAtlas("images/minimap/xxx_mini.xml")


--------------------------------------------------
-- 注册房间
--------------------------------------------------
require "rbc_room_def"


--------------------------------------------------
-- [本MOD针对游戏本体的修改内容]
--------------------------------------------------

local mod_files = {
    "mod_cooktime",
    "mod_craft_multiple_products",
    "mod_bedroom_mechanic",
    "mod_upgradeable",
}

for _, file in ipairs(mod_files) do
    modimport("rbc_main_scripts/modified_mechanics/"..file)
end