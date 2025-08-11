/*
License GPL-2.0
*/
private _VS_core_settings = [
    [
		"VS_core_debug",
		"CHECKBOX",
		["Enable Debug", "Tick enable Viking Studios debug messages to appear in RPT and systemChat"],
		["Viking Studios Common", "Development"],
		false
	],
	[
		"VS_core_arsenal_objects",
		"EDITBOX",
		["Arsenal Objects", "Classnames, separated by commas and without double quotations, of objects that are spawnable by ""Add Filtered Arsenal"" module"],
		["Viking Studios Zeus", "Modules"],
		"C_supplyCrate_F,B_Slingload_01_Ammo_F"
	],
	[
		"VS_core_respawn_timer",
		"SLIDER",
		["Respawn Timer (seconds)", "Number of seconds player waves need to wait before respawn (0 -> 600 (10 minutes))"],
		["Viking Studios Zeus", "Respawn"],
		[1, 600, 5, 0],
		1,
		{
			setPlayerRespawnTime _this;
		}
	],
	[
		"VS_core_map_volume",
		"SLIDER",
		["Map Volume", "Volume to set when in a vehicle and looking at the map (so that you don't have to listen to loud as fuck helicopter rotors)"],
		"Viking Studios Common",
		[0, 1, 0.20, 2]
	],
	[
		"VS_core_arsenal_whitelist_mission",
		"EDITBOX",
		["Mission", "Mission specific equipment whitelist"],
		["Viking Studios Arsenal", "Arsenal Whitelists"],
		"[]",
		1,
		{
			// One day this will re-init all arsenals that have this filter set
		},
		true
	],
	[
        "VS_core_arsenal_whitelist_Standard",
        "EDITBOX",
        ["Standard", "Default equipment whitelist"],
        ["Viking Studios Arsenal", "Arsenal Whitelists"],
        "[]",
        1,
        {
            // One day this will re-init all arsenals that have this filter set
        },
        true
    ],
	[
        "VS_core_camo_whitelist_woodland",
        "EDITBOX",
        ["Woodland", "Woodland Camo whitelist"],
        ["Viking Studios Arsenal", "Uniform Whitelists"],
        "[]",
        1,
        {
            // One day this will re-init all arsenals that have this filter set
        },
        true
    ],
	[
        "VS_core_camo_whitelist_multicam",
        "EDITBOX",
        ["Multicam", "Multicam Camo whitelist"],
        ["Viking Studios Arsenal", "Uniform Whitelists"],
        "[]",
        1,
        {
            // One day this will re-init all arsenals that have this filter set
        },
        true
    ],
	[
        "VS_core_camo_whitelist_desert",
        "EDITBOX",
        ["Desert", "Desert Camo whitelist"],
        ["Viking Studios Arsenal", "Uniform Whitelists"],
        "[]",
        1,
        {
            // One day this will re-init all arsenals that have this filter set
        },
        true
    ],
	[
        "VS_core_camo_whitelist_arctic",
        "EDITBOX",
        ["Arctic", "Arctic Camo whitelist"],
        ["Viking Studios Arsenal", "Uniform Whitelists"],
        "[]",
        1,
        {
            // One day this will re-init all arsenals that have this filter set
        },
        true
    ]
];

{_x call CBA_Settings_fnc_init;} forEach _VS_core_settings;

//setBabel ACRE2

["unit", {
    params ["_player"];
    switch ((getNumber (configFile >> "CfgVehicles" >> (typeOf _player) >> "side"))) do {
        case 1: { ["en"] call acre_api_fnc_babelSetSpokenLanguages; };
        case 0: { ["ru"] call acre_api_fnc_babelSetSpokenLanguages; };
        case 2: { ["ab"] call acre_api_fnc_babelSetSpokenLanguages; };
        default {  ["ab","en","ru"] call acre_api_fnc_babelSetSpokenLanguages; };
    };
}, true] call CBA_fnc_addPlayerEventHandler;

//SET RADIO CHANNEL NAMES ACRE 2

call vs_core_fnc_setAcre;

// Create a climate select setting for each detected world
private _name = "";
private _prettyName = "";
{
	_name = configName _x;
	_prettyName = getText (configfile >> "CfgWorlds" >> _name >> "description");
	[
		format["vs_core_climate_%1", _name],
		"LIST",
		[format["Map Climate - %1", _prettyName], "Select the appropriate climate for this map"],
		["4RANGER Arsenal", "World Climates"],
		[
			["all", "woodland", "multicam", "desert", "arctic"], // Code (keep the same, else settings will reset)
			["All", "Woodland", "Multicam", "Desert", "Arctic"], // Display name
			0
		],
		1,
		{},
		true
	] call CBA_Settings_fnc_init;
} forEach ([
	("true" configClasses (configFile >> "CfgWorldList")),
	[],
	{getText (configFile >> "CfgWorlds" >> (configName _x) >> "description")}
] call BIS_fnc_sortBy);

CHVD_allowNoGrass = false;
