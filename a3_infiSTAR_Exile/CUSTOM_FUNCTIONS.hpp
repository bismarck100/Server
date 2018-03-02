/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
	
	Copyright infiSTAR - 2011 - 2017. All rights reserved.
	Christian (Chris) L. (infiSTAR23@gmail.com) Developer of infiSTAR
	
	Description:
	Arma AntiHack & AdminTools - infiSTAR.de
	
	
	READ:
	type 0 = just execute
	type 1 = toggleable function
	type 2 = function targets the selected player (it will be _this)
	
	name = name shown in the admin menu (this is also what has to be put in the EXILE_AHAT_CONFIG.sqf as Admin Power!)
	
	code = code to execute - if you have a linebreak within the code, you need to put a \ at the end of each line!
*/
class CfgCustomFunctions {
	class custom1 {
		type = 1;	// just execute
		name = "Zombie Shield";
		code =  "if (isNil ('MiZ_Zombie_Toggle1')) then \
				{\
					MiZ_Zombie_Toggle1 = 0;\
				};\
				if (MiZ_Zombie_Toggle1 == 0) then\
				{ \
					systemchat 'MiZ Zombie Shield: Activated';\
					MiZ_Zombie_Toggle1 = 1;\
				}\
				else\
				{\
					systemchat 'MiZ Zombie Shield: Deactivated';\
					MiZ_Zombie_Toggle1 = 0;\
				};\
				[]spawn \
				{\
					while {MiZ_Zombie_Toggle1 == 1} do \
					{\
							_Pos1 = getPos player;\
							_EntitiesArray1 = _Pos1 nearEntities ['all',20]; \
							{ \
								_Zombie1 = _x;\
								if (_Zombie1 getVariable 'RZ_isZombie') then \
								{\
									deleteVehicle _Zombie1; \
									sleep 1; \
								}; \
								if (_Zombie1 getVariable 'RZ_isDemon') then \
								{\
									deleteVehicle _Zombie1;  \
									sleep 1; \
								};\
						}foreach _EntitiesArray1;\
					sleep 1; \
					};\
				};\
				titleText ['Zombie Shield: Loaded','PLAIN DOWN']; titleFadeOut 4";
	};
/*	class custom2 {
		type = 1;	// toggle on/off
		name = "custom2: type = 1";
		code = "if(isNil'custom2toggled')then{systemChat 'custom2 toggled on';custom2toggled=true;}else{systemChat 'custom2 toggled off';custom2toggled=nil;};";
	};
	class custom3 {
		type = 2;	// targets selected player (_this)
		name = "custom3: type = 2";
		code = "systemChat format['custom3 -> selected player: %1',name _this];";
	};
	class custom4 {
		type = 2;	// targets selected player (_this)
		name = "custom4: type = 2";
		code = "[_this] call fnc_TP2ME;";
	};
	class custom5 {
		type = 0;	// just execute
		name = "custom5: type = 0";
		code = "systemChat 'custom5';";
	};
*/	
};
