  class VSC_Wildcat: UK3CB_BAF_Wildcat_AH1_TRN_8A
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="Wildcat";
    crew="VSC_Helicopter_Pilot";
    vehicleClass = "VSC_helicopters";
  };
  class VSC_Wildcat_AT: UK3CB_BAF_Wildcat_AH1_CAS_8C
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="Wildcat AT";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
  };
  class VSC_Wildcat_Armed: UK3CB_BAF_Wildcat_AH1_8_Armed
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="Wildcat Armed";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
  };
  class VSC_AH6M_Littlebird: B_Heli_Light_01_dynamicLoadout_F
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="AH6M Littlebird";
    crew="VSC_Helicopter_Pilot";
    vehicleClass = "VSC_helicopters";
  };
  class VSC_MH6M_Littlebird: B_Heli_Light_01_F
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="MH6M Littlebird";
    crew="VSC_Helicopter_Pilot";
    vehicleClass = "VSC_helicopters";
  };
  class VSC_AH1_Apache: UK3CB_BAF_Apache_AH1_Generic_MTP_RM
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="AH-1 Apache";
    crew="VSC_Helicopter_Pilot";
    vehicleClass = "VSC_helicopters";
  };
  class VSC_BAF_Merlin_HC4_18_GPMG: UK3CB_BAF_Merlin_HC4_18_GPMG
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="Merlin HC4 18 (GPMG)";
    crew="VSC_Helicopter_Pilot";
    vehicleClass = "VSC_helicopters";
  };
  class VSC_BAF_Merlin_HC4_24: UK3CB_BAF_Merlin_HC4_24
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="Merlin HC4 24";
    crew="VSC_Helicopter_Pilot";
    vehicleClass = "VSC_helicopters";
  };
  class VSC_BAF_Merlin_HC4_32: UK3CB_BAF_Merlin_HC4_32
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="Merlin HC4 32";
    crew="VSC_Helicopter_Pilot";
    vehicleClass = "VSC_helicopters";
  };
  class VSC_BAF_Merlin_HC4_CSAR: UK3CB_BAF_Merlin_HC4_CSAR
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="Merlin HC4 CSAR";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
  };
  class VSC_HH60GM: vtx_HH60
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="HH-60G/M Pavehawk (Black Hawk)";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
		class Turrets: Turrets
		{
			class CopilotTurret: CopilotTurret
			{
        gunnerType = "VSC_Helicopter_Pilot";
			};
      class MainTurret: MainTurret
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
		  class RightDoorGun: RightDoorGun
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
      class troop_commander: troop_commander
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class CargoTurret_01: CargoTurret_01
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_02: CargoTurret_02
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_03: CargoTurret_03
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_04: CargoTurret_04
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_05: CargoTurret_05
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_06: CargoTurret_06
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_11: CargoTurret_11
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_14: CargoTurret_14
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_15: CargoTurret_15
      {
        gunnerType = "VSC_Rifleman";
      };
    };
  };

  class VSC_MH60M: vtx_MH60
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="MH-60M";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
		class Turrets: Turrets
		{
			class CopilotTurret: CopilotTurret
			{
        gunnerType = "VSC_Helicopter_Pilot";
			};
      class MainTurret: MainTurret
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
		  class RightDoorGun: RightDoorGun
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
      class troop_commander: troop_commander
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class CargoTurret_01: CargoTurret_01
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_02: CargoTurret_02
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_03: CargoTurret_03
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_04: CargoTurret_04
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_05: CargoTurret_05
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_06: CargoTurret_06
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_11: CargoTurret_11
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_14: CargoTurret_14
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_15: CargoTurret_15
      {
        gunnerType = "VSC_Rifleman";
      };
    };
  };
  class VSC_UH60M_Medevac: vtx_UH60M_MEDEVAC
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="UH-60M Medevac";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
		class Turrets: Turrets
		{
			class CopilotTurret: CopilotTurret
			{
        gunnerType = "VSC_Helicopter_Pilot";
			};
      class MainTurret: MainTurret
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
		  class RightDoorGun: RightDoorGun
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
      class troop_commander: troop_commander
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class LeftWindow: LeftWindow
      {
        gunnerType = "VSC_Surgeon";
      };
      class RightWindow: RightWindow
      {
        gunnerType = "VSC_Medic";
      };
    };
  };
  class VSC_MH60M_DAP: vtx_MH60M_DAP
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="MH-60M DAP";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
    		class Turrets: Turrets
		{
			class CopilotTurret: CopilotTurret
			{
        gunnerType = "VSC_Helicopter_Pilot";
			};
      class MainTurret: MainTurret
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
		  class RightDoorGun: RightDoorGun
		  {
        gunnerType = "VSC_Helicopter_Crew";
		  };
      class troop_commander: troop_commander
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class CargoTurret_01: CargoTurret_01
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_02: CargoTurret_02
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_03: CargoTurret_03
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_04: CargoTurret_04
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_05: CargoTurret_05
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_06: CargoTurret_06
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_11: CargoTurret_11
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_14: CargoTurret_14
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_15: CargoTurret_15
      {
        gunnerType = "VSC_Rifleman";
      };
    };
  };
  class VSC_MH60M_DAP_MLASS: vtx_MH60M_DAP_MLASS
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="MH-60M DAP MLASS";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
    		class Turrets: Turrets
    {
      class CopilotTurret: CopilotTurret
      {
        gunnerType = "VSC_Helicopter_Pilot";
      };
      class MainTurret: MainTurret
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class RightDoorGun: RightDoorGun
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class troop_commander: troop_commander
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class CargoTurret_01: CargoTurret_01
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_02: CargoTurret_02
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_03: CargoTurret_03
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_04: CargoTurret_04
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_05: CargoTurret_05
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_06: CargoTurret_06
      {
        gunnerType = "VSC_Cadet";
      };
      class CargoTurret_11: CargoTurret_11
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_14: CargoTurret_14
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_15: CargoTurret_15
      {
        gunnerType = "VSC_Rifleman";
      };
    };
  };
  class VSC_MH60M_Slick: vtx_UH60M_SLICK
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="MH-60M Slick";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Crew"};
    vehicleClass = "VSC_helicopters";
    class Turrets: Turrets
    {
      class CopilotTurret: CopilotTurret
      {
        gunnerType = "VSC_Helicopter_Pilot";
      };
      class MainTurret: MainTurret
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class RightDoorGun: RightDoorGun
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class CargoTurret_01: CargoTurret_01
      {
        gunnerType = "VSC_IC";
      };
      class CargoTurret_02: CargoTurret_02
      {
        gunnerType = "VSC_Medic";
      };
      class CargoTurret_03: CargoTurret_03
      {
        gunnerType = "VSC_Rifleman";
      };
      class CargoTurret_04: CargoTurret_04
      {
        gunnerType = "VSC_Rifleman";
      };
    };
  };
  class VSC_AH64D_B1: fza_ah64d_b1
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="AH-64D Apache Longbow B1";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Pilot"};
    vehicleClass = "VSC_helicopters";
  };
  class VSC_Chinook: TF373_SOAR_MH47G
  {
    faction="VS_C_4RANGER";
    editorCategory="VS_C_4RANGER";
    editorSubcategory = "VSC_Helicopters";
    side=2;
    scope=2;
    scopecurator=2;
    displayName="MH-47G Chinook";
    crew="VSC_Helicopter_Pilot";
    typicalCargo[] = {"VSC_Helicopter_Pilot"};
    vehicleClass = "VSC_helicopters";
    class Turrets: Turrets
    {
      class CopilotTurret: CopilotTurret
      {
        gunnerType = "VSC_Helicopter_Pilot";
      };
      class MainTurret: MainTurret
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class backcrew: backcrew
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class HoistOperator: HoistOperator
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class loadmaster: loadmaster
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class RampSeatL: RampSeatL
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class RampSeatR: RampSeatR
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class RightDoorGun: RightDoorGun
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class TroopCommander: TroopCommander
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class Window_M240_Left: Window_M240_Left
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
      class Window_M240_Right: Window_M240_Right
      {
        gunnerType = "VSC_Helicopter_Crew";
      };
    };
  };
