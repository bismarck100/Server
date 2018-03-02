infiSTAR_keyBinds_defaults = [];
fn_infiSTAR_keyBinds_build = {infiSTAR_keyBinds_defaults pushBack _this;};

[15, false, false, false, "infiSTAR Custom Keybinds Menu", "fn_infiSTAR_keyBinds_init", {true}] call fn_infiSTAR_keyBinds_build;
[77, false, false, false, "Private Chat", "fn_infiSTAR_PrivChat_init", {true}] call fn_infiSTAR_keyBinds_build;

[0,""] call fn_infiSTAR_keyBinds_build;
[0,"EXILE KeyBinds:"] call fn_infiSTAR_keyBinds_build;
[0, false, false, false, "Lock / Unlock", { if!(ExileClientIsHandcuffed)then{call ExileClient_object_vehicle_interaction_keyLock;}; }, {true}] call fn_infiSTAR_keyBinds_build;
[0, false, false, false, "Place 3D Group Marker", { if!(ExileClientIsHandcuffed)then{if(ExileClientAllowPartyMarkers && !(ExileClientPartyID isEqualTo -1))then{call ExileClient_system_party_updateMyMarker;};}; }, {true}] call fn_infiSTAR_keyBinds_build;
[0, false, false, false, "Clear Map Markers", { ExileClientWaypoints = []; }, {true}] call fn_infiSTAR_keyBinds_build;
[0xDB,"Switch Party ESP mode"] call fn_infiSTAR_keyBinds_build;
[0x29,"Toggle stats"] call fn_infiSTAR_keyBinds_build;
[0x0B,"Auto running toggle"] call fn_infiSTAR_keyBinds_build;
[0x20,"Auto running stop"] call fn_infiSTAR_keyBinds_build;
[0x02,"Primary weapon"] call fn_infiSTAR_keyBinds_build;
[0x03,"Handgun"] call fn_infiSTAR_keyBinds_build;
[0x04,"Secondary weapon"] call fn_infiSTAR_keyBinds_build;
[0x05,"(Un-)Holster weapon"] call fn_infiSTAR_keyBinds_build;
[0x06,"Earplugs toggle"] call fn_infiSTAR_keyBinds_build;
[0x07,"Open XM8"] call fn_infiSTAR_keyBinds_build;

