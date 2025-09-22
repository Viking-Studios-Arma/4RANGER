/*
License GPL-2.0
*/
[] spawn {
	// Suspend the script until the required CBA Settings are available
	waitUntil {
		sleep 0.5;
		!(isNil "cba_settings_ready")
	};

	[format["Current climate: %1", missionNamespace getVariable (format["vs_core_climate_%1", worldName])], "core\XEH_postInit.sqf"] call vs_core_fnc_log;
	private _climate = missionNamespace getVariable [format["vs_core_climate_%1", worldName], "all"];
/*
	if (_climate isEqualTo "arctic" || _climate isEqualTo "all") then {
		["Arctic default loadouts added", "core\XEH_postInit.sqf"] call vs_core_fnc_log;
		//-------------------------- 4RANGER Arctic Kits ------------------------------------
	//	["4RANGER Artic - IC", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - 2IC", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - JFO", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - AT", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Recruit", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - LMG", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Rifleman", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Medic", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Surgeon", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - EOT", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - CBRN", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Pilot", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Vic Crew", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Heli Crew", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Marksman", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Grenadier", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Breacher", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Artic - Drone Tech", ] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};

	if (_climate isEqualTo "desert" || _climate isEqualTo "all") then {
		["Desert default loadouts added", "core\XEH_postInit.sqf"] call vs_core_fnc_log;
		//------------------------- 4RANGER Desert Kits --------------------------------------
	//	["4RANGER Desert - IC", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - 2IC", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - JFO", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - AT", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Recruit", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - LMG", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Rifleman", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Medic", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Surgeon", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - EOT", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - CBRN", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Pilot", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Vic Crew", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Heli Crew", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Marksman", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Grenadier", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Breacher", ] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Desert - Drone Tech", ] call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};
*/

	if (_climate isEqualTo "multicam" || _climate isEqualTo "all") then {
		["Multicam default loadouts added", "core\XEH_postInit.sqf"] call vs_core_fnc_log;
		//-------------------------- 4RANGER Multicam Kits ------------------------------------
		["4RANGER Multicam - Platoon IC",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_voice","ACE_NoVoice"],["ace_arsenal_insignia","VSC_P_4RANGER_MC"],["ace_arsenal_face","Default"],["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Platoon 2IC",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - IC",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - 2IC",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - JFO",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Anti-Tank",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","SMA_ELCAN_SPECTER_TAN_RDS_4z",["VSC_30Rnd_556x45_L403A1",30],[],""],["launch_MRAWS_green_F","","","",["MRAWS_HEAT_F",1],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["MRAWS_HEAT_F",4,1],["MRAWS_HEAT55_F",4,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Recruit",[["uk3cb_baf_l85a3","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_grippod_t"],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["Virtus_B_3",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_556_30Rnd",8,30],["UK3CB_BAF_SmokeShell",3,1],["HandGrenade",2,1],["ACE_CTS9",4,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"mpx_cobra_patch","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - LMG", [["uk3cb_baf_l110_762","","","",["UK3CB_BAF_762_200Rnd",200],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["UK3CB_BAF_762_100Rnd",2,100]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["UK3CB_BAF_762_200Rnd",2,200]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Rifleman",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Surgeon",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","optic_MRCO",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",4,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["kat_helistretcher",1],["kat_IV_16",20],["kat_aatKit",10],["ACE_adenosine",10],["kat_X_AED",1],["ACE_ATNAA_AntidoteInjector",10],["kat_atropine",10],["ACE_elasticBandage",70],["ACE_packingBandage",30],["kat_BPCuff",1],["kat_chestSeal",10],["kat_BVM",1],["kat_EACA",10],["ACE_epinephrine",10],["kat_IO_FAST",10],["ACE_morphine",10],["kat_naloxone",5],["kat_phenylephrineAuto",5],["ACE_plasmaIV",5],["ACE_plasmaIV_250",15],["ACE_plasmaIV_500",10],["kat_Pulseoximeter",2],["kat_stethoscope",1],["ACE_surgicalKit",1],["ACE_suture",100],["ACE_tourniquet",4],["kat_TXA",10],["tsp_lockpick",1],["kat_accuvac",1],["kat_plate",10],["ACE_splint",2],["kat_scalpel",10],["kat_retractor",1],["kat_nitroglycerin",5],["kat_norepinephrine",5],["kat_lorazepam",10],["kat_lidocaine",5],["kat_ketamine",5],["kat_ultrasound",1],["kat_flumazenil",10],["kat_fentanyl",5],["kat_etomidate",10],["kat_clamp",1],["KAT_Empty_bloodIV_500",1],["kat_nalbuphine",5],["kat_amiodarone",10],["kat_larynx",20],["CBRN_DuctTape",5],["CBRN_gasmaskFilter",5],["CBRN_sealant",5],["MK503",1],["ACE_salineIV_250",5],["kat_Carbonate",1,10],["kat_Caffeine",1,15],["kat_Painkiller",10,4],["kat_oxygenTank_300",1,200],["kat_Pervitin",5,8]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Medic",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","optic_MRCO",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["kat_helistretcher",1],["kat_IV_16",20],["kat_aatKit",5],["ACE_adenosine",10],["kat_X_AED",1],["ACE_ATNAA_AntidoteInjector",10],["kat_atropine",10],["ACE_elasticBandage",70],["ACE_packingBandage",30],["kat_BPCuff",1],["kat_chestSeal",10],["kat_BVM",1],["kat_EACA",10],["ACE_epinephrine",10],["kat_IO_FAST",10],["KAT_Empty_bloodIV_500",1],["kat_larynx",20],["kat_suction",20],["ACE_morphine",10],["kat_naloxone",10],["kat_phenylephrineAuto",10],["ACE_plasmaIV",6],["ACE_plasmaIV_250",12],["ACE_plasmaIV_500",8],["kat_Pulseoximeter",2],["ACE_salineIV_250",5],["ACE_splint",4],["kat_stethoscope",1],["ACE_surgicalKit",1],["ACE_suture",100],["ACE_tourniquet",4],["kat_TXA",10],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["CBRN_DuctTape",5],["CBRN_gasmaskFilter",5],["CBRN_sealant",5],["MK503",1],["kat_Carbonate",1,10],["kat_Caffeine",1,15],["kat_Painkiller",10,4]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - EOT",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",15],["ACE_packingBandage",11],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["rhsusf_m112_mag",5,1],["rhsusf_m112x4_mag",5,1],["tsp_breach_popper_mag",5,1]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - CBRN Specialist IC",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["U_CBRN_A_multicam",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["CBRN_gasmaskFilter",20],["CBRN_DuctTape",20],["CBRN_sealant",20],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["G_CBRN_A_multicam",1],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - CBRN Specialist EOT",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["U_CBRN_A_multicam",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["CBRN_DuctTape",15],["CBRN_gasmaskFilter",15],["CBRN_sealant",15],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",15],["ACE_packingBandage",11],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["VS_C_ED_1D_Item",2],["G_CBRN_A_multicam",1],["rhsusf_m112_mag",5,1],["rhsusf_m112x4_mag",5,1],["tsp_breach_popper_mag",5,1]]],"opscore_highcut_mc","",[],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Multicam - CBRN Specialist Medic",  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - CBRN Specialist Rifleman",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["U_CBRN_A_multicam",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_packingBandage",25],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["CBRN_DuctTape",20],["CBRN_gasmaskFilter",20],["CBRN_sealant",10],["ACE_elasticBandage",25],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["CBRN_gasmaskFilter",15],["CBRN_DuctTape",15],["CBRN_sealant",50],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_ATNAA_AntidoteInjector",30],["G_CBRN_A_multicam",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Multicam - Vic Crew",  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Marksman", [["uk3cb_baf_l129a1","","","UK3CB_BAF_TA648_308",["UK3CB_BAF_762_L42A1_20Rnd",20],[],"UK3CB_underbarrel_acc_fgrip_bipod"],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["UK3CB_BAF_762_L42A1_20Rnd",4,20]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["UK3CB_BAF_762_L42A1_20Rnd",10,20]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Grenadier",[["sma_mk18tan_gl","","SMA_SFPEQ_MK18TOP_BLK","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],["rhs_mag_M433_HEDP",1],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["VSC_30Rnd_556x45_L403A1",1,0],["rhs_mag_M441_HE",25,1],["rhs_mag_M397_HET",15,1],["rhs_mag_M433_HEDP",25,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Breacher",[["sma_mk18tan_gl","","SMA_SFPEQ_MK18TOP_TAN","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],["rhs_mag_m576",1],""],["tsp_meleeWeapon_sledge_black","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_Clacker",1],["rhs_mag_m576",10,1],["tsp_breach_package_mag",2,1],["tsp_breach_silhouette_mag",2,1],["tsp_breach_linear_mag",20,1],["tsp_breach_block_mag",5,1],["tsp_breach_popper_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Multicam - Drone Tech", [["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["VS_C_Mavik_3X_Item",5],["VS_C_AR2_Item",5],["ItemAndroid",1],["ACE_UAVBattery",15],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER - Heli Pilot",[["JCA_smg_UMP_AFG_black_F","UK3CB_BAF_SFFH","SMA_SFFL_BLK","SMA_MICRO_T2",["JCA_25Rnd_45ACP_UMP_Mag",30],[],""],[],["JCA_hgun_P320_black_F","","","",["JCA_17Rnd_9x21_P320_Mag",13],[],""],["CSU15BP_Base_Rolled_FG",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1]]],["CMU33P",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",4,30]]],["UK3CB_BAF_B_Kitbag_OLI",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"rhsusf_hgu56p_visor","",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER - Heli Crew",[["JCA_smg_UMP_AFG_black_F","UK3CB_BAF_SFFH","SMA_SFFL_BLK","SMA_MICRO_T2",["JCA_25Rnd_45ACP_UMP_Mag",30],[],""],[],["JCA_hgun_P320_black_F","","","",["JCA_17Rnd_9x21_P320_Mag",13],[],""],["CSU15BP_Base_Rolled_FG",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1]]],["CMU33P",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",4,30]]],["UK3CB_BAF_B_Kitbag_OLI",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"rhsusf_hgu56p_visor_mask","",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]]  call ace_arsenal_fnc_addDefaultLoadout;
		//-------------------------------------------------------------------------------
	};
/*

	if (_climate isEqualTo "woodland" || _climate isEqualTo "all") then {
		["Woodland default loadouts added", "core\XEH_postInit.sqf"] call vs_core_fnc_log;
		//-------------------------- 4RANGER Woodland Kits ------------------------------------

		["4RANGER Woodland - Platoon IC",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Platoon 2IC",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - IC",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - 2IC",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - JFO",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Anti-Tank",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","SMA_ELCAN_SPECTER_TAN_RDS_4z",["VSC_30Rnd_556x45_L403A1",30],[],""],["launch_MRAWS_green_F","","","",["MRAWS_HEAT_F",1],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["MRAWS_HEAT_F",4,1],["MRAWS_HEAT55_F",4,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Recruit",[["uk3cb_baf_l85a3","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["UK3CB_BAF_556_30Rnd",30],[],"UK3CB_underbarrel_acc_grippod_t"],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["UK3CB_BAF_U_CombatUniform_MTP",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["Virtus_B_3",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_556_30Rnd",8,30],["UK3CB_BAF_SmokeShell",3,1],["HandGrenade",2,1],["ACE_CTS9",4,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"mpx_cobra_patch","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - LMG", [["uk3cb_baf_l110_762","","","",["UK3CB_BAF_762_200Rnd",200],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["UK3CB_BAF_762_100Rnd",2,100]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["UK3CB_BAF_762_200Rnd",2,200]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Rifleman",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Surgeon",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","optic_MRCO",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",4,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["kat_helistretcher",1],["kat_IV_16",20],["kat_aatKit",10],["ACE_adenosine",10],["kat_X_AED",1],["ACE_ATNAA_AntidoteInjector",10],["kat_atropine",10],["ACE_elasticBandage",70],["ACE_packingBandage",30],["kat_BPCuff",1],["kat_chestSeal",10],["kat_BVM",1],["kat_EACA",10],["ACE_epinephrine",10],["kat_IO_FAST",10],["ACE_morphine",10],["kat_naloxone",5],["kat_phenylephrineAuto",5],["ACE_plasmaIV",5],["ACE_plasmaIV_250",15],["ACE_plasmaIV_500",10],["kat_Pulseoximeter",2],["kat_stethoscope",1],["ACE_surgicalKit",1],["ACE_suture",100],["ACE_tourniquet",4],["kat_TXA",10],["tsp_lockpick",1],["kat_accuvac",1],["kat_plate",10],["ACE_splint",2],["kat_scalpel",10],["kat_retractor",1],["kat_nitroglycerin",5],["kat_norepinephrine",5],["kat_lorazepam",10],["kat_lidocaine",5],["kat_ketamine",5],["kat_ultrasound",1],["kat_flumazenil",10],["kat_fentanyl",5],["kat_etomidate",10],["kat_clamp",1],["KAT_Empty_bloodIV_500",1],["kat_nalbuphine",5],["kat_amiodarone",10],["kat_larynx",20],["CBRN_DuctTape",5],["CBRN_gasmaskFilter",5],["CBRN_sealant",5],["MK503",1],["ACE_salineIV_250",5],["kat_Carbonate",1,10],["kat_Caffeine",1,15],["kat_Painkiller",10,4],["kat_oxygenTank_300",1,200],["kat_Pervitin",5,8]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Medic",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","optic_MRCO",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["kat_helistretcher",1],["kat_IV_16",20],["kat_aatKit",5],["ACE_adenosine",10],["kat_X_AED",1],["ACE_ATNAA_AntidoteInjector",10],["kat_atropine",10],["ACE_elasticBandage",70],["ACE_packingBandage",30],["kat_BPCuff",1],["kat_chestSeal",10],["kat_BVM",1],["kat_EACA",10],["ACE_epinephrine",10],["kat_IO_FAST",10],["KAT_Empty_bloodIV_500",1],["kat_larynx",20],["kat_suction",20],["ACE_morphine",10],["kat_naloxone",10],["kat_phenylephrineAuto",10],["ACE_plasmaIV",6],["ACE_plasmaIV_250",12],["ACE_plasmaIV_500",8],["kat_Pulseoximeter",2],["ACE_salineIV_250",5],["ACE_splint",4],["kat_stethoscope",1],["ACE_surgicalKit",1],["ACE_suture",100],["ACE_tourniquet",4],["kat_TXA",10],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["CBRN_DuctTape",5],["CBRN_gasmaskFilter",5],["CBRN_sealant",5],["MK503",1],["kat_Carbonate",1,10],["kat_Caffeine",1,15],["kat_Painkiller",10,4]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - EOT",[["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",15],["ACE_packingBandage",11],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["rhsusf_m112_mag",5,1],["rhsusf_m112x4_mag",5,1],["tsp_breach_popper_mag",5,1]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - CBRN Specialist IC",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["U_CBRN_A_multicam",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["CBRN_gasmaskFilter",20],["CBRN_DuctTape",20],["CBRN_sealant",20],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ItemAndroid",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_UAVBattery",3],["VS_C_AR2_Item",2],["G_CBRN_A_multicam",1],["ACRE_PRC148",1],["ACRE_PRC117F",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","",["UK3CB_BAF_Soflam_Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - CBRN Specialist EOT",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["U_CBRN_A_multicam",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["CBRN_DuctTape",15],["CBRN_gasmaskFilter",15],["CBRN_sealant",15],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",15],["ACE_packingBandage",11],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACE_DefusalKit",1],["ACE_M26_Clacker",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["VS_C_ED_1D_Item",2],["G_CBRN_A_multicam",1],["rhsusf_m112_mag",5,1],["rhsusf_m112x4_mag",5,1],["tsp_breach_popper_mag",5,1]]],"opscore_highcut_mc","",[],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Woodland - CBRN Specialist Medic",  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - CBRN Specialist Rifleman",[["VSC_L403A1","","UK3CB_BAF_LLM_Flashlight_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["U_CBRN_A_multicam",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_packingBandage",25],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["CBRN_DuctTape",20],["CBRN_gasmaskFilter",20],["CBRN_sealant",10],["ACE_elasticBandage",25],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["CBRN_gasmaskFilter",15],["CBRN_DuctTape",15],["CBRN_sealant",50],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_ATNAA_AntidoteInjector",30],["G_CBRN_A_multicam",1],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]] call ace_arsenal_fnc_addDefaultLoadout;
	//	["4RANGER Woodland - Vic Crew",  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Marksman", [["uk3cb_baf_l129a1","","","UK3CB_BAF_TA648_308",["UK3CB_BAF_762_L42A1_20Rnd",20],[],"UK3CB_underbarrel_acc_fgrip_bipod"],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["UK3CB_BAF_762_L42A1_20Rnd",4,20]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["UK3CB_BAF_762_L42A1_20Rnd",10,20]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Grenadier",[["sma_mk18tan_gl","","SMA_SFPEQ_MK18TOP_BLK","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],["rhs_mag_M433_HEDP",1],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1],["VSC_30Rnd_556x45_L403A1",1,0],["rhs_mag_M441_HE",25,1],["rhs_mag_M397_HET",15,1],["rhs_mag_M433_HEDP",25,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"],["aceax_textureOptions",[]]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Breacher",[["sma_mk18tan_gl","","SMA_SFPEQ_MK18TOP_TAN","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],["rhs_mag_m576",1],""],["tsp_meleeWeapon_sledge_black","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",8,30]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["ACE_Clacker",1],["rhs_mag_m576",10,1],["tsp_breach_package_mag",2,1],["tsp_breach_silhouette_mag",2,1],["tsp_breach_linear_mag",20,1],["tsp_breach_block_mag",5,1],["tsp_breach_popper_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER Woodland - Drone Tech", [["VSC_L403A1","","UK3CB_BAF_LLM_IR_Tan","ACE_optic_MRCO_2D",["VSC_30Rnd_556x45_L403A1",30],[],""],["UK3CB_BAF_AT4_CS_AP_Launcher","","","",[],[],""],["UK3CB_BAF_L131A1","","UK3CB_BAF_Laser_L131A1","",["UK3CB_BAF_9_17Rnd",17],[],""],["USP_G3C_CS_MC",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["kat_suction",1],["ACE_plasmaIV_250",1],["kat_larynx",1],["kat_Painkiller",4,4]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["ACRE_PRC343",1],["UK3CB_BAF_9_17Rnd",3,17],["VSC_30Rnd_556x45_L403A1",8,30],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1]]],["UK3CB_BAF_B_Kitbag_MTP",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["VS_C_Mavik_3X_Item",5],["VS_C_AR2_Item",5],["ItemAndroid",1],["ACE_UAVBattery",15],["tsp_breach_popper_auto_mag",5,1]]],"opscore_highcut_mc","UK3CB_BAF_G_Tactical_Black",[],["ItemMap","B_UavTerminal","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]]  call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER - Heli Pilot",[["uk3cb_baf_l22a2","UK3CB_BAF_SFFH","SMA_SFFL_BLK","SMA_MICRO_T2",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["JCA_hgun_P320_black_F","","","",["JCA_17Rnd_9x21_P320_Mag",13],[],""],["CSU15BP_Base_Rolled_FG",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1]]],["CMU33P",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",4,30]]],["tfw_ilbe_blade_gr",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"rhsusf_hgu56p_visor","",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]] call ace_arsenal_fnc_addDefaultLoadout;
		["4RANGER - Heli Crew",[["uk3cb_baf_l22a2","UK3CB_BAF_SFFH","SMA_SFFL_BLK","SMA_MICRO_T2",["VSC_30Rnd_556x45_L403A1",30],[],""],[],["JCA_hgun_P320_black_F","","","",["JCA_17Rnd_9x21_P320_Mag",13],[],""],["CSU15BP_Base_Rolled_FG",[["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_chestSeal",2],["ACE_tourniquet",4],["ACE_splint",3],["ACE_adenosine",1]]],["CMU33P",[["ACE_EarPlugs",1],["ACE_IR_Strobe_Item",1],["ItemMicroDAGR",1],["ACE_elasticBandage",10],["ACE_packingBandage",10],["ACE_ATNAA_AntidoteInjector",1],["kat_larynx",1],["kat_suction",1],["kat_pocketBVM",1],["UK3CB_BAF_SmokeShell",2,1],["ACE_CTS9",1,1],["VSC_30Rnd_556x45_L403A1",4,30]]],["UK3CB_BAF_B_Kitbag_OLI",[["MK503",1],["CBRN_gasmaskFilter",5],["CBRN_DuctTape",5],["CBRN_sealant",5],["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["tsp_lockpick",1],["tsp_breach_popper_auto_mag",5,1]]],"rhsusf_hgu56p_visor_mask","",[],["ItemMap","ItemGPS","","ItemCompass","KAT_ChemicalDetector",""]],[["ace_arsenal_insignia","VSC_P_4RANGER_MC_TRF"]]]  call ace_arsenal_fnc_addDefaultLoadout;


		//-------------------------------------------------------------------------------
	};
*/
	// Server-side logic to handle loadouts
	if (isServer) then {
		_loadoutUnits = allUnits select {_x getVariable ["VS_core_isLoadout", false]};
		VS_core_loadouts = [];
		{
			_role = _x getVariable "VS_core_loadout_role";
			VS_core_loadouts pushBack [_role, getUnitLoadout _x];
			deleteVehicle _x;
		} forEach _loadoutUnits;
		publicVariable "VS_core_loadouts";
		[VS_core_loadouts] remoteExec ["VS_core_fnc_setDefaultLoadouts", 0, true];
	};
	[player] call vs_core_fnc_limitArsenal;
};

//make units doctors
{
    [_x] call vs_core_fnc_makeDoctor;
} forEach allUnits;

// Add event handler to handle new units spawned during the mission
addMissionEventHandler ["EntityCreated", {
    params ["_entity"];
    if (_entity isKindOf "Man") then {
        [_entity] call vs_core_fnc_makeDoctor;
    };
}];

[{isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	["Viking Studios Modules", "Add Barracks Functions",
	{
		// Array of position AGLS, ObjNull or the object under the module as it's placed
		params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

		[_position, _objectUnderCursor] call VS_core_fnc_addBarracks;
	}] call zen_custom_modules_fnc_register;

	["Viking Studios Modules", "Force Respawn All",
	{
		[] call VS_core_fnc_forceRespawn;
	}] call zen_custom_modules_fnc_register;

	["ZEN loaded successfully", "core\XEH_preInit.sqf"] call VS_core_fnc_log;
}, [], 120, {
	["ZEN not loaded in time!", "core\XEH_preInit.sqf"] call VS_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;


[{isClass (configFile >> "CfgPatches" >> "klpq_musicRadio") && isClass (configFile >> "CfgPatches" >> "zen_custom_modules")},{
	["Viking Studios Modules", "Add Music Radio",
	{
		// Array of position AGLS, ObjNull or the object under the module as it's placed
		params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

		[_position, _objectUnderCursor] call VS_core_fnc_addMusicRadio;
	}] call zen_custom_modules_fnc_register;

	["KLPQ Music Player loaded successfully", "core\XEH_preInit.sqf"] call VS_core_fnc_log;
}, [], 120, {
	["KLPQ Music Player not loaded in time!", "core\XEH_preInit.sqf"] call VS_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;

// Export the mission setting into the CBA Setting on mission start
if (
	isServer
	&& (["VS_core_respawn_timer", "mission"] call CBA_settings_fnc_get) isEqualTo (["VS_core_respawn_timer", "default"] call CBA_settings_fnc_get)
	&& typeName (getMissionConfigValue "respawnDelay") == "SCALAR"
) then {
	[getMissionConfigValue "respawnDelay"] call VS_core_fnc_setRespawnTimer;
};

player addEventHandler ["Killed", {
	params ["_player"];

	private _curators = call VS_core_fnc_getCurators;
	if (_player in _curators) exitWith { // If zeus, instantly respawn
		[] spawn {
			setPlayerRespawnTime 0;
			sleep 2;
			setPlayerRespawnTime VS_core_respawn_timer;
		};
	};

	setPlayerRespawnTime VS_core_respawn_timer;

	[format["%1 just died!", name _player]] remoteExec ["VS_core_fnc_notifyZeus", _curators];
	_player setVariable ["VS_core_diedAt", serverTime, true];
	[format["%1 died at: %2", name _player, _player getVariable "VS_core_diedAt"], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
}];

player addEventHandler ["Respawn", {
	params ["_player", "_corpse"];

	[["%1 has just respawned!", name _player], "warning"] remoteExec ["VS_core_fnc_notifyZeus", call VS_core_fnc_getCurators];
	[format["%1 respawned at: %2. Died at: %3", name _player, serverTime, _player getVariable "VS_core_diedAt"], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
}];

// Pass magazine keybinding
[
	"Viking Studios",
	"VS_core_passMagazine",
	["Pass magazine", "Pass a magazine to the person you're looking at"],
	{
		private _target = cursorTarget;
		if (
			_target isKindOf "CAManBase"
			&& {[ACE_player, _target, primaryWeapon ACE_player] call ace_interaction_fnc_canPassMagazine}
			&& ACE_player distance _target < 4
		) then {
			[format["%1 passed a magazine", name ACE_player], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
			[ACE_player, _target, primaryWeapon ACE_player] call ace_interaction_fnc_passMagazine;
			playSound "ace_overheating_fixing_pistol";
			hint "Magazine passed!";
		};
	},
	'',
	[0x13, [false, false, true]], // Alt+R
	false,
	0,
	true
] call CBA_fnc_addKeybind;

[{isClass (configFile >> "CfgPatches" >> "tfar_core")},{
	// TFAR Direct Speech Volume Change
	[
		"Viking Studios",
		"VS_core_increaseSpeakVolume",
		["Increase Direct Speech Volume", "Use this to increase direct speech volume until ""Yelling"""],
		{
			[true] call VS_core_fnc_changeSpeakVolume;
		},
		'',
		[0xF8, [false, false, true]] // Alt + Mouse wheel Up
	] call CBA_fnc_addKeybind;

	[
		"Viking Studios",
		"VS_core_decreaseSpeakVolume",
		["Decrease Direct Speech Volume", "Use this to decrease direct speech volume until ""Whisper"""],
		{
			[false] call VS_core_fnc_changeSpeakVolume;
		},
		'',
		[0xF9, [false, false, true]] // Alt + Mouse wheel Down
	] call CBA_fnc_addKeybind;
}, [], 20, {
	["TFAR is not loaded!", "core\XEH_postInit.sqf"] call VS_core_fnc_log;
}] call CBA_fnc_waitUntilAndExecute;


// Reduce the map volume
addMissionEventHandler ["Map", {
	params ["_mapIsOpened", "_mapIsForced"];

	if (_mapIsOpened) then {

		VS_core_restoredVolume = missionNamespace getVariable ["acex_volume_initialGameVolume", soundVolume];

		// If player is not in a vehicle, then forget about it!
		if (vehicle player == player) exitWith {};

		ace_hearing_disableVolumeUpdate = true;
		0.1 fadeSound VS_core_map_volume;
		["Lowered volume in map", "core\XEH_postInit.sqf"] call VS_core_fnc_log;

	} else {

		if (isNil "acex_volume_isLowered") then {
			ace_hearing_disableVolumeUpdate = false;

			0.1 fadeSound VS_core_restoredVolume;
			[format["Restored volume from map to %1", VS_core_restoredVolume], "core\XEH_postInit.sqf"] call VS_core_fnc_log;

		} else {

			if (acex_volume_isLowered) then {
				call acex_volume_fnc_lowerVolume;
				["Going back to ACEX lowered volume", "core\XEH_postInit.sqf"] call VS_core_fnc_log;
			} else {

				if (soundVolume != acex_volume_initialGameVolume) then {
					call acex_volume_fnc_restoreVolume;
					["Letting ACEX restore volume", "core\XEH_postInit.sqf"] call VS_core_fnc_log;
				};
			};
		};
	};
}];


/**
 * Interact with civilians using gestures
 *
 * Possible gestures:
 * - Freeze:		`ace_gestures_Freeze`
 * - Cover:			`ace_gestures_Cover`
 * - Forward:		`ace_gestures_Forward`
 * - Regroup:		`ace_gestures_Regroup`
 * - Engage:		`ace_gestures_Engage`
 * - Point:			`ace_gestures_Point`
 * - Hold:			`ace_gestures_Hold`
 * - Warning:		`ace_gestures_Warning`
 *
 * - Go:			`gestureGo`
 * - Advance:		`gestureAdvance`
 * - Follow:		`gestureFollow`
 * - Up:			`gestureUp`
 * - Stop:			`gestureFreeze`
 * - Cease Fire:	`gestureCeaseFire`
 *
 * All gestures with `ace_gestures_[x]` have a second stance
 * `ace_gestures_[x]StandLowered` for when the player is standing with a
 * lowered weapon, or without one!
 */
["ace_common_playActionNow", {
	params ["_player", "_gesture"];

	// If it's not a player, don't do anything
	if !(isPlayer _player) exitWith {};

	// The percentage chance a civilian will listen
	private _chance = [0.5, 0.8] select (count weapons _player > 0);
	private _acceptedGestures = [];

// Commands affecting units within angle sector

	// Stop!
	_acceptedGestures = [
		"gestureFreeze",
		"ace_gestures_Hold",
		"ace_gestures_HoldStandLowered",
		"ace_gestures_Freeze",
		"ace_gestures_FreezeStandLowered"
	];

	if ({_x == _gesture} count _acceptedGestures > 0) then {
		{
			if !(_x isEqualTo _player) then {
				if (count weapons _x == 0 && {random 1 < _chance}) then {
					if ([position _player, getDir _player, 30, position _x] call BIS_fnc_inAngleSector) then {
						if (vehicle _x == _x) then {
							// In case unit is following someone
							_x setVariable ["VS_core_following", nil, true];

							[format["%1 told %2 to stop with a %3 gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
							doStop _x;
							false;
						} else {
							[format["%1 detected %2 in a vehicle for stop gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
							if (effectiveCommander (vehicle _x) isEqualTo _x) then {
								// In case unit is following someone
								_x setVariable ["VS_core_following", nil, true];

								[format["%1 told %2 to stop with a %3 gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
								doStop _x;
								false;
							};
						};
					};
				};
			};
		} count ((entities [["Man"], [], true, true]) inAreaArray [position _player, 50, 50]);
	};

	// Go away!
	_acceptedGestures = [
		"gestureGo",
		"gestureAdvance",
		"ace_gestures_Forward",
		"ace_gestures_ForwardStandLowered",
		"ace_gestures_Engage",
		"ace_gestures_EngageStandLowered"
	];

	if ({_x == _gesture} count _acceptedGestures > 0) then {
		// Source: https://github.com/acemod/ACE3/blob/master/addons/interaction/functions/fnc_sendAway.sqf
		// Extracted from source to avoid an infinite loop caused by line 23 in source
		{
			if (count weapons _x == 0 && {random 1 < _chance}) then {
				if ([position _player, getDir _player, 40, position _x] call BIS_fnc_inAngleSector) then {
					[format["%1 told %2 to go away with a %3 gesture", _player, _x, _gesture], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
					// In case unit is following someone
					_x setVariable ["VS_core_following", nil, true];

					private _position = getPosASL _player vectorAdd (eyeDirection _player vectorMultiply 50);
					_position set [2, 0];

					["ace_interaction_sendAway", [_x, _position], [_x]] call CBA_fnc_targetEvent;
				};
			};
			false;
		} count (_player nearEntities ["Man", 10]);
	};

// Commands affecting units only under cursor
	private _target = cursorTarget;
	if !(_target isKindOf "Man") exitWith {};

	// Follow!
	_acceptedGestures = ["gestureFollow"];

	if ({_x == _gesture} count _acceptedGestures > 0 && _player distance _target < 10) then {

		if (count weapons _target == 0 && {random 1 < _chance}) then {
		[format["%1 told %2 to follow using a %3 gesture", _player, _target, _gesture], "core\XEH_postInit.sqf"] call VS_core_fnc_log;

			private _following = [_target, _player] spawn {
				params ["_target", "_player"];
				_target setVariable ["VS_core_following", _player, true];

				[format["%1 about to move to %2 (%3)", _target, _player, _target getVariable ["VS_core_following", "nothing"]], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
				private _playerPosition = [];
				private _index = 0;

				while {(_target getVariable ["VS_core_following", false]) isEqualTo _player} do {
					if (_index > 30) exitWith {
						_target setVariable ["VS_core_following", nil, true];
					};

					if !(_playerPosition isEqualTo (getPosASL _player)) then {
						[format["%1 moving", _target], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
						_target doMove (getPosASL _player vectorDiff (vectorDir _player vectorMultiply 4));
						_playerPosition = getPosASL _player;
					};

					sleep 2;
					_index = 1 + _index;
				};
			};

		};
	};


	// Hi there!
	_acceptedGestures = [
		"ace_gestures_Cover",
		"ace_gestures_CoverStandLowered",
		"ace_gestures_Warning",
		"ace_gestures_WarningStandLowered"
	];

	if ({_x == _gesture} count _acceptedGestures > 0) then {
		if (
			[position _target, getDir _target, 120, position _player] call BIS_fnc_inAngleSector
			&& ((side group _target) getFriend (side group _player)) > 0.6 // Is friendly-ish?
		) then {
			[format["%1 waved at %2 with a %3 gesture", _player, _target, _gesture], "core\XEH_postInit.sqf"] call VS_core_fnc_log;
			[_target, _player] spawn {
				_target = _this select 0;
				sleep 1;
				[_target, "ace_gestures_WarningStandLowered"] call ace_common_fnc_doGesture;
			};
		};
	};
}] call CBA_fnc_addEventHandler;
