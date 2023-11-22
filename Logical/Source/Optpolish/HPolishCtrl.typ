
TYPE
	PolishCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	PolishCtrl_typ : 	STRUCT 
		Cmd : PolishCmd_typ;
		IO : PolishIOs_typ;
		Par : PolishParam_typ;
		Status : PolishStatus_typ;
	END_STRUCT;
	PolishIOs_typ : 	STRUCT 
		doRelayLower : USINT;
		doRelayBrush : USINT;
		doRelayLift : USINT;
	END_STRUCT;
	PolishParam_typ : 	STRUCT 
		New_Member : USINT;
	END_STRUCT;
	PolishStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE