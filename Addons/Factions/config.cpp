class CfgPatches {
	class VSC_Factions {
		// Addon identity
		name = "4 RANGER - Factions";
		author = "Viking Studios";
		authors[] = {"Amateur-god"};
		url = "https://discord.gg/bkdGvUNFbb";
		version = 1.0;
		versionAr[] = {1,0,0,0};
		versionStr = "v1.0.0";
		requiredAddons[] = {
      "A3_Characters_F",
      "A3_Soft_F",
      "A3_Soft_F_Enoch",
      "A3_Air_F_Heli",
      "A3_Modules_F",
      "cba_settings",
      "ace_arsenal",
      "3DEN",
      "ace_common",
      "ace_interact_menu",
      "ace_interaction",
      "ace_hearing",
      "ace_medical_treatment",
      "ace_maptools",
      "ace_trenches",
      "ace_logistics_wirecutter",
      "A3_Weapons_F",
      "ace_spottingscope",
      "ace_kestrel4500",
      "ace_dagr",
      "ace_atragmx",
      "ace_tripod",
      "ace_captives",
      "ace_huntir",
      "ace_explosives",
      "A3_Weapons_F_Items",
    };
    units[] = {
      "VSC_Transport_Truck",
      "VSC_Repair_Truck",
      "VSC_Mover_Truck",
      "VSC_Medical_Truck",
      "VSC_Fuel_Truck",
      "VSC_Container_Truck",
      "VSC_Ammo_truck",
      "VSC_Comms_Offroad",
      "VSC_Offroad_New",
      "VSC_UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_B",
      "VSC_UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B",
      "VSC_UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Green_B",
      "VSC_UK3CB_BAF_LandRover_WMIK_GMG_FFR_Green_B",
      "VSC_UK3CB_BAF_Jackal2_L111A1_W",
      "VSC_UK3CB_BAF_Husky_Passenger_HMG_Green",
      "VSC_UK3CB_BAF_Husky_Passenger_GPMG_Green",
      "VSC_UK3CB_BAF_Husky_Passenger_GMG_Green",
      "VSC_UK3CB_BAF_Panther_GPMG_Sand_A",
      "VSC_UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A",
      "VSC_UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A",
      "VSC_UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Sand_A",
      "VSC_UK3CB_BAF_LandRover_WMIK_GMG_FFR_Sand_A",
      "VSC_UK3CB_BAF_Jackal2_L111A1_D",
      "VSC_UK3CB_BAF_Husky_Passenger_HMG_Sand",
      "VSC_UK3CB_BAF_Husky_Passenger_GPMG_Sand",
      "VSC_UK3CB_BAF_Husky_Passenger_GMG_Sand",
      "VSC_Wildcat",
      "VSC_Wildcat_AT",
      "VSC_Wildcat_Armed",
      "VSC_AH6M_Littlebird",
      "VSC_MH6M_Littlebird",
      "VSC_HH60GM",
      "VSC_MH60M",
      "VSC_UH60M_Medevac",
      "VSC_UH60M_Slick",
      "VSC_MH60M_DAP_MLASS",
      "VSC_MH60M_DAP",
      "VSC_AH64D_B1",
      "VSC_BAF_Merlin_HC4_18_GPMG",
      "VSC_BAF_Merlin_HC4_24",
      "VSC_BAF_Merlin_HC4_32",
      "VSC_BAF_Merlin_HC4_CSAR",
      "VSC_BAF_Merlin_HC4_18",
      "VSC_AH1_Apache",
      "VSC_Chinook",
      "VSC_IC",
      "VSC_Surgeon",
      "VSC_Medic",
      "VSC_Rifleman",
      "VSC_Cadet",
      "VSC_Helicopter_Pilot",
      "VSC_Pilot",
      "VSC_Fixed_Wing_Crew",
      "VSC_Helicopter_Crew",
      "VSC_Vic_Crew",
      "VSC_Cars_Unarmed",
      "VSC_Cars_Armed",
      "VSC_Cars_Armed_Des",
      "VSC_Cars_Unarmed_Des",
      "VSC_Cars_Armed_Wdl",
      "VSC_Cars_Unarmed_Wdl",
      "VSC_Vans",
      "VSC_Trucks",
      "VSC_Planes",
      "VSC_Jets",
      "VSC_Men",
      "VS_C_4RANGER",
      "VSC_helicopters",
      "VSC_GunArmoredSUV",
      "VSC_ArmoredSUV",
      "VSC_Mavik_Base",
      "VSC_mavik_3",
      "VSC_mavik_3T",
      "VSC_MQ9",
      "VSC_Mavik3T_Base",
      "VSC_foxhound_lppv_tes",
      "VSC_lcvpmk5_viv",
      "VSC_lcvpmk5_1",
      "VSC_Static_Rapier_FSC_Launcher",
      "VSC_Static_Rapier_FSC_Blindfire",
      "VSC_Static_Rapier_FSC_Dagger",
      "VSC_F_35C",
      "VSC_F_35C_S",
      "VSC_aircraft_tug",
      "VSC_Kitbag",
      "VSC_IC_pack",
      "VSC_Surgeon_pack",
      "VSC_Medic_pack",
      "VSC_Rifleman_pack",
      "VSC_Cadet_pack",
      "VSC_Helicopter_Pilot_pack",
      "VSC_Pilot_pack",
      "VSC_Fixed_Wing_Crew_pack",
      "VSC_Helicopter_Crew_pack",
      "VSC_Vic_Crew_pack"
    };
    weapons[]={};
		magazines[] = {};
		ammo[] = {};
		worlds[] = {};
    skipWhenMissingDependencies = 1;
	};
};

