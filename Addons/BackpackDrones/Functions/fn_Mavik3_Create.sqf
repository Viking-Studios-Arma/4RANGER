/*

Description:
	If player has drone item in backpack, removes drone item from backpack and spawns
    specified drone in front of player.

Returns:
	ACE Actions to insert as children

Author:
	Amateur-god
*/

params ["_unit"];
[player, "PutDown"] call ace_common_fnc_doGesture;

[
    {
        params ["_unit"];
        private _playerSide = side player; // Define _playerSide here

        _unit removeItemFromBackpack "VS_C_Mavik_3_Item";
        private _vehicleClass = switch (_playerSide) do {
            case west: {"mavik_3_BLU"};
            case east: {"mavik_3_OPF"};
            case independent: {"mavik_3_IND"};
            default {"mavik_3_CIV"};
        };

        _uavPos = _unit modelToWorld [0, 2, 0];
        _uav = createVehicle [_vehicleClass, _uavPos, [], 0, "CAN_COLLIDE"];
        createVehicleCrew _uav;
    },
    [_unit],
    1.5
] call CBA_fnc_waitAndExecute;
