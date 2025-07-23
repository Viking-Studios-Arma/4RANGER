class CfgPatches
{
    class VS_Markers
    {
        name = "4th Btn Ranger Regiment - Markers";
		author = "Viking Studios";
		authors[] = {"Amateur-god"};
		url = "https://discord.gg/bkdGvUNFbb";
		version = 1.0;
		versionAr[] = {1,0,0,0};
		versionStr = "v1.0.0";
		units[] = {"VS_4RANGER"};
        weapons[]={};
		magazines[] = {};
		ammo[] = {};
		worlds[] = {};
    };
};

class CfgMarkerClasses
{
    class VS_MarkerClass
    {
        displayName = "4th Btn Ranger Regiment Markers";
    };
};

class CfgMarkers
{
    class VS_4RANGER
    {
        name = "4RANGER - Logo";
        icon = "x\VS_C\Markers\data\logos\4ranger.paa";
        color[] = {1,1,1,1};
        size = 48;
        scope = 2;
        side = 2;
        shadow = 0;
        markerClass = "VS_MarkerClass";
    };
};
