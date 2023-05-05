     H decedit('0,') datedit(*dmy) option(*nodebugio)
      **---------------------------------------------------------------------
      *  - Author: Benjamin Busch
      *  - created: 02.02.2023
      *  - Program descrition
      *  ---------------------------------------------------------------------
      *  Example Program for a better way as help texts via panel groups
      *  ---------------------------------------------------------------------
      *  - Compile Information   SEU OPTION 14
      *  ---------------------------------------------------------------------
      *  This Program is created with CRTBNDRPG and in the library QGPL
      * CRTBNDRPG PGM(QGPL/TSTONLHLP) SRCFILE(QGPL/QRPGLESRC)
      *  SRCMBR(TSTONHLP) REPLACE(*YES) OPTION(*EVENTF) DBGVIEW(*SOURCE)
      *
      ** ---------------------------------------------------------------------
     FTSTONHLPB cf   e             workstn
     D
     D strpco          s              1n   inz('0')
     D BstrPco         s             22A
     D EstrPco         s             22A
     D cmd             s             22A   dim(3) ctdata perrcd(1)              Commands
     D www             s             23A   inz('https://www.google.com/')
     D qdta            s            128A
     D ql              s             15  5 inz(128)
     C
     C*Main
     C                   DOU       *in03 OR *in12
     C                   exfmt     window
     C
     C                   If        xhlp = 'H'
     C                   exsr      showHomePage
     C                   ENDIF
     C                   ENDDO
     C*Main End
     C                   eval      *inlr = *on
     C                   return
     C
     C     showHomePage  Begsr
     C
     C* PCO start
     C                   EVAL      qdta = *blanks
     C                   IF        not strpco                                   STRPCO = '0'
     C                   MOVEL     cmd(1)        qdta
     C                   exsr      cmdExec
     C                   IF        not *in99                                    *in99 = '0'
     C                   EVAL      strpco = *on
     C                   ENDIF                                                  E: *in99
     C                   ENDIF
     C                   MOVE      cmd(2)        BstrPco
     C                   MOVE      cmd(3)        EstrPco
     C                   EVAL      qdta = BstrPco + www + EstrPco
     C                   exsr      CmdExec
     C                   Endsr
     C
     C     CmdExec       Begsr
     C                   CALL      'QCMDEXC'                            99
     C                   PARM                    qdta
     C                   PARM                    ql
     C                   Endsr
**
STRPCO
STRPCCMD PCCMD('start
') PAUSE(*NO)    
