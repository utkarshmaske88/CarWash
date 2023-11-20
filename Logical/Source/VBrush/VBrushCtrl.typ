
TYPE
	VBrushCmd_typ : 	STRUCT 
		Start : BOOL;
		EStop : BOOL;
		Stop : BOOL;
	END_STRUCT;
	VBrushCtrl_typ : 	STRUCT 
		Cmd : VBrushCmd_typ;
		IO : VBrushIOs_typ;
		Par : VBrushParam_typ;
		Status : VBrushStatus_typ;
	END_STRUCT;
	VBrushIOs_typ : 	STRUCT 
	END_STRUCT;
	VBrushParam_typ : 	STRUCT 
	END_STRUCT;
	VBrushStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE
