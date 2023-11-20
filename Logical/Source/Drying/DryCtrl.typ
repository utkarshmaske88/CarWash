
TYPE
	DryCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	DryCtrl_typ : 	STRUCT 
		Cmd : DryCmd_typ;
		IO : DryIOs_typ;
		Par : DryParam_typ;
		Status : DryStatus_typ;
	END_STRUCT;
	DryIOs_typ : 	STRUCT 
	END_STRUCT;
	DryParam_typ : 	STRUCT 
	END_STRUCT;
	DryStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE
