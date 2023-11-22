
PROGRAM _INIT
	
	//accessing structre and data from tasks
	Status1 := PV_xgetadr(ADR('EntryCtrl:iEntry'),ADR(EntryAddress),ADR(SizeEntry));
	Status2 := PV_xgetadr(ADR('ChemCtrl:iChem'),ADR(ChemAddress),ADR(SizeChem));
	Status3 := PV_xgetadr(ADR('Auxillary:iAuxillary'),ADR(AuxAddress),ADR(SizeAux));
	 
END_PROGRAM

PROGRAM _CYCLIC
	//accessing data from the address
	pEntryCtrl ACCESS EntryAddress;
	pChemCtrl ACCESS ChemAddress;
	pAuxCtrl ACCESS AuxAddress;
	
	ScalDirt(x:=pEntryCtrl.IO.diSensSoilLvl ,y1:=5,x2:=10,y2:=0);

	IF MainCtrl.Start=TRUE THEN
		pAuxCtrl.doRelayConv:=TRUE;
		MainCtrl.Start:=FALSE;
		MainCmd.EntryState:=TRUE;
		iFl_CarFlag :=TRUE;
	END_IF;
	
	IF MainCmd.EntryState = TRUE THEN
		
		pEntryCtrl.Cmd.Start:=TRUE;
		txt:="entry";
		
		IF pEntryCtrl.IO.diSensEntry=TRUE THEN
			IF iFl_CarFlag =TRUE THEN
				FOR i:=0 TO 3 DO
					IF gCar[i]=FALSE THEN 
						gCar[i]:=TRUE;
						iFb_Timer[i].IN:=TRUE;
						iFl_CarFlag :=FALSE;
						EXIT;
					END_IF;
				END_FOR;
			END_IF;
		END_IF;
	
		
	END_IF;
	
	IF iFb_Timer[0].ET >T#5400ms THEN
		MainCmd.EntryState		:= FALSE;
		MainCmd.ChemicalState	:= TRUE; 
		txt:="chem";
		pChemCtrl.IO.doChemWaterValve:=TRUE;
	END_IF;
	
	IF iFb_Timer[0].ET > (T#5400ms + T#11000ms) THEN
		pChemCtrl.IO.doChemWaterValve:=FALSE;
		MainCmd.ChemicalState	:= FALSE;
	END_IF;
	
	
	
	
	iFb_Timer[0]();
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

