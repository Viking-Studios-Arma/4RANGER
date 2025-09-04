params ["_player", "_didJIP"];

if (!hasInterface) exitWith {};
[
	{_this == _this}, // waitUntil {player == player}
	{
		[
			{alive _this}, // waitUntil {alive player}
			{

				["unit", {
				    params ["_player"];
				    switch ((getNumber (configFile >> "CfgVehicles" >> (typeOf _player) >> "side"))) do {
				        case 1: { ["en"] call acre_api_fnc_babelSetSpokenLanguages; }; //BLUFOR
				        case 0: { ["ru"] call acre_api_fnc_babelSetSpokenLanguages; }; //OPFOR
				        case 2: { ["fa"] call acre_api_fnc_babelSetSpokenLanguages; }; //INDFOR
				        case 3: {  ["en","ru", "fa"] call acre_api_fnc_babelSetSpokenLanguages; }; //CIVILIAN
				    };
				}, false] call CBA_fnc_addPlayerEventHandler;

				_languagesPlayerSpeaks = player getVariable ["canSpeak", []];

				switch (playerSide) do {
				case west: {
						if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["en"];};
					};
				case east: {
						if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ru"];};
					};
				case independent: {
						if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["fa"];};
					};
				case civilian: {
						if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["en", "ru", "fa"];};
					};
				};
				_languagesPlayerSpeaks call acre_api_fnc_babelSetSpokenLanguages;
			},
			_this // argument (still player)
		] call CBA_fnc_waitUntilAndExecute;
	},
	player // argument passes to condition & statement
] call CBA_fnc_waitUntilAndExecute;
