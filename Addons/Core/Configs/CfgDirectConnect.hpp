/* ----------------------------------------------------------------------------
Config: Direct Connect

Description:
	Registers direct connection tiles to the main menu spotlight.

Author:
	Carmichael
---------------------------------------------------------------------------- */

class CfgMainMenuSpotlight {
	class vsc_4ranger_a_operations_server {
		text = "Main Server";
		textIsQuote = 0;
		picture = "\x\VS_C\core\img\4RANGER.paa";
		video = "";
		action = "connectToServer [""45.92.44.67"", 2502, ""ContactWaitOut""]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true; //Lies
	};
    class vsc_4ranger_backup_server {
		text = "2nd Server";
		textIsQuote = 0;
		picture = "\x\VS_C\core\img\4RANGER.paa";
		video = "";
		action = "connectToServer [""45.92.44.67"", 2302, ""ContactWaitOut""]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true;
	};
    class vsc_4ranger_Lib_server {
		text = "Liberation Server";
		textIsQuote = 0;
		picture = "\x\VS_C\core\img\4RANGER.paa";
		video = "";
		action = "connectToServer [""45.92.44.67"", 2402, ""ContactWaitOut""]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true;
	};
};
