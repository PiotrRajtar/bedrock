﻿601,100
602,"}bedrock.server.savedataall"
562,"NULL"
586,
585,
564,
565,"aa1H\5;VFc<7wL^2Q02`5wki[;oN^Lop^754ub@9kEq?<h^[QyWzoko@_NoO;^6m=H1QGxIt;7h5:unjK?3OiX<`Ekgdf\sIJBxkFPP:<UEZ5_e1PMVw>N:Q;:9ziK0W26?sCtO9l4FyBj^GoOtV0<LVKoFx9wLbtnHf;IF06]5;p66PDUpn`_XPUxxNJx[7>=5j56Y7"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,1
pLogOutput
561,1
1
590,1
pLogOutput,0
637,1
pLogOutput,"OPTIONAL: Write parameters and action summary to server message log (Boolean True = 1)"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,54
#Region CallThisProcess
# A snippet of code provided as an example how to call this process should the developer be working on a system without access to an editor with auto-complete.
If( 1 = 0 );
    ExecuteProcess( '}bedrock.server.savedataall', 'pLogOutput', pLogOutput );
EndIf;
#EndRegion CallThisProcess

#****Begin: Generated Statements***
#****End: Generated Statements****

################################################################################################# 
##~~Join the bedrock TM1 community on GitHub https://github.com/cubewise-code/bedrock Ver 4.0~~##
################################################################################################# 

#Region @DOC
# Description:
# This process will Save All Data to disk.

# Use case: Intended for production.
# 1/ This could be run mulitple times a day during the planning cycle.

# Note:
# Depending on how long since the last data save this could take several seconds if not minutes so schedule if over lunch break.
#EndRegion @DOC

### Global Variables
StringGlobalVariable('sProcessReturnCode');
NumericGlobalVariable('nProcessReturnCode');
nProcessReturnCode= 0;

### Constants ###
cThisProcName     = GetProcessName();
cUserName         = TM1User();
cMsgErrorLevel    = 'ERROR';
cMsgErrorContent  = 'User:%cUserName% Process:%cThisProcName% ErrorMsg:%sMessage%';

## LogOutput parameters


### Validate Parameters ###

nErrors = 0;

### LogOutput ###
If( pLogOutput = 1 );
    sLogInfo = Expand('Process:%cThisProcName% commenced.'); 
    LogOutput( 'INFO', sLogInfo );
    nStart   = Now();
EndIf;

### Save Data ###

SaveDataAll;

573,4

#****Begin: Generated Statements***
#****End: Generated Statements****

574,4

#****Begin: Generated Statements***
#****End: Generated Statements****

575,28

#****Begin: Generated Statements***
#****End: Generated Statements****

### LogOutput ###

If( pLogOutput = 1 );
    sSec     = NumberToStringEx( 86400*(Now() - nStart),'#,##0.0', '.', ',' );
    sLogInfo = Expand('Process:%cThisProcName% completed. Elapsed time %sSec% seconds.'); 
    LogOutput( 'INFO', sLogInfo );
EndIf;

### Return code & final error message handling
If( nErrors > 0 );
    sMessage = 'the process incurred at least 1 error. Please see above lines in this file for more details.';
    nProcessReturnCode = 0;
    LogOutput( cMsgErrorLevel, Expand( cMsgErrorContent ) );
    sProcessReturnCode = Expand( '%sProcessReturnCode% Process:%cThisProcName% completed with errors. Check tm1server.log for details.' );
Else;
    sProcessAction = Expand( 'Process:%cThisProcName% successfully saved all cube data.' );
    sProcessReturnCode = Expand( '%sProcessReturnCode% %sProcessAction%' );
    nProcessReturnCode = 1;
    If( pLogoutput = 1 );
        LogOutput('INFO', Expand( sProcessAction ) );   
    EndIf;
EndIf;

### End Epilog ###
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,1
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
