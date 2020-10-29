//--unitgear.sqf--
/*
Wygenerowano: 09.10.2020 23:15:16*/

private ["_unit", "_type", "_randRifleUS", "_randRifleOpticUS", "_randAROpticUS", "_randVestUS", "_randHelmetUS", "_randRifleREB_762", "_randRifleREB_545", "_randVestREB", "_randUnifREB", "_randHelmetREB"];
	_unit = _this select 0;
	_type = _this select 1;
	if (!local _unit) exitWith {};

//Uuswanie pozostałych wyposażeń
	removeGoggles _unit;
	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeAllItemsWithMagazines _unit;
	removeHeadgear _unit;
	removeAllContainers _unit;

//Wyłączenie losowosci wyposażeń
	_unit setVariable ["BIS_enableRandomization", false];

//Losowe elementy
_randRifleUS = selectRandom ["rhs_weap_m4a1", "rhs_weap_m4a1_carryhandle", "rhs_weap_m4a1_carryhandle_mstock"];
_randRifleGlUS = selectRandom ["rhs_weap_m4a1_carryhandle_m203", "rhs_weap_m4a1_carryhandle_m203S", "rhs_weap_m4a1_m320"];
_randRifleOpticUS = selectRandom ["rhsusf_acc_ACOG", "rhsusf_acc_ACOG2", "rhsusf_acc_eotech_552", "rhsusf_acc_compm4"];
_randAROpticUS = selectRandom ["rhsusf_acc_ACOG", "rhsusf_acc_ELCAN", "rhsusf_acc_ELCAN_ard", "rhsusf_acc_ACOG2", ""];
_randVestUS = selectRandom ["rhsusf_spcs_ocp_teamleader_alt", "rhsusf_spcs_ocp_teamleader"];
_randHelmetUS = selectRandom ["rhsusf_ach_helmet_ocp_alt", "rhsusf_ach_helmet_ocp", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_ESS_ocp_alt"];
_randRifleREB_762 = selectRandom ["rhs_weap_pm63", "rhs_weap_akm", "rhs_weap_akms"];
_randRifleREB_545 = selectRandom ["rhs_weap_ak74", "rhs_weap_aks74", "rhs_weap_aks74_2", "rhs_weap_ak74_2"];
_randVestREB = selectRandom ["rhssaf_vest_md98_rifleman", "rhssaf_vest_md99_woodland_rifleman", "rhssaf_vest_md99_digital_rifleman", "rhssaf_vest_md99_md2camo_rifleman"];
_randUnifREB = selectRandom ["rhsgref_uniform_altis_lizard_olive", "rhsgref_uniform_tigerstripe", "rhsgref_uniform_reed", "rhsgref_uniform_woodland", "rhsgref_uniform_woodland_olive"];
_randHelmetREB = selectRandom ["H_Bandanna_khk", "rhssaf_bandana_md2camo", "rhssaf_bandana_smb", "rhs_beanie_green", "rhs_beanie", "H_Beret_blk", "UK3CB_TKM_O_H_Turban_04_1", "UK3CB_TKM_O_H_Turban_03_1", "UK3CB_H_Shemag_tan", "UK3CB_H_Shemag_oli", "UK3CB_TKA_I_H_SSh68_Oli"];

//Wybór konkretnego loadoutu
switch (_type) do {
case "US_SL": {
    //Umundurowanie
    _unit forceAddUniform "rhs_uniform_acu_oefcp";
    _unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
    _unit addGoggles "rhs_googles_clear";
    _unit addVest "rhsusf_spcs_ocp_squadleader";
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_CableTie",2];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (vestContainer _unit) addItemCargoGlobal ["ACE_MapTools",1];
    (vestContainer _unit) addItemCargoGlobal ["ACE_Flashlight_XL50",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m18_green",1];
    
    //Broń i dodatki
    _unit addWeapon _randRifleUS;
    _unit addWeapon "rhsusf_bino_m24";
    _unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top";
    _unit addPrimaryWeaponItem _randRifleOpticUS;
    _unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
    _unit addPrimaryWeaponItem "rhsusf_acc_kac_grip";
    };
case "US_TL": {
    //Umundurowanie
    _unit forceAddUniform "rhs_uniform_acu_oefcp";
    _unit addHeadgear _randHelmetUS;
    _unit addGoggles "rhs_googles_clear";
    _unit addVest _randVestUS;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_CableTie",2];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (vestContainer _unit) addItemCargoGlobal ["ACE_MapTools",1];
    (vestContainer _unit) addItemCargoGlobal ["ACE_Flashlight_XL50",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m18_green",1];
    
    //Broń i dodatki
    _unit addWeapon _randRifleUS;
    _unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
    _unit addPrimaryWeaponItem _randRifleOpticUS;
    _unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag";
    _unit addPrimaryWeaponItem "rhsusf_acc_grip1";
    };
case "US_AR": {
    //Umundurowanie
    _unit forceAddUniform "rhs_uniform_acu_oefcp";
    _unit addHeadgear _randHelmetUS;
    _unit addGoggles "rhs_googles_clear";
    _unit addVest "rhsusf_spcs_ocp_machinegunner";
    _unit addBackpack "rhsusf_falconii_mc";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_CableTie",2];

    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (vestContainer _unit) addItemCargoGlobal ["ACE_Flashlight_XL50",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC148",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    (vestContainer _unit) addItemCargoGlobal ["rhsusf_100Rnd_556x45_mixed_soft_pouch",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["rhsusf_100Rnd_556x45_mixed_soft_pouch",3];
    
    //Broń i dodatki
    _unit addWeapon "rhs_weap_m249_pip_S_vfg3";
    _unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
    _unit addPrimaryWeaponItem _randAROpticUS;
    _unit addPrimaryWeaponItem "rhsusf_100Rnd_556x45_mixed_soft_pouch";
    _unit addPrimaryWeaponItem "rhsusf_acc_kac_grip_saw_bipod";
    };
case "US_GL": {
    //Umundurowanie
    _unit forceAddUniform "rhs_uniform_acu_oefcp";
    _unit addHeadgear _randHelmetUS;
    _unit addGoggles "rhs_googles_clear";
    _unit addVest "rhsusf_spcs_ocp_grenadier";
    _unit addBackpack "rhsusf_falconii_mc";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_CableTie",2];

    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",6];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_M441_HE",8];
    (vestContainer _unit) addItemCargoGlobal ["ACE_Flashlight_XL50",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_m713_Red",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    
    //Broń i dodatki
    _unit addWeapon _randRifleGlUS;
    _unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
    _unit addPrimaryWeaponItem _randRifleOpticUS;
    _unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red";
    _unit addPrimaryWeaponItem "rhs_mag_M441_HE";
    };
case "US_AT4": {
    //Umundurowanie
    _unit forceAddUniform "rhs_uniform_acu_oefcp";
    _unit addHeadgear _randHelmetUS;
    _unit addGoggles "rhs_googles_clear";
    _unit addVest "rhsusf_spcs_ocp_rifleman";
    _unit addBackpack "rhsusf_assault_eagleaiii_ocp";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_CableTie",2];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",6];
    (vestContainer _unit) addItemCargoGlobal ["ACE_Flashlight_XL50",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    
    //Broń i dodatki
    _unit addWeapon _randRifleUS;
    _unit addWeapon "rhs_weap_M136";
    _unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top";
    _unit addPrimaryWeaponItem _randRifleOpticUS;
    _unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag";
    _unit addPrimaryWeaponItem "rhsusf_acc_grip1";
    };
case "US_CLS": {
    //Umundurowanie
    _unit forceAddUniform "rhs_uniform_acu_oefcp";
    _unit addHeadgear _randHelmetUS;
    _unit addGoggles "rhs_googles_clear";
    _unit addVest "rhsusf_spcs_ocp_rifleman";
    _unit addBackpack "rhsusf_assault_eagleaiii_ocp";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_CableTie",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",6];
    (vestContainer _unit) addItemCargoGlobal ["ACE_Flashlight_XL50",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["ACE_packingBandage",5];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",5];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_morphine",5];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_tourniquet",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_surgicalKit",1];
    
    //Broń i dodatki
    _unit addWeapon _randRifleUS;
    _unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top";
    _unit addPrimaryWeaponItem _randRifleOpticUS;
    _unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag";
    _unit addPrimaryWeaponItem "rhsusf_acc_grip1";
    };
case "US_MED": {
    //Umundurowanie
    _unit forceAddUniform "rhs_uniform_acu_oefcp";
    _unit addHeadgear _randHelmetUS;
    _unit addGoggles "rhs_googles_clear";
    _unit addVest "rhsusf_spcs_ocp_medic";
    _unit addBackpack "rhsusf_assault_eagleaiii_ocp";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_CableTie",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_tourniquet",1];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_EarPlugs",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_m67",2];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",6];
    (vestContainer _unit) addItemCargoGlobal ["ACE_Flashlight_XL50",1];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_an_m8hc",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",20];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_epinephrine",12];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_morphine",12];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_packingBandage",20];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_personalAidKit",5];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_surgicalKit",1];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_salineIV_250",5];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_tourniquet",5];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_quikclot",10];
    
    //Broń i dodatki
    _unit addWeapon _randRifleUS;
    _unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top";
    _unit addPrimaryWeaponItem _randRifleOpticUS;
    _unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855_Stanag";
    _unit addPrimaryWeaponItem "rhsusf_acc_grip1";
    };
