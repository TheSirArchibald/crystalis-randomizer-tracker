
print("Starting up scipts")
ScriptHost:LoadScript("scripts/sdk/class.lua")
ScriptHost:LoadScript("scripts/sdk/custom_item.lua")
ScriptHost:LoadScript("scripts/custom_items/SwordItem.lua")
ScriptHost:LoadScript("scripts/custom_items/ThunderSwordItem.lua")
ScriptHost:LoadScript("scripts/custom_items/BallItem.lua")
ScriptHost:LoadScript("scripts/custom_items/BraceletItem.lua")
ScriptHost:LoadScript("scripts/custom_items/GoaFloorItem.lua")
ScriptHost:LoadScript("scripts/custom_items/KeyItem.lua")
ScriptHost:LoadScript("scripts/init_custom_items.lua")
ScriptHost:LoadScript("scripts/init_custom_itemsauto.lua")





Tracker:AddItems("items/common.json")
Tracker:AddItems("items/dungeon_walls.json")
Tracker:AddItems("items/eastcaveexits.json")
if (Tracker.ActiveVariantUID ~= "super_compact") then
	Tracker:AddItems("items/bosses.json")
end
Tracker:AddItems("items/miscellaneous_items.json")
--Tracker:AddItems("items/flags.json")

	if (Tracker.ActiveVariantUID == "items_only") then
		initCustomItems()
		Tracker:AddItems("items/flags.json")
		Tracker:AddLayouts("layouts/flags_layout.json")
		Tracker:AddLayouts("layouts/input_layouts.json")
		Tracker:AddLayouts("layouts/items_only_layout.json")
		Tracker:AddLayouts("layouts/broadcast_items_only.json")

	elseif (Tracker.ActiveVariantUID == "super_compact") then
		Tracker:AddItems("items/flags.json")
		Tracker:AddItems("items/compact_items.json")
		Tracker:AddLayouts("layouts/super_compact_layout.json")

	elseif (Tracker.ActiveVariantUID == "items_only2") then
		initCustomItemsAuto()			--New one to eliminate the badge system
			Tracker:AddItems("items/autoflags.json")
			Tracker:AddItems("items/simple_items.json")
			Tracker:AddLayouts("layouts/flags_layout.json")
			Tracker:AddLayouts("layouts/input_layouts_unid.json")  --Note unid field
			Tracker:AddLayouts("layouts/items_only_layout.json")
			Tracker:AddLayouts("layouts/broadcast_items_only.json")

--  Load configuration options up front
ScriptHost:LoadScript("scripts/settings.lua")

if _VERSION == "Lua 5.3" then
  print("Your tracker version supports autotracking!")
  ScriptHost:LoadScript("scripts/autotracker.lua")
else
  print("Your tracker version does not support autotracking")
end


	else
		Tracker:AddItems("items/doors.json")
		ScriptHost:LoadScript("scripts/logic_common.lua")
		ScriptHost:LoadScript("scripts/wall_logic.lua")
		ScriptHost:LoadScript("scripts/boss_logic.lua")
		ScriptHost:LoadScript("scripts/traversal.lua")
		ScriptHost:LoadScript("scripts/goa_logic.lua")
		ScriptHost:LoadScript("scripts/key_item_logic.lua")
		Tracker:AddMaps("maps/sub_maps.json")
		
	
	if (Tracker.ActiveVariantUID == "items_and_map_custom") then
			initCustomItems()			--Test
			Tracker:AddItems("items/flags.json")
			Tracker:AddItems("items/simple_items.json")  --Test
			Tracker:AddLayouts("layouts/flags_layout.json")
			Tracker:AddLayouts("layouts/map_layouts.json")
			Tracker:AddLayouts("layouts/input_layouts.json")
			--Tracker:AddLayouts("layouts/input_layouts_unid.json")  --Note unid field
			Tracker:AddLayouts("layouts/map_tracker_layout.json")
			Tracker:AddLayouts("layouts/broadcast_map.json")
			
		elseif (Tracker.ActiveVariantUID == "items_and_map_custom2") then
			initCustomItemsAuto()			--New one to eliminate the badge system
			Tracker:AddItems("items/autoflags.json")
			Tracker:AddItems("items/simple_items.json")
			Tracker:AddLayouts("layouts/flags_layout.json")
			Tracker:AddLayouts("layouts/input_layouts_unid.json")  --Note unid field
			--Tracker:AddLayouts("layouts/input_layouts.json")
			Tracker:AddLayouts("layouts/map_layouts.json")
			Tracker:AddLayouts("layouts/map_tracker_layout.json")
			Tracker:AddLayouts("layouts/broadcast_map.json")
			
--  Load configuration options up front
ScriptHost:LoadScript("scripts/settings.lua")

if _VERSION == "Lua 5.3" then
  print("Your tracker version supports autotracking!")
  ScriptHost:LoadScript("scripts/autotracker.lua")
else
  print("Your tracker version does not support autotracking")
end

	else
			Tracker:AddItems("items/flags.json")
			Tracker:AddItems("items/simple_items.json")
			Tracker:AddLayouts("layouts/simple_flags_layout.json")
			Tracker:AddLayouts("layouts/input_layouts.json")
			Tracker:AddLayouts("layouts/map_layouts.json")
			Tracker:AddLayouts("layouts/map_tracker_layout.json")
			Tracker:AddLayouts("layouts/broadcast_map.json")
	end


		if (Tracker.ActiveVariantUID == "items_and_map_custom2") then

		Tracker:AddLocations("locations/overworld_locations_split.json")
		Tracker:AddLocations("locations/east_cave_locations_split.json")
		Tracker:AddLocations("locations/sealed_cave_locations_split.json")
		Tracker:AddLocations("locations/sabre_west_locations_split.json")
		Tracker:AddLocations("locations/sabre_north_locations_split.json")
		Tracker:AddLocations("locations/waterfall_cave_locations_split.json")
		Tracker:AddLocations("locations/fog_lamp_cave_locations_split.json")
		Tracker:AddLocations("locations/kirisa_plant_cave_locations_split.json")
		Tracker:AddLocations("locations/evil_spirit_island_locations_split.json")
		Tracker:AddLocations("locations/saberas_fortress_locations_split.json")
		Tracker:AddLocations("locations/mt_hydra_locations_split.json")
		Tracker:AddLocations("locations/styx_locations_split.json")
		Tracker:AddLocations("locations/oasis_cave_locations_split.json")
		Tracker:AddLocations("locations/pyramid_front_locations_split.json")
		Tracker:AddLocations("locations/pyramid_back_locations_split.json")
		Tracker:AddLocations("locations/goa_kelbesque_locations_split.json")
		Tracker:AddLocations("locations/goa_sabera_locations_split.json")
		Tracker:AddLocations("locations/goa_mado_locations_split.json")
		Tracker:AddLocations("locations/goa_karmine_locations_split.json")
		Tracker:AddLocations("locations/cache_invalidation_location.json")


		else
		Tracker:AddLocations("locations/overworld_locations.json")
		Tracker:AddLocations("locations/east_cave_locations.json")
		Tracker:AddLocations("locations/sealed_cave_locations.json")
		Tracker:AddLocations("locations/sabre_west_locations.json")
		Tracker:AddLocations("locations/sabre_north_locations.json")
		Tracker:AddLocations("locations/waterfall_cave_locations.json")
		Tracker:AddLocations("locations/fog_lamp_cave_locations.json")
		Tracker:AddLocations("locations/kirisa_plant_cave_locations.json")
		Tracker:AddLocations("locations/evil_spirit_island_locations.json")
		Tracker:AddLocations("locations/saberas_fortress_locations.json")
		Tracker:AddLocations("locations/mt_hydra_locations.json")
		Tracker:AddLocations("locations/styx_locations.json")
		Tracker:AddLocations("locations/oasis_cave_locations.json")
		Tracker:AddLocations("locations/pyramid_front_locations.json")
		Tracker:AddLocations("locations/pyramid_back_locations.json")
		Tracker:AddLocations("locations/goa_kelbesque_locations.json")
		Tracker:AddLocations("locations/goa_sabera_locations.json")
		Tracker:AddLocations("locations/goa_mado_locations.json")
		Tracker:AddLocations("locations/goa_karmine_locations.json")
		Tracker:AddLocations("locations/cache_invalidation_location.json")
		end
	end