[0,"",{!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0,"Admin KeyBinds:",{!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x3B, false, false, false, "Open infiSTAR Admin Menu", { FILLMAINSTATE=0;[] call fnc_FULLinit; }, {!isNil "fnc_FULLinit"}] call fn_infiSTAR_keyBinds_build;
[0x3C, false, false, false, "Territory Management", "fn_TM_init", {!isNil "fnc_FULLinit"}] call fn_infiSTAR_keyBinds_build;
[0x3D, false, false, false, "Admin Console", "fnc_workplace", {!isNil "fnc_workplace" && "AdminConsole" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x3D, true, false, false, "Attach/Detach CursorTarget", {[""] call fnc_ATTACH_TO;}, {!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x3E, false, false, false, "Treelist Item Spawn Menu", "FN_GEAR_ON_TARGET", {"Items spawn menu" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x3F, false, false, false, "Change Weather + View Distance", "FN_CHANGE_VIEWDISTANCE", {"Change ViewDistance" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x40, false, false, false, "Heal Cameraon (and self)", "infiSTAR_A3Heal", {"HealSelf" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x41, false, false, false, "Repair + Refuel near camera", "infiSTAR_A3RestoreNear", {"HealRepairNear" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x42, false, false, false, "Flip Target Vehicle", {[""] call fnc_flipVeh;}, {"Flip Vehicle" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x43, false, false, false, "Show Gear of Spectated Target", "admin_showGear", {"ShowGear" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x43, true, false, false, "Toggle Spectate Overlay", "fn_infiSTAR_admin_ToggleSpectateOverlay", {!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x44, false, false, false, "Stop spectating", "fn_infiSTAR_admin_endSpectate", {!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x57, false, false, false, "Spawn Ammo", "infiSTAR_A3addAmmo", {"Spawn Ammo" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x02, false, true, false, "Lightning on Target", {[""] call fnc_Light_selected;}, {"Light" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x2F, false, true, false, "Fly Down", "infiSTAR_go_down", {!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x05, true, false, false, "Fly Up", "infiSTAR_FlyUp", {"FlyUp" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x05, false, true, false, "Tp Up", "infiSTAR_TpUp", {"FlyUp" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x06, true, false, false, "Teleport 10m in facing direction", "infiSTAR_Tpdirection", {!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x2F, true, false, false, "Teleport 1m in facing direction", "infiSTAR_shortTP", {!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x08, false, false, false, "Unlock/Lock vehicle or Open/Close Doors", "infiSTAR_A3Togglelock", {"UnlockLockVehicle" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x30, true, false, false, "Hover", "fnc_Hover", {!isNil "ADMINLEVELACCESS"}] call fn_infiSTAR_keyBinds_build;
[0x17, true, false, false, "Show Info (Like Codes of Vehicles and Doors)", "admin_showinfo", {"showinfo" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0xD3, false, false, false, "Delete Target", {[""] call fnc_deleteVeh_selected;}, {"Delete Vehicle" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x03, false, true, false, "Kill / Destroy Target", {[""] call fnc_Kill_selected;}, {"Kill" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;
[0x0F, true, false, false, "Open Map", {openMap true;}, {"Teleport On Map Click" call ADMINLEVELACCESS}] call fn_infiSTAR_keyBinds_build;





fn_infiSTAR_keyBinds_defaults = {infiSTAR_keyBinds_defaults};
infiSTAR_keyBinds_array = call compile(profileNamespace getVariable ["infiSTAR_keyBinds",str (call fn_infiSTAR_keyBinds_defaults)]);
fn_infiSTAR_keyBinds_findIds = {
	infiSTAR_keyBindIds_array = [];
	{ infiSTAR_keyBindIds_array pushBackUnique (_x select 0); } forEach infiSTAR_keyBinds_array;
};
call fn_infiSTAR_keyBinds_findIds;
fn_infiSTAR_keyBinds_edit_KeyDown = {
	_selection = lbCurSel (uiNamespace getVariable ["infiSTAR_keyBinds_ListBox",controlNull]);
	_lbText = (uiNamespace getVariable ["infiSTAR_keyBinds_ListBox",controlNull]) lbText _selection;
	if!(_lbText isEqualTo "")then
	{
		params ["_keyctrl","_keycode", "_keyshift", "_keyctrl", "_keyalt"];
		_keyName = keyName _keycode;
		if!(_keyName isEqualTo "")then
		{
			_infiSTAR_keyBinds_edit = uiNamespace getVariable ["infiSTAR_keyBinds_edit",controlNull];
			_infiSTAR_keyBinds_edit ctrlSetText (call fn_infiSTAR_keyBinds_getKeyText);
			
			_curArray = infiSTAR_keyBinds_array param [_selection, [], [[]]];
			if(count _curArray isEqualTo 7)then
			{
				_curArray set[0, _keycode];
				_curArray set[1, _keyshift || _keycode in [0x2A,0x36]];
				_curArray set[2, _keyctrl || _keycode in [0x1D,0x9D]];
				_curArray set[3, _keyalt || _keycode in [0x38,0xB8]];
				infiSTAR_keyBinds_array set[_selection, _curArray];
			};
		};
	};
	false
};
fn_infiSTAR_keyBinds_btnSave = {
	profileNamespace setVariable ["infiSTAR_keyBinds",str infiSTAR_keyBinds_array];
	saveprofileNamespace;
	call fn_infiSTAR_keyBinds_findIds;
};
fn_infiSTAR_keyBinds_btnReset = {
	_selection = lbCurSel (uiNamespace getVariable ["infiSTAR_keyBinds_ListBox",controlNull]);
	_lbText = (uiNamespace getVariable ["infiSTAR_keyBinds_ListBox",controlNull]) lbText _selection;
	if!(_lbText isEqualTo "")then
	{
		_curArray = (call fn_infiSTAR_keyBinds_defaults) param [_selection, [], [[]]];
		if(count _curArray isEqualTo 7)then
		{
			infiSTAR_keyBinds_array set[_selection, _curArray];
			profileNamespace setVariable ["infiSTAR_keyBinds",str infiSTAR_keyBinds_array];
			saveprofileNamespace;
			call fn_infiSTAR_keyBinds_findIds;
			
			_curArray params ["_keycode","_keyshift","_keyctrl","_keyalt"];
			_infiSTAR_keyBinds_edit = uiNamespace getVariable ["infiSTAR_keyBinds_edit",controlNull];
			_infiSTAR_keyBinds_edit ctrlSetText (call fn_infiSTAR_keyBinds_getKeyText);
		};
	};
};
fn_infiSTAR_keyBinds_btnResetAll = {
	infiSTAR_keyBinds_array = call fn_infiSTAR_keyBinds_defaults;
	profileNamespace setVariable ["infiSTAR_keyBinds",str infiSTAR_keyBinds_array];
	saveprofileNamespace;
	call fn_infiSTAR_keyBinds_findIds;
	
	systemChat "Your infiSTAR custom keybinds have been reset..!";
	
	closeDialog 0;
	createDialog "infiSTAR_KeyBinds";
};
fn_infiSTAR_keyBinds_lbSelChanged = {
	_data = (_this select 0) lbData (_this select 1);
	
	_ctrlEdit = uiNamespace getVariable ["infiSTAR_keyBinds_edit",controlNull];
	_ctrlDescribe = (ctrlParent _ctrlEdit) displayCtrl 103;
	_ctrlBtnSave = (ctrlParent _ctrlEdit) displayCtrl 105;
	_ctrlBtnReset = (ctrlParent _ctrlEdit) displayCtrl 106;

	if(_data isEqualTo "+")then{
		_ctrlDescribe ctrlSetText "ASSIGNED KEY";
		{_x ctrlEnable true;_x ctrlShow true;} forEach [_ctrlEdit,_ctrlBtnSave,_ctrlBtnReset];
	} else {
		_data = _data select [1,(count _data)-2];
		if(_data isEqualTo "")then{
			_ctrlDescribe ctrlSetText "ASSIGNED KEY";
		} else {
			_ctrlDescribe ctrlSetText ("ASSIGNED KEY: "+_data);
		};
		{_x ctrlEnable false;_x ctrlShow false;} forEach [_ctrlEdit,_ctrlBtnSave,_ctrlBtnReset];
	};


	_lbText = (_this select 0) lbText (_this select 1);
	if!(_lbText isEqualTo "")then
	{
		_curArray = infiSTAR_keyBinds_array param [_this select 1, [], [[]]];
		if(count _curArray isEqualTo 7)then
		{
			_curArray params ["_keycode","_keyshift","_keyctrl","_keyalt"];
			_infiSTAR_keyBinds_edit = uiNamespace getVariable ["infiSTAR_keyBinds_edit",controlNull];
			_infiSTAR_keyBinds_edit ctrlSetText (call fn_infiSTAR_keyBinds_getKeyText);
		};
	};
};
fn_infiSTAR_keyBinds_getKeyText = {
	_keyName = keyName _keycode;
	_ret = _keyName select [1,(count _keyName)-2];
	if(_keyshift && !(_keycode in [0x2A,0x36]))then{ _ret = "Shift + " + _ret;};
	if(_keyctrl && !(_keycode in [0x1D,0x9D]))then{ _ret = "Ctrl + " + _ret;};
	if(_keyalt && !(_keycode in [0x38,0xB8]))then{ _ret = "Alt + " + _ret;};
	_ret
};
fn_infiSTAR_keyBinds_initListbox = {
	uiNamespace setVariable ["infiSTAR_keyBinds_ListBox",_this];

	lbClear _this;
	{
		if(count _x < 7)then{
			_x params ["_keyDownID","_keyName",["_keyAccess",{true},[{}]]];
			if(call _keyAccess)then{
				_lbIndex = _this lbAdd _keyName;
				_this lbSetData [_lbIndex, keyName _keyDownID];
			};
		} else {
			_x params ["_keyDownID","_KeyDownShift","_KeyDownCtrl","_KeyDownAlt","_keyName","_keyFnc","_keyAccess"];
			if(call _keyAccess)then{
				_lbIndex = _this lbAdd _keyName;
				_this lbSetData [_lbIndex, "+"];
			};
		};
	} forEach infiSTAR_keyBinds_array;
};
fn_infiSTAR_keyBinds_init = {
	if!((count (call fn_infiSTAR_keyBinds_defaults)) isEqualTo (count infiSTAR_keyBinds_array))then
	{
		systemChat "There are new Keybinds, you need to press the Reset All button so they are shown in the infiSTAR Keybinds!";
	};
	if(isNull (uiNamespace getVariable ["infiSTAR_keyBinds_ListBox",controlNull]))then{ createDialog "infiSTAR_KeyBinds"; };
};
fn_infiSTAR_keyBinds_KeyDown = {
	params ["_keyctrl","_keycode", "_keyshift", "_keyctrl", "_keyalt"];
	_handle = false;
	if(_keycode in infiSTAR_keyBindIds_array)then
	{
		{
			_x params ["_KeyDownID","_KeyDownShift","_KeyDownCtrl","_KeyDownAlt","_keyName","_keyFnc","_keyAccess"];
			if(_keycode isEqualTo _KeyDownID && _keyshift isEqualTo _KeyDownShift && _keyctrl isEqualTo _KeyDownCtrl && _keyalt isEqualTo _KeyDownAlt)then
			{
				if(_keyFnc isEqualType "")then{ _keyFnc = missionNamespace getVariable [_keyFnc,{}]; };
				if(call _keyAccess)then{call _keyFnc;_handle=true;};
			};
		} forEach infiSTAR_keyBinds_array;
	};
	infiSTAR_keyBinds_pressed = _handle;
	false
};
if(!isNil "infiSTAR_keyBinds_startThread")then{terminate infiSTAR_keyBinds_startThread;};
infiSTAR_keyBinds_startThread = [] spawn {
	waitUntil {
		uiSleep 1;
		if(!isNil "infiSTAR_keyBinds_KeyUp_ID")then{(findDisplay 46) displayRemoveEventHandler ["KeyUp",infiSTAR_keyBinds_KeyUp_ID];};
		if(!isNil "infiSTAR_keyBinds_KeyDown_ID")then{(findDisplay 46) displayRemoveEventHandler ["KeyDown",infiSTAR_keyBinds_KeyDown_ID];};
		infiSTAR_keyBinds_KeyDown_ID = (finddisplay 46) displayAddEventHandler ["KeyDown",{ call fn_infiSTAR_keyBinds_KeyDown }];
		!isNil "infiSTAR_keyBinds_pressed"
	};
};
