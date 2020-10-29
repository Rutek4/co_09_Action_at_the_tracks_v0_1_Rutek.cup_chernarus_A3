createDialog "ENDSCREEN";
_endScreenDialog = 400;
_titleDialog = 1100;
_missionNameDialog = 1101;
_missionTextDialog = 1102;
_outcomeDialog = 1103;
_tasksDialog = 1104;
_leftTextDialog = 1105;
_rightTextDialog = 1106;
_exitTextDialog = 1107;

params ["_teams"];

_tasksOutput = "";
_teamPlayersName = "";
_teamAiName = "";
_outcomeText = "TOTALNE ZWYCIĘSTWO";
_titleText = "AFTER ACTION REPORT";
_missionName = format ["%1", getMissionConfigValue ["OnLoadName", 0]];
_missionText = format ["%1", getMissionConfigValue ["overviewText", 0]];

// 0 totalne zwyciestwo
// 1 umiarkowane zwyciestwo
// 2 starcie nierozstrzygnięte (???)
// 3 porażka
// 4 totalna porażka

_allTasks = player call BIS_fnc_tasksUnit;

if ((_allTasks select (count (_allTasks) - 1)) call BIS_fnc_taskState == 'FAILED') then {
	_outcomeText = "TOTALNA PORAŻKA";
};

{
	private ['_taskIcon','_taskEntry','_taskDesc'];

	if (_x call BIS_fnc_taskParent == "" && _outcomeText != "TOTALNA PORAŻKA") then {
		if (_x call BIS_fnc_taskState == 'FAILED') then {
			_outcomeText = "PORAŻKA";
		} else {
			{
				if (_x call BIS_fnc_taskState == 'FAILED') exitWith {
					_outcomeText = "UMIARKOWANE ZWYCIĘSTWO";
				};
				// if (_x call BIS_fnc_taskState == 'FAILED') then {
				// 	_outcomeText = "UMIARKOWANE ZWYCIĘSTWO";
				// };
			} forEach (_x call BIS_fnc_taskChildren);
		};
	};

	switch (_x call BIS_fnc_taskState) do {
    	case 'SUCCEEDED': {
    		_taskIcon = "<img color='#FFFFFF' size ='0.75' image='images\icons\win_icon.paa'/>  ";
    	};
    	case 'FAILED': {
    		_taskIcon = "<img color='#FFFFFF' size ='0.75' image='images\icons\fail_icon.paa'/>  "
    	};
	};
	_taskDesc = ((_x call BIS_fnc_taskDescription) select 0) select 0;
	_taskEntry = _taskIcon + _taskDesc + '<br/>';
	_tasksOutput = _tasksOutput + _taskEntry;
} forEach _allTasks;

_textSide = 0;
_leftText = "";
_rightText = "";

{
	_x params ["_name", "_side", "_start", "_current", "_disabled", "_destroyed"];

	_teamTitle = "";
	switch (_side) do { 
		case WEST: { 
			_teamTitle = format ["<t font='PuristaBold' shadow='1' shadowColor='#0000FF' size='1' color='#FFFFFF'> %1</t><br/>", _name];
		}; 
		case EAST: { 
			_teamTitle = format ["<t font='PuristaBold' shadow='1' shadowColor='#FF0000' size='1' color='#FFFFFF'> %1</t><br/>", _name];
		}; 
		case INDEPENDENT: {
			_teamTitle = format ["<t font='PuristaBold' shadow='1' shadowColor='#008000' size='1' color='#FFFFFF'> %1</t><br/>", _name];
		};
	};

	_sideText = format["Straty w ludziach: %1<br/>", (_start - _current)];
	if (count _disabled != 0) then {
		_sideText = _sideText + "Sprzęt wyłączony z walki:<br/>";
		{
			_sideText = _sideText + format["%1<br/>", _x];
		} forEach _disabled;
	};
	if (count _destroyed != 0) then {
		_sideText = _sideText + "Sprzęt zniszczony:<br/>";
		{
			_sideText = _sideText + format["%1<br/>", _x];
		} forEach _destroyed;
	};

	if (_textSide == 0) then {
		_textSide = 1;
		_teamText = "<img size='0.9' image='images\icons\playersFlag.jpg'/>" + _teamTitle;
		_leftText = _teamText + _sideText;
	} else {
		_textSide = 0;
		_teamText = "<img size='0.9' image='images\icons\aiFlag.jpg'/>" + _teamTitle;
		_rightText = _teamText + _sideText;
	};

} forEach _teams;

titleCut ["","BLACK OUT", 5];
sleep 6;
titleCut ["","BLACK IN", 6];

_blurred = ppEffectCreate ["DynamicBlur", 500]; 
_blurred ppeffectenable true; 
_blurred ppeffectadjust [3]; 
_blurred ppeffectcommit 1;

if ((date # 3 >= 6) && (date # 3 <= 19)) then {
	"colorCorrections" ppEffectAdjust [0.5, 0.5, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.75, 0.25, 0, 1.0]];
} else {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.75, 0.25, 0, 1.0]]; 
};
"colorCorrections" ppEffectCommit 1;  
"colorCorrections" ppEffectEnable true;

_endScreenCam = "camera" camCreate [0,0,0];
_endScreenCam cameraEffect ["INTERNAL", "FRONT"]; 
_endScreenCam camPrepareTarget (getPos endCam); 
_endScreenCam camPreparePos (endCam modelToWorld [random [-100,0,100], random [-200,0,200], random [10,50,100]]); 
_endScreenCam camCommitPrepared  0; 
//_endScreenCam cameraEffect ["TERMINATE", "FRONT"];

sleep 3;

((findDisplay _endScreenDialog) displayCtrl _titleDialog) ctrlSetStructuredText parseText _titleText;
((findDisplay _endScreenDialog) displayCtrl _missionNameDialog) ctrlSetStructuredText parseText _missionName;
((findDisplay _endScreenDialog) displayCtrl _missionTextDialog) ctrlSetStructuredText parseText _missionText;
((findDisplay _endScreenDialog) displayCtrl _outcomeDialog) ctrlSetStructuredText parseText _outcomeText;
((findDisplay _endScreenDialog) displayCtrl _tasksDialog) ctrlSetStructuredText parseText _tasksOutput;
((findDisplay _endScreenDialog) displayCtrl _leftTextDialog) ctrlSetStructuredText parseText _leftText;
((findDisplay _endScreenDialog) displayCtrl _rightTextDialog) ctrlSetStructuredText parseText _rightText;
// esc = compile preprocessFile "scripts\endscreen\escbind.sqf";
// ((findDisplay 46) displaySetEventHandler ["KeyDown","_this call esc"]);