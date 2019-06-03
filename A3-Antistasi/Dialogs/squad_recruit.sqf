private ["_display","_childControl","_coste","_costHR","_unitsX","_formatX"];
if (!([player] call A3A_fnc_hasRadio)) exitWith {if !(hasIFA) then {hint "You need a radio in your inventory to be able to give orders to other squads"} else {hint "You need a Radio Man in your group to be able to give orders to other squads"}};
_nul = createDialog "squad_recruit";

sleep 1;
disableSerialization;

_display = findDisplay 100;

if (str (_display) != "no display") then
{
	_ChildControl = _display displayCtrl 104;
	_coste = 0;
	_costHR = 0;
	//_formatX = (cfgSDKInf >> (groupsSDKSquad select 0));
	//_unitsX = [_formatX] call groupComposition;
	//{_coste = _coste + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKSquad;
	//_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];

	_ChildControl = _display displayCtrl 105;
	_coste = 0;
	_costHR = 0;
	//_formatX = (cfgSDKInf >> (groupsSDKmid select 0));
	//_unitsX = [_formatX] call groupComposition;
	{_coste = _coste + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKmid;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];

	_ChildControl = _display displayCtrl 106;
	_coste = 0;
	_costHR = 0;
	//_formatX = (cfgSDKInf >> (groupsSDKAT select 0));
	//_unitsX = [_formatX] call groupComposition;
	{_coste = _coste + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKAT;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];

	_ChildControl = _display displayCtrl 107;
	_coste = 0;
	_costHR = 0;
	//_unitsX = [SDKSL,SDKSL];
	{_coste = _coste + (server getVariable (_x select 0)); _costHR = _costHR +1} forEach groupsSDKSniper;
	_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];

	_ChildControl = _display displayCtrl 108;
	_coste = (2*(server getVariable staticCrewTeamPlayer));
	_costHR = 2;
	//_unitsX = [SDKGL,SDKRifleman];
	_coste = _coste + ([SDKMGStatic] call A3A_fnc_vehiclePrice);
	_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];


	_ChildControl = _display displayCtrl 109;
	_coste = (2*(server getVariable staticCrewTeamPlayer));
	_costHR = 2;
	_coste = _coste + ([vehSDKAT] call A3A_fnc_vehiclePrice);
	_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];

	_ChildControl = _display displayCtrl 110;
	_coste = (2*(server getVariable staticCrewTeamPlayer));
	_costHR = 2;
	_coste = _coste + ([vehSDKTruck] call A3A_fnc_vehiclePrice) + ([staticAAteamPlayer] call A3A_fnc_vehiclePrice);
	_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];

	_ChildControl = _display displayCtrl 111;
	_coste = (2*(server getVariable staticCrewTeamPlayer));
	_costHR = 2;
	_coste = _coste + ([SDKMortar] call A3A_fnc_vehiclePrice);
	_ChildControl  ctrlSetTooltip format ["Cost: %1 €. HR: %2",_coste,_costHR];
};
