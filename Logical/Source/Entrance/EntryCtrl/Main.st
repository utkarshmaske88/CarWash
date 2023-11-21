
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	iEntry;
	
	CASE iEntryState OF
		
		enWAIT:
			
			IF iEntry.Cmd.Start=TRUE THEN
				iEntryState:=enSTART;
			END_IF;
			
		enSTART:
			IF iEntry.IO.diSensEntry=TRUE THEN
				iEntryState:=enCARIN;
			END_IF;
		enCARIN:
			iEntry.Status.CarGone:=FALSE;
			iEntry.Status.CarIN:=TRUE;
			
			IF iEntry.IO.diSensEntry=FALSE THEN
				iEntry.Status.CarIN:=FALSE;
				iEntry.Status.CarGone:=TRUE;
				iEntryState:=enWAIT;
			END_IF;
		
		enERROR:

	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

