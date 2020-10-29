class ENDSCREEN
{
	idd = 400;
	movingEnable = false;
	enableSimulation = true;
	controls[] = {TITLE,MISSION_NAME,MISSION_OVERVIEWTEXT,OUTCOME,TASKS,LEFT_TEXT,RIGHT_TEXT,EXIT_TEXT};

	class TITLE: RscStructuredText_title
	{
		idc = 1100;
		x = 0.386577 * safezoneW + safezoneX;
		y = 0.148089 * safezoneH + safezoneY;
		w = 0.226846 * safezoneW;
		h = 0.0439888 * safezoneH;
		size = "0.03 * safezoneH";
	};
	class MISSION_NAME: RscStructuredText_missionName
	{
		idc = 1101;
		x = 0.386577 * safezoneW + safezoneX;
		y = 0.203075 * safezoneH + safezoneY;
		w = 0.226846 * safezoneW;
		h = 0.0439888 * safezoneH;
		size = "0.03 * safezoneH";
	};
	class MISSION_OVERVIEWTEXT: RscStructuredText_missionOverviewText
	{
		idc = 1102;
		x = 0.345333 * safezoneW + safezoneX;
		y = 0.247064 * safezoneH + safezoneY;
		w = 0.309335 * safezoneW;
		h = 0.0659832 * safezoneH;
		size = "0.03 * safezoneH";
	};
	class OUTCOME: RscStructuredText_outcome
	{
		idc = 1103;
		x = 0.345333 * safezoneW + safezoneX;
		y = 0.313047 * safezoneH + safezoneY;
		w = 0.309335 * safezoneW;
		h = 0.0439888 * safezoneH;
		size = "0.03 * safezoneH";
	};
	class TASKS: RscStructuredText
	{
		idc = 1104;
		x = 0.345333 * safezoneW + safezoneX;
		y = 0.357036 * safezoneH + safezoneY;
		w = 0.309335 * safezoneW;
		h = 0.131966 * safezoneH;
		size = "0.03 * safezoneH";
	};
	class LEFT_TEXT: RscStructuredText
	{
		idc = 1105;
		x = 0.345333 * safezoneW + safezoneX;
		y = 0.489003 * safezoneH + safezoneY;
		w = 0.144356 * safezoneW;
		h = 0.318919 * safezoneH;
		size = "0.03 * safezoneH";
	};
	class RIGHT_TEXT: RscStructuredText
	{
		idc = 1106;
		x = 0.510311 * safezoneW + safezoneX;
		y = 0.489003 * safezoneH + safezoneY;
		w = 0.144356 * safezoneW;
		h = 0.318919 * safezoneH;
		size = "0.03 * safezoneH";
	};
	class EXIT_TEXT: RscStructuredText
	{
		idc = 1107;
		x = 0.345333 * safezoneW + safezoneX;
		y = 0.818919 * safezoneH + safezoneY;
		w = 0.309335 * safezoneW;
		h = 0.0439888 * safezoneH;
		size = "0.03 * safezoneH";
	};
};

