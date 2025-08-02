if (hasInterface) then {
	call compile preprocessFileLineNumbers '\swt_markers_a3\UI\ui.sqf';
    call compile preprocessFileLineNumbers '\swt_markers_a3\Logic\logic_client.sqf';
	swt_fnc_handlePolylines = compile preprocessFileLineNumbers '\swt_markers_a3\Stuff\handlePolylines.sqf';
};

if (isServer) then {
	call compile preprocessFileLineNumbers '\swt_markers_a3\Logic\logic_server.sqf';
};

call swt_markers_profileNil;

0 spawn compile preprocessFileLineNumbers '\swt_markers_a3\UI\displays_init.sqf';