case "REB_SL": {
    //Umundurowanie
    _unit forceAddUniform _randUnifREB;
    _unit addHeadgear _randHelmetREB;
    _unit addGoggles "UK3CB_G_Neck_Shemag_Oli";
    _unit addVest "rhssaf_vest_md99_woodland_rifleman_radio";
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_30Rnd_762x39mm_bakelite_tracer",2];
    (vestContainer _unit) addItemCargoGlobal ["rhs_30Rnd_762x39mm_tracer",3];
    (vestContainer _unit) addItemCargoGlobal ["ACRE_PRC343",1];
    (vestContainer _unit) addItemCargoGlobal ["rhssaf_mag_brd_m83_yellow",1];
    (vestContainer _unit) addItemCargoGlobal ["rhssaf_mag_br_m75",1];
    
    //Broń i dodatki
    _unit addWeapon _randRifleREB_762;
    _unit addPrimaryWeaponItem "rhs_acc_dtkakm";
    _unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_tracer";
    };
case "REB_PKM": {
    //Umundurowanie
    _unit forceAddUniform _randUnifREB;
    _unit addHeadgear _randHelmetREB;
    _unit addGoggles "UK3CB_G_Neck_Shemag_Tan";
    _unit addVest "rhssaf_vest_md99_md2camo_rifleman";
    _unit addBackpack "rhs_sidor";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_f1",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_grenade_mkii_mag",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["rhs_100Rnd_762x54mmR_green",2];
    
    //Broń i dodatki
    _unit addWeapon "rhs_weap_pkm";
    _unit addPrimaryWeaponItem "rhs_100Rnd_762x54mmR_green";
    };
