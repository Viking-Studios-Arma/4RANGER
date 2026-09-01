/*License GPL-2.0*/
#define MULTICAM_ASTEAMLEADER "VSC_4RANGER_MC_2IC"
#define MULTICAM_TEAMLEADER "VSC_4RANGER_MC_IC"
#define MULTICAM_PLATOONLEADER "VSC_4RANGER_MC_PL_IC"
#define MULTICAM_PLATOONASLEADER "VSC_4RANGER_MC_PL_2IC"
#define MULTICAM_MEDIC "VSC_4RANGER_MC_Medic"
#define MULTICAM_RIFLEMAN "VSC_4RANGER_MC_Rifleman"
#define HELIPILOT "VSC_4RANGER_Helicopter_Pilot"
#define HELICREW "VSC_4RANGER_Helicopter_Crew"

/*
#define PACIFIC_ASTEAMLEADER "B_T_Soldier_SL_F"
#define PACIFIC_TEAMLEADER "B_T_Soldier_TL_F"
#define PACIFIC_MEDIC "B_T_Medic_F"
#define PACIFIC_RIFLEMAN "B_T_Soldier_F"

#define WOODLAND_ASTEAMLEADER "B_W_Soldier_SL_F"
#define WOODLAND_TEAMLEADER "B_W_Soldier_TL_F"
#define WOODLAND_MEDIC "B_W_Medic_F"
#define WOODLAND_RIFLEMAN "B_W_Soldier_F"
*/
class ctrlMenuStrip;
class display3DEN
{
	class Controls
	{
		class MenuStrip: ctrlMenuStrip
		{
			class Items
			{
				class Tools {
					items[] += {"VS_CORE_Tools"};
				};
				class VS_Core_tools {
					text = "4RANGER Tools...";
					items[] = {"VS_CORE_Settings", "VS_CORE_Assets"};
				};
				class VS_Core_settings {
					text = "Load 4RANGER Settings";
					action = "['Are you sure you want to overwrite current settings with BA defaults?', 'Load BA Settings', ['Overwrite', {[] call VS_Core_fnc_edenLoadSettings}], true] call BIS_fnc_3DENShowMessage";
				};
				class VS_Core_assets {
					text = "Load 4RANGER Slots & Modules";
					action = "findDisplay 313 createDisplay 'VS_Core_edenGUI'";
				};
			};
		};
	};
};
class CfgGroups
{
	class West {
		class VS_Core_compositions {
			name = "VS";
			scope = 0;
			class infantry {
				name = "";
				class MultiCam_zeus {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = MULTICAM_PLATOONLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = MULTICAM_PLATOONLEADER;
						rank = "PRIVATE";
					};
				};
				class MultiCam_section {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = MULTICAM_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = MULTICAM_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = MULTICAM_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = MULTICAM_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = MULTICAM_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = MULTICAM_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = MULTICAM_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = MULTICAM_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class MultiCam_command {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = MULTICAM_PLATOONLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = MULTICAM_PLATOONASLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = MULTICAM_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = MULTICAM_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class MultiCam_Helicopter {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = HELIPILOT;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
				};
				class MultiCam_JET {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = HELIPILOT;
						rank = "PRIVATE";
					};
				};
				class MultiCam_PLANE {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = HELIPILOT;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = HELIPILOT;
						rank = "PRIVATE";
					};
				};
				class MultiCam_Gunship {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = HELIPILOT;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
					class Unit3{
						position[] = {0,-9,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
				};
				class MultiCam_VIC {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = HELICREW;
						rank = "PRIVATE";
					};
				};
				class PACIFIC_zeus {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = PACIFIC_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = PACIFIC_ASTEAMLEADER;
						rank = "PRIVATE";
					};
				};
				class PACIFIC_section {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = PACIFIC_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = PACIFIC_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = PACIFIC_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = PACIFIC_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = PACIFIC_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = PACIFIC_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = PACIFIC_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = PACIFIC_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class PACIFIC_command {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = PACIFIC_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = PACIFIC_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = PACIFIC_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = PACIFIC_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class PACIFIC_defaults {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = PACIFIC_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-6,0};
						vehicle = PACIFIC_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-9,0};
						vehicle = PACIFIC_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class WOODLAND_zeus {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {1,0,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
				};
				class WOODLAND_section {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = WOODLAND_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit4 {
						position[] = {1,0,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit5 {
						position[] = {1,-3,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit6 {
						position[] = {1,-6,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
					class Unit7 {
						position[] = {1,-9,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};

				};
				class WOODLAND_command {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1 {
						position[] = {0,-3,0};
						vehicle = WOODLAND_ASTEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit2{
						position[] = {0,-6,0};
						vehicle = WOODLAND_MEDIC;
						rank = "PRIVATE";
					};
					class Unit3 {
						position[] = {0,-9,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
				class WOODLAND_defaults {
					name = "";
					scope = 0;
					faction = "VS_C_4RANGER";
					side = 1;
					class Unit0 {
						position[] = {0,0,0};
						vehicle = WOODLAND_TEAMLEADER;
						rank = "PRIVATE";
					};
					class Unit1{
						position[] = {0,-3,0};
						vehicle = WOODLAND_MEDIC;
						rank = "PRIVATE";
					};
					class Unit2 {
						position[] = {0,-6,0};
						vehicle = WOODLAND_RIFLEMAN;
						rank = "PRIVATE";
					};
				};
			};
		};
	};
};
