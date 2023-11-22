
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	iChem.Par.ChemLevel:=ScalDirt.y;
	
	CASE sChemState OF
		
		enWAIT:
			iChem.Status.Running:=FALSE;
			sChemState:=enSTART;
			
		enSTART:
			
		enSPRAYON:
		
		enSPRAYOFF:
		
	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