case "REB_MG42": {
    //Umundurowanie
    _unit forceAddUniform _randUnifREB;
    _unit addHeadgear _randHelmetREB;
    _unit addGoggles "UK3CB_G_Neck_Shemag_Tan";
    _unit addVest "rhssaf_vest_md99_digital";
    _unit addBackpack "rhs_sidor";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhsgref_50Rnd_792x57_SmK_alltracers_drum",2];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_f1",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_grenade_mkii_mag",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_18rnd_9x21mm_7N28",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["rhsgref_50Rnd_792x57_SmK_alltracers_drum",5];
    
    //Broń i dodatki
    _unit addWeapon "rhs_weap_mg42";
    _unit addWeapon "rhs_weap_6p53";
    _unit addPrimaryWeaponItem "rhsgref_50Rnd_792x57_SmK_alltracers_drum";
    _unit addHandgunItem "rhs_18rnd_9x21mm_7N28";
    };
case "REB_GL": {
    //Umundurowanie
    _unit forceAddUniform _randUnifREB;
    _unit addHeadgear _randHelmetREB;
    _unit addGoggles "UK3CB_G_Neck_Shemag_Tan";
    _unit addVest _randVestREB;
    _unit addBackpack "UK3CB_B_Alice_Bedroll_K";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_30Rnd_762x39mm_tracer",4];
    (vestContainer _unit) addItemCargoGlobal ["rhs_VOG25",5];
    (vestContainer _unit) addItemCargoGlobal ["rhssaf_mag_brd_m83_white",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["ACE_packingBandage",2];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_f1",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_30Rnd_762x39mm_tracer",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_VOG25",6];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_VG40OP_white",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_GRD40_Green",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_GRD40_Red",2];
    
    //Broń i dodatki
    _unit addWeapon "rhs_weap_akm_gp25";
    _unit addPrimaryWeaponItem "rhs_acc_dtkakm";
    _unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_tracer";
    };