class cfgFactionClasses
{
  class VS_C_4RANGER
  {
    icon="x\VS_C\Core\images\4RANGER.paa";
    displayName="4th Btn Ranger Regiment";
    side=1;
    priority=1;
  };
};
class CfgEditorCategories
{
  class VS_C_4RANGER
  {
    icon="x\VS_C\Core\images\4RANGER.paa";
    displayName="4th Btn Ranger Regiment";
    side=1;
    priority=1;
  };
};
class CfgEditorSubcategories
{
  #include "hpp\Editor_Sub_Categories.hpp"
};

class CfgVehicleClasses
{
	class VSC_helicopters
	{
		displayname="4th Btn Ranger Regiment Helicopters";
	};
};

class SensorTemplatePassiveRadar;
class SensorTemplateAntiRadiation;
class SensorTemplateActiveRadar;
class SensorTemplateIR;
class SensorTemplateVisual;
class SensorTemplateMan;
class SensorTemplateLaser;
class SensorTemplateNV;
class SensorTemplateDataLink;
class DefaultVehicleSystemsDisplayManagerLeft
{
	class components;
};
class DefaultVehicleSystemsDisplayManagerRight
{
	class components;
};

class cfgVehicles {
	class CAManBase;
	class CAManBase: CAManBase {
		class EventHandlers : EventHandlers {
			class VSC_Optics {
				init = "
					if (local (_this select 0)) then {
						_onSpawn = {
							_this = _this select 0;
							_weaponItems = (configfile >> 'cfgvehicles' >> (typeof _this) >> 'vsc_weaponItems') call BIS_fnc_getCfgDataArray;
							sleep 0.2;
							{
								_this addPrimaryWeaponItem _x;
							} foreach _weaponItems;
						};
						[(_this select 0)] spawn _onSpawn;
					};";
			};
		};
	};
    #include "parents\parents.hpp"
    #include "Infantry\mc\men.hpp"
    #include "Infantry\mc\backpacks.hpp"
    #include "vehicles\Air\helis.hpp"
    #include "vehicles\Air\planes.hpp"
    #include "vehicles\Air\jets.hpp"
    #include "vehicles\Air\drones.hpp"
    #include "vehicles\ground\carsArmed.hpp"
    #include "vehicles\ground\wdl\carsArmedWdl.hpp"
    #include "vehicles\ground\desert\carsArmedDes.hpp"
    #include "vehicles\ground\carsUnarmed.hpp"
    #include "vehicles\ground\wdl\carsUnarmedWdl.hpp"
    #include "vehicles\ground\desert\carsUnarmedDes.hpp"
    #include "vehicles\ground\vans.hpp"
    #include "vehicles\ground\trucks.hpp"
    #include "vehicles\ground\statics\aa.hpp"
    #include "vehicles\sea\landingCraft.hpp"
};
