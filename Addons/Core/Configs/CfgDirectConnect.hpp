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
		action = "connectToServer [""45.92.44.67"", 2502, ""Athena""]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true; //Lies
	};
    class vsc_4ranger_backup_server {
		text = "2nd Server";
		textIsQuote = 0;
		picture = "\x\VS_C\core\img\4RANGER.paa";
		video = "";
		action = "connectToServer [""45.92.44.67"", 2602, ""Athena""]"; //This Goes [""IP"", Port, ""Password""], if you dont want the password visible just leave the pasword section empty.
		actionText = "Connect";
		condition = true;
	};
};
