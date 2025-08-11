["ACRE_PRC148", "default", "Ranger"] call acre_api_fnc_copyPreset;
["ACRE_PRC117F", "default", "Ranger"] call acre_api_fnc_copyPreset;

//PRC-148
["ACRE_PRC148", "Ranger", 1, "name", "COMPANY NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Ranger", 2, "name", "1ST PLATOON NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Ranger", 3, "name", "CONVOY NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Ranger", 4, "name", "AIR NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC148", "Ranger", 5, "name", "JFO NET"] call acre_api_fnc_setPresetChannelField;

//PRC-117F
["ACRE_PRC117F", "Ranger", 1, "name", "COMPANY NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Ranger", 2, "name", "1ST PLATOON NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Ranger", 3, "name", "CONVOY NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Ranger", 4, "name", "AIR NET"] call acre_api_fnc_setPresetChannelField;
["ACRE_PRC117F", "Ranger", 5, "name", "JFO NET"] call acre_api_fnc_setPresetChannelField;

["ACRE_PRC148", "Ranger"] call acre_api_fnc_setPreset;
["ACRE_PRC117F", "Ranger"] call acre_api_fnc_setPreset;
