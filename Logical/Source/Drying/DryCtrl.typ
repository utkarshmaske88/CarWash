
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
		diSensDry1 : BOOL;
		diSensDry2 : BOOL;
		diSensDry3 : BOOL;
		diSensDry4 : BOOL;
		diSens2Dry2 : BOOL;
		diSens2Dry3 : BOOL;
		diSens2Dry4 : BOOL;
		diSens2Dry1 : BOOL;
		doRelayHD1Lower : BOOL;
		doRelayHD1LVent1 : BOOL;
		doRelayHD1Heater1 : BOOL;
		doRelayVDLVent : BOOL;
		doRelayVDHeater : BOOL;
		doRelayHD1Lift : BOOL;
		doRelayHD2Lower : BOOL;
		doRelayHD2LVent : BOOL;
		doRelayHD2Heater : BOOL;
		doRelayHD2Lift : BOOL;
	END_STRUCT;
	DryParam_typ : 	STRUCT 
	END_STRUCT;
	DryStatus_typ : 	STRUCT 
		Running : BOOL;
		Error : BOOL;
	END_STRUCT;
END_TYPE
