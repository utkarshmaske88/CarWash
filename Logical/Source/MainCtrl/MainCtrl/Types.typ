
TYPE
	sStep_enum1 : 
		(
		enWAIT,
		enSTART,
		enENTRY,
		enCHEMICAL
		);
	MainCmd_typ : 	STRUCT 
		EntryState : BOOL;
		ChemicalState : BOOL;
		Start : BOOL;
	END_STRUCT;
	MainCtrl_typ : 	STRUCT 
		Start : BOOL;
		Stop : BOOL;
		EStop : BOOL;
	END_STRUCT;
END_TYPE
