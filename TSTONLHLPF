**free
//---------------------------------------------------------------------
//  - Author: Benjamin Busch
//  - created: 06.02.2023
//  - Program descrition
// ---------------------------------------------------------------------
// Example Program for a better way as help texts via panel groups
// In Free Format RPGLE
// ---------------------------------------------------------------------
// - Compile Information   SEU OPTION 14
// ---------------------------------------------------------------------
// This Program is created with CRTBNDRPG and in the library QGPL
// CRTBNDRPG PGM(QGPL/TSTONLHLP) SRCFILE(QGPL/QRPGLESRC)
// SRCMBR(TSTONHLP) REPLACE(*YES) OPTION(*EVENTF) DBGVIEW(*SOURCE)
// ---------------------------------------------------------------------
       ctl-opt option(*nodebugio:*SRCSTMT);
       dcl-f TSTONHLPB workstn;
       dcl-s strpco ind inz('0');
       dcl-s BstrPco  char(22);
       dcl-s Estrpco char(22);
       dcl-s cmd char(22) dim(3) ctdata perrcd(1);
       dcl-s www char(23) inz('https://www.google.com/');
       dcl-s qdta char(128);
       dcl-s ql packed(15:5);
       dcl-ds pgmstat psds;
             msgid char(7) pos(40);
             msgDta char(80) pos(91);
       end-ds;
       //API Description
       dcl-pr exeCMD extpgm('QCMDEXC');
           cmd char(128) const;
           cmdl packed(15:5) const;
       end-pr;
       dou *in03 OR *in12; //Main begin
         exfmt window;
         select;
         when xhlp = 'H';
           exsr showHomePage;
         endsl;
       ENDDO; //Main End
       *inlr = *on; //PGM End
       return;
         Begsr showHomePage;
      //PCO start
      monitor;
          qdta = *blanks;
             qdta = %trim(cmd(1));
             ql = %len(qdta);
             callP exeCMD(qdta:ql);
             ON-ERROR 00202;
              select;
                when MsgId ='IWS4010';
//                  strpco = *ON; //'PCO already active';
              ENDSL;
          BstrPco = cmd(2);
          EstrPco =  cmd(3);
          qdta = BstrPco + www + EstrPco;
          ql = %len(qdta);
          callP exeCMD(qdta:ql);
      ENDMON;
         Endsr;
**
STRPCO PCTA(*YES)
STRPCCMD PCCMD('start
') PAUSE(*NO)     
