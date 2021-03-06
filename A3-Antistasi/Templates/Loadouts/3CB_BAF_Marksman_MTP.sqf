[//Loadout
    [//Primary Weapon
    "UK3CB_BAF_L129A1",									//Weapon
    "",													//Muzzle
    "UK3CB_BAF_LLM_Flashlight_Black",													//Rail
    "UK3CB_BAF_TA648_308",													//Sight
    ["UK3CB_BAF_762_L42A1_20Rnd",20],		//Primary Magazine
    [],													//Secondary Magazine
    "UK3CB_underbarrel_acc_bipod"													//Bipod
    ],

    [//Launcher
    "",									//Weapon
    "",													//Muzzle
    "",													//Rail
    "",													//Sight
    [],		//Primary Magazine
    [],													//Secondary Magazine
    ""													//Bipod
    ],

    [//Secondary Weapon
    "UK3CB_BAF_L131A1",								//Weapon
    "",					//Muzzle
    "UK3CB_BAF_Flashlight_L131A1",																//Rail
    "",																//Sight
    ["UK3CB_BAF_9_17Rnd",17],			//Primary Magazine
    [],																//Secondary Magazine
    ""																//Bipod
    ],

    [//Uniform
    "UK3CB_BAF_U_CombatUniform_MTP_RM",								//Uniform
    [] + _basicMedicalSupplies + _basicMiscItems
    ],

    [//Vest
    "UK3CB_BAF_V_Osprey_Rifleman_D",
    [//Inventory
    ["UK3CB_BAF_HMNVS",1],
    ["UK3CB_BAF_SmokeShell",2,1],
    ["HandGrenade",1,1],
    ["UK3CB_BAF_9_17Rnd",1,17],
    ["UK3CB_BAF_762_L42A1_20Rnd",5,20]
    ]
    + _aceFlashlight
    + _aceM84
    ],

    [//Backpack
		[//Inventory
		[]
		]
		],

    "UK3CB_BAF_H_Boonie_MTP_PRR",				//Headgear
    "UK3CB_BAF_G_Tactical_Grey",       						  //Facewear

    [//Binocular
    "Binocular",					//Binocular
    "",
    "",
    "",
    [],
    [],
    ""
    ],

    [//Item
    "ItemMap",											//Map
    "",													//Terminal
    ["TF_ANPRC152"] call _fnc_tfarRadio,				//Radio
    "ItemCompass",										//Compass
    _tfarMicroDAGRNoArray,										//Watch
    ""													//Goggles
    ]
];
