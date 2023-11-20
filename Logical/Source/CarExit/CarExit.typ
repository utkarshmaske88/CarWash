
TYPE
	CarExitCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	CarExitCtrl_typ : 	STRUCT 
		Cmd : CarExitCmd_typ;
		IO : CarExitIOs_typ;
		Par : CarExitParam_typ;
		Status : CarExitStatus_typ;
	END_STRUCT;
	CarExitIOs_typ : 	STRUCT 
	END_STRUCT;
	CarExitParam_typ : 	STRUCT 
	END_STRUCT;
	CarExitStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE
