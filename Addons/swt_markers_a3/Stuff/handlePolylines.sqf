params [["_markerName", "", [""]]];

if (markerShape _markerName != "POLYLINE") exitWith {};

private _playerId = ((_markerName splitString "#" select 1) splitString "/") select 0;
if (_playerId != swt_mrkIdStr) exitWith {}; //  swt_mrkIdStr transmitted from server on playerConnect event

private _channelId = ((_markerName splitString "/") select 2);
