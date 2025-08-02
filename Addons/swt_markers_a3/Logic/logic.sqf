swt_markers_clear_map_fnc = {
	{
		deleteMarkerLocal _x;
	} forEach swt_markers_allMarkers;
	swt_markers_clear_map = player;
	publicVariableServer "swt_markers_clear_map";
};

swt_markers_sys_fnc_client = {
	_params = _this;
	if (swt_markers_DisableLoc) exitWith {};
	_params call swt_markers_sys_create;
};


swt_markers_sys_load_fnc = {
	//if (swt_markers_DisableLoc) exitWith {};
	_loaded_arr = _this select 0;
	_player = _this select 1;
	_swt_id = _player getVariable "swt_id";
	_index = _player getVariable "swt_markers_sys_index";
	_index1 = 0;
	_player setVariable ["swt_markers_sys_index",_index + (count _loaded_arr)];
	{
		if (side _player == side _x) then {
			_unit = _x;
			_arr = call compile format ["swt_markers_sys_unit_id_%1",_unit getVariable "swt_id"];
			_index1 = _index;
			_marks_to_send = [];
			{
				_chek_uniq = true;
				_marker_arr = + _x;
				{
					if (((((_x select 2) select 1) select 0) == (((_marker_arr select 2) select 1) select 0)) and ((((_x select 2) select 1) select 1) == (((_marker_arr select 2) select 1) select 1))) exitWith {
						_chek_uniq = false;
					};
				} forEach _arr;
				if (_chek_uniq) then {
					_index1 = _index1 + 1;
					_marker_arr set [0,_index1];
					_marker_arr set [1,_swt_id];
					_marks_to_send pushBack _marker_arr;
					//call compile format ["swt_markers_sys_unit_id_%1 pushBack _marker_arr",_unit getVariable "swt_id"];
				};
			} forEach _loaded_arr;
			if (!(isDedicated)and(_unit == player)and!(isMultiplayer)) then {
				{
					_x call swt_markers_sys_create;
				} forEach _marks_to_send;
			};
			call compile format ["swt_markers_sys_unit_id_%1 = swt_markers_sys_unit_id_%1 + _marks_to_send",_unit getVariable "swt_id"];
			swt_markers_sys_load_client = [_marks_to_send,_player];
			(owner _x) publicVariableClient "swt_markers_sys_load_client";
		};
	} forEach (playableUnits+switchableUnits);
	//Сраный респаун
	_index1 = 0;
	_marks_to_send = [];
	if ((side _player) in swt_markers_sys_sides) then {
		_arr = call compile format ["swt_markers_sys_side_%1",side _player];
		_index1 = _index;
		{

			_chek_uniq = true;
			_marker_arr = + _x;
			{
				if (((((_x select 2) select 1) select 0) == (((_marker_arr select 2) select 1) select 0)) and ((((_x select 2) select 1) select 1) == (((_marker_arr select 2) select 1) select 1))) exitWith {
					_chek_uniq = false;
				};
			} forEach _arr;
			if (_chek_uniq) then {
				_index1 = _index1 + 1;
				_marker_arr set [0,_index1];
				_marker_arr set [1,_swt_id];
				call compile format ["swt_markers_sys_side_%1 pushBack _marker_arr",side _player];
			};
		} forEach _loaded_arr;
	};

	_player sideChat format ["%1 load %2 markers on map.", name _player, count _loaded_arr];
	diag_log format ["SWT MARKERS SERVER: %1 LOAD %2 MARKERS ON MAP", name _player, count _loaded_arr];
};

swt_change_dir_PV_fnc = {
	//if (swt_markers_DisableLoc) exitWith {};
	_mark = _this select 0;
	_dir = _this select 1;
	_player = _this select 2;
	diag_log format ["SWT MARKERS SERVER: %1 CHANGE DIR MARKER %2 TO %3",name _player,_mark,_dir];
	//Для поциков не на серве дирекшен пока не меняется...
	_send = false;
	{
		_swt_id = _x getVariable "swt_id";
		_unit = _x;
		_arr = call compile format ["swt_markers_sys_unit_id_%1", _swt_id];
		{
			if ((format ["SWT_MARKERS #%1/%2",(_x select 0), (_x select 1)]) == _mark) exitWith {
				if ((!isDedicated)and(player == _unit)) then {_mark setMarkerDirLocal _dir;};
				_correct = (_x select 2);
				_correct set [4,_dir];
				call compile format ["swt_markers_sys_unit_id_%1 set [_forEachIndex,[(_x select 0),(_x select 1),_correct]]", _swt_id];
				_send = true;
			};
		} forEach _arr;
		if (_send) then {
			swt_change_dir_PV_client = [_mark,_dir];
			(owner _x) publicVariableClient "swt_change_dir_PV_client";
		};
	} forEach (playableUnits+switchableUnits);
	//{
		_side = side _player;
		_arr = call compile format ["swt_markers_sys_side_%1", _side];
		{
			if ((format ["SWT_MARKERS #%1/%2",(_x select 0), (_x select 1)]) == _mark) exitWith {
				_correct = (_x select 2);
				_correct set [4,_dir];
				call compile format ["swt_markers_sys_side_%1 set [_forEachIndex,[(_x select 0),(_x select 1),_correct]]", _side];
			};
		} forEach _arr;
	//} forEach swt_markers_sys_sides;
};

swt_markers_sys_request_del_fnc = {
	//if (swt_markers_DisableLoc) exitWith {};
	_player = _this select 0;
	_mark = _this select 1;
	diag_log format ["SWT MARKERS SERVER: %1 DEL MARKER %2",name _player,_mark];
	//{
	for "_i" from 1 to swt_markers_sys_count do {
		_swt_id = _i;
		_arr = call compile format ["swt_markers_sys_unit_id_%1", _swt_id];
		call compile format ["swt_markers_sys_unit_id_%1 = []", _swt_id];
		{
			if ((format ["SWT_MARKERS #%1/%2",(_x select 0), (_x select 1)]) != _mark) then {
				call compile format ["swt_markers_sys_unit_id_%1 pushBack _x", _swt_id];
			};
		} forEach _arr;
	};

	//	{
		_side = side _player;
		_arr = call compile format ["swt_markers_sys_side_%1", _side];
		call compile format ["swt_markers_sys_side_%1 = []", _side];
		{
			if ((format ["SWT_MARKERS #%1/%2",(_x select 0), (_x select 1)]) != _mark) then {
				call compile format ["swt_markers_sys_side_%1 pushBack _x", _side];
			};
		} forEach _arr;
	//} forEach swt_markers_sys_sides;
	//} forEach (playableUnits+switchableUnits);
};

swt_markers_DisableLoc_fnc = {
	disableSerialization;
	_ctrl = _this;
	swt_markers_DisableLoc = !swt_markers_DisableLoc;
	if (swt_markers_DisableLoc) then {
		_ctrl ctrlSetText localize "STR_SWT_M_ENABLE";
	} else {
		_ctrl ctrlSetText localize "STR_SWT_M_DISABLE";
	};
};
0 spawn {

"swt_change_dir_PV_client" addPublicVariableEventHandler {
	if (swt_markers_DisableLoc) exitWith {};
	_params = (_this select 1);
	_mark = _params select 0;
	_dir = _params select 1;
	_mark setMarkerDirLocal _dir;
};

"swt_markers_sys_request_del" addPublicVariableEventHandler {
	(_this select 1) call swt_markers_sys_request_del_fnc;
};

"swt_markers_send" addPublicVariableEventHandler {
	(_this select 1) call swt_markers_sys_fnc_client;
};

"swt_markers_sys_load_client" addPublicVariableEventHandler {
	if (swt_markers_DisableLoc) exitWith {};
	_params = _this select 1;
	(_player select 1) sideChat format ["%1 load %2 markers on map.", name (_params select 1), count (_params select 0)];
	{
		_x call swt_markers_sys_create;
	} forEach (_params select 0);
};


if (isServer) then {
	swt_markers_sys_unit_list = true;
	swt_markers_sys_sides = [];
	{
		//swt_markers_sys_unit_list pushBack [];
		call compile format ["swt_markers_sys_unit_id_%1 = []",(_forEachIndex+1)];
		if !((side _x) in swt_markers_sys_sides) then {
			call compile format ["swt_markers_sys_side_%1 = []",side _x];
			swt_markers_sys_sides pushBack (side _x);
		};
		_x setVariable ["swt_id",(_forEachIndex+1)];
		_x setVariable ["swt_markers_sys_index",0];
	} forEach (playableUnits+switchableUnits);
	swt_markers_sys_count = count (playableUnits+switchableUnits);
	swt_id_new = (count (playableUnits+switchableUnits) + 1);
	publicVariable "swt_markers_sys_unit_list";

	"swt_markers_sys_req_markers" addPublicVariableEventHandler {
		//_this spawn {
		_player = (_this select 1);
		//uisleep 2;
		if (isNil {_player getVariable "swt_id"}) then {
			diag_log format ["SWT MARKERS ERROR: ID %1 NOT FOUND (RESPAWN - BASE?), SEARCHING SIMILAR, CREATING NEW", name _player];
			_player setVariable ["swt_id",swt_id_new];
			swt_markers_sys_count = swt_id_new;
			swt_id_new = swt_id_new + 1;
			_player setVariable ["swt_markers_sys_index",0];
			_swt_id = 0;
			{
				if ((_x != _player) and ((leader group _x) != _x)) then {
					_swt_id = _x getVariable "swt_id";
				};
			} forEach (units group _player); //Ищем похожий

			if (_swt_id == 0) then {
				if (isNil {missionNamespace getVariable format ["swt_markers_sys_side_%1",side _player]}) then {
					diag_log format ["SWT_MARKERS ERROR: SIDE %1 DO NOT EXIST", side _player];
					call compile format ["swt_markers_sys_unit_id_%1 = + []",_player getVariable "swt_id"];
					diag_log "SWT MARKERS ERROR: ID AND SIDE NOT FOUND";
				} else {
					call compile format ["swt_markers_sys_unit_id_%1 = + swt_markers_sys_side_%2",_player getVariable "swt_id",side _player];
					diag_log format ["SWT MARKERS ERROR: SIDE %1 FOUND", side _player];
				};
			} else {
				call compile format ["swt_markers_sys_unit_id_%1 = + swt_markers_sys_unit_id_%2",_player getVariable "swt_id",_swt_id];
				diag_log format ["SWT MARKERS: SIMILAR ID: %1",_swt_id];
			};
			diag_log "SWT MARKERS ERROR: FIXED";
		};
		diag_log format ["SWT MARKERS SERVER: %1 ID:%2 REQUEST HIS MARKERS ",name _player,_player getVariable "swt_id"];
		(owner _player) publicVariableClient format ["swt_markers_sys_unit_id_%1",_player getVariable "swt_id"];
		swt_markers_sys_req_done = _player getVariable "swt_id";
		(owner _player) publicVariableClient "swt_markers_sys_req_done";
		//};
	};




	"swt_markers_sys_load" addPublicVariableEventHandler {
		(_this select 1) call swt_markers_sys_load_fnc;
	};

	"swt_change_dir_PV" addPublicVariableEventHandler {
		(_this select 1) call swt_change_dir_PV_fnc;
	};

	"swt_markers_request_m" addPublicVariableEventHandler {
		_player = _this select 1;
		swt_markers_request_m_done = missionNamespace getVariable format ["swt_markers_sys_unit_id_%1", _player getVariable "swt_id"];
		(owner _player) publicVariableClient "swt_markers_request_m_done";
	};
};

if (!isDedicated) then {
	//uisleep 10;
	waitUntil {!isNil "swt_markers_sys_unit_list"};
	waitUntil {!isNull player};
	swt_markers_sys_req_markers = player;
	publicVariableServer "swt_markers_sys_req_markers";
	if !(isServer) then {
		waitUntil {!isNil "swt_markers_sys_req_done"};
		swt_id = swt_markers_sys_req_done;
	} else {swt_id = player getVariable "swt_id"};
	if (isNil "swt_id") exitWith {diag_log "SWT MARKERS ERROR: ID NOT FOUND"};
	diag_log format ["SWT MARKERS: CONNECT. ID: %1",swt_id];

	_arr = call compile format ["swt_markers_sys_unit_id_%1", swt_id]; //Массив не актуален
	diag_log format ["SWT MARKERS: MY MARKERS: %1",_arr];
	{
		_x call swt_markers_sys_create;
	} forEach _arr;

};
};