case "REB_RPG": {
    //Umundurowanie
    _unit forceAddUniform _randUnifREB;
    _unit addHeadgear _randHelmetREB;
    _unit addGoggles "UK3CB_G_Neck_Shemag_Tan";
    _unit addVest _randVestREB;
    _unit addBackpack "rhs_rpg_empty";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_30Rnd_545x39_AK_green",5];
    (vestContainer _unit) addItemCargoGlobal ["rhs_mag_f1",1];
    (vestContainer _unit) addItemCargoGlobal ["rhs_grenade_mkii_mag",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["rhs_rpg7_OG7V_mag",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_rpg7_PG7VL_mag",1];
    
    //Broń i dodatki
    _unit addWeapon "rhs_weap_aks74u";
    _unit addWeapon "rhs_weap_rpg7";
    _unit addPrimaryWeaponItem "rhs_acc_pgs64_74u";
    _unit addPrimaryWeaponItem "rhs_30Rnd_545x39_AK_green";
    };
case "REB_RFL_762": {
    //Umundurowanie
    _unit forceAddUniform _randUnifREB;
    _unit addHeadgear _randHelmetREB;
    _unit addGoggles "UK3CB_G_Neck_Shemag_Tan";
    _unit addVest _randVestREB;
    _unit addBackpack "UK3CB_B_Alice_Bedroll_K";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_30Rnd_762x39mm_tracer",5];
    (vestContainer _unit) addItemCargoGlobal ["rhssaf_mag_brd_m83_white",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["ACE_packingBandage",3];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_f1",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_30Rnd_762x39mm_tracer",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhssaf_mag_br_m75",1];
    
    //Broń i dodatki
    _unit addWeapon _randRifleREB_762;
    _unit addPrimaryWeaponItem "rhs_acc_dtkakm";
    _unit addPrimaryWeaponItem "rhs_30Rnd_762x39mm_tracer";
    };
case "REB_RFL_545": {
    //Umundurowanie
    _unit forceAddUniform _randUnifREB;
    _unit addHeadgear _randHelmetREB;
    _unit addGoggles "UK3CB_G_Neck_Shemag_Tan";
    _unit addVest _randVestREB;
    _unit addBackpack "UK3CB_B_Alice_Bedroll_K";
    clearAllItemsFromBackpack _unit;
    
    //Przypisane przedmioty
    _unit linkItem "ItemMap";
    _unit linkItem "ItemCompass";
    _unit linkItem "ItemWatch";
    
    //Przedmioty i magazynki w mundurze
    (uniformContainer _unit) addItemCargoGlobal ["ACE_fieldDressing",2];
    (uniformContainer _unit) addItemCargoGlobal ["ACE_morphine",1];
    
    //Przedmioty i magazynki w kamizelce
    (vestContainer _unit) addItemCargoGlobal ["rhs_30Rnd_545x39_AK_green",5];
    (vestContainer _unit) addItemCargoGlobal ["rhssaf_mag_brd_m83_white",1];
    
    //Przedmioty i magazynki w plecaku
    (backpackContainer _unit) addItemCargoGlobal ["ACE_packingBandage",3];
    (backpackContainer _unit) addItemCargoGlobal ["ACE_elasticBandage",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_30Rnd_545x39_AK_green",3];
    (backpackContainer _unit) addItemCargoGlobal ["rhs_mag_f1",2];
    (backpackContainer _unit) addItemCargoGlobal ["rhssaf_mine_pma3_mag",2];
    
    //Broń i dodatki
    _unit addWeapon _randRifleREB_545;
    _unit addPrimaryWeaponItem "rhs_acc_dtk1983";
    _unit addPrimaryWeaponItem "rhs_30Rnd_545x39_AK_green";
    };

};
