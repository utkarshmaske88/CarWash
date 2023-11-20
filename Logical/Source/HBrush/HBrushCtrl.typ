
TYPE
	HBrushCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	HBrushCtrl_typ : 	STRUCT 
		Cmd : HBrushCmd_typ;
		IO : HBrushIOs_typ;
		Par : HBrushParam_typ;
		Status : HBrushStatus_typ;
	END_STRUCT;
	HBrushIOs_typ : 	STRUCT 
	END_STRUCT;
	HBrushParam_typ : 	STRUCT 
	END_STRUCT;
	HBrushStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE
