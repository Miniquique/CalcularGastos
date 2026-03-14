      ******************************************************************
      * Author:David Guerrero Ortgea
      * Date:13/03/2026
      * Purpose:
      * Tectonics: cobc
      ******************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTROL-GASTOS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       SPECIAL-NAMES.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 TOTAL PIC S9(6) VALUE 0.
       77 DIA PIC 99 VALUE 0.
       77 SALDO PIC S9(6) VALUE 0.
       77 MOVIMIENTO PIC S9(6) VALUE 0.
       77 MES PIC 99 VALUE 0.
       77 FEBRERO PIC 9 VALUE 2.

       PROCEDURE DIVISION.
       ELECION-MES.
           DISPLAY "INTRODUCE EL NUMERO DEL MES EN EL QUE ESTAS"
           ACCEPT MES.



       COMPROBACION.
       EVALUATE MES
           WHEN 4
           WHEN 6
           WHEN 9
           WHEN 11
               PERFORM MES30
           WHEN 2
               PERFORM MFEBRERO

            WHEN OTHER
            PERFORM MESE31

       END-EVALUATE.

       MES30.
           PERFORM 30 TIMES
               DISPLAY "mes 30"
               ADD 1 TO DIA
               DISPLAY "DIA "DIA" DEL MES " MES
               PERFORM INTRODUCIR-IMPORTE
           END-PERFORM.
           PERFORM FINPROGRAMA.

       MESE31.
       PERFORM 31 TIMES
               ADD 1 TO DIA
               DISPLAY "DIA "DIA" DEL MES " MES
               PERFORM INTRODUCIR-IMPORTE
           END-PERFORM.
           PERFORM FINPROGRAMA.

       MFEBRERO.
       PERFORM 28 TIMES
               ADD 1 TO DIA
               DISPLAY "DIA "DIA" DEL MES " MES
               PERFORM INTRODUCIR-IMPORTE
           END-PERFORM.
           PERFORM FINPROGRAMA.

       INTRODUCIR-IMPORTE.
           DISPLAY "SALDO MENSUAL "TOTAL
           DISPLAY "INTRODUCE EL IMPORTE"
           ACCEPT MOVIMIENTO
           COMPUTE SALDO = TOTAL + MOVIMIENTO.
           DISPLAY "EL MOVIMIENTO ES " MOVIMIENTO
           MOVE SALDO TO TOTAL.

           IF MOVIMIENTO =2101 THEN
               PERFORM FINPROGRAMA
           END-IF.

       FINPROGRAMA.
            STOP RUN.
       END PROGRAM CONTROL-GASTOS.
