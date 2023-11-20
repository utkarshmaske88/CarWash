
TYPE
	WaxCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	WaxCtrl_typ : 	STRUCT 
		Cmd : WaxCmd_typ;
		IO : WaxIOs_typ;
		Par : WaxParam_typ;
		Status : WaxStatus_typ;
	END_STRUCT;
	WaxIOs_typ : 	STRUCT 
	END_STRUCT;
	WaxParam_typ : 	STRUCT 
	END_STRUCT;
	WaxStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE
