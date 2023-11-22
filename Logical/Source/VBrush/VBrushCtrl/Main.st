
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	CASE sVBrushState OF
		
		enWAIT:
			
			IF iVBrush.Cmd.Start=TRUE THEN
				sVBrushState:=enSTART;
			END_IF;
				
		enSTART:
			iVBrush.IO.doRelayVBLClose:=TRUE;
			iVBrush.IO.doRelayVBRClose:=TRUE;
			IF (iVBrush.IO.aiVBLForceF >70 AND iVBrush.IO.aiVBRForceF  >70) THEN
				sVBrushState:=enOPEN;
			END_IF;
			
		enOPEN:
			iVBrush.IO.doRelayVBLClose:=FALSE;
			iVBrush.IO.doRelayVBRClose:=FALSE;
			iVBrush.IO.doRelayVBROpen :=TRUE;
			iVBrush.IO.doRelayVBLOpen :=TRUE;
			IF (iVBrush.IO.aiVBLForceF =0 AND iVBrush.IO.aiVBRForceF =0 ) THEN
				iVBrush.IO.doRelayVBLClose:=TRUE;
				iVBrush.IO.doRelayVBRClose:=TRUE;
				sVBrushState:=enCLOSE;
			END_IF;
			//	(iVBrush.IO.aiVBLForceS >120 AND iVBrush.IO.aiVBRForceS >120)
			
		enCLOSE:
			iVBrush.IO.doRelayVBROpen :=FALSE;
			iVBrush.IO.doRelayVBLOpen :=FALSE;
			IF (iVBrush.IO.aiVBLForceS <120 AND iVBrush.IO.aiVBRForceS <120) THEN 
				iVBrush.IO.doRelayVBLClose:=TRUE;
				iVBrush.IO.doRelayVBRClose:=TRUE;
			ELSIF (iVBrush.IO.aiVBLForceS >120 AND iVBrush.IO.aiVBRForceS >120) THEN
				iVBrush.IO.doRelayVBLClose:=FALSE;
				iVBrush.IO.doRelayVBRClose:=FALSE;
				iVBrush.IO.doRelayVBROpen:=TRUE;
				iVBrush.IO.doRelayVBLOpen:=TRUE;
			ELSIF  iVBrush.IO.aiVBLForceS =120 THEN
				iVBrush.IO.doRelayVBLClose:=FALSE;
				iVBrush.IO.doRelayVBRClose:=FALSE;
				iVBrush.IO.doRelayVBLClose:=FALSE;
				iVBrush.IO.doRelayVBRClose:=FALSE;
				sVBrushState:=enOPERATION;
				
			END_IF;
			
		enOPERATION:			
		//			IF (iVBrush.IO.aiVBLForceS =0 AND iVBrush.IO.aiVBRForceS =0) THEN
		//				sVBrushState:=enSTART;
		//			END_IF;
			

	END_CASE;
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

