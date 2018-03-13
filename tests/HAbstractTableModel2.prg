/*

  Qt4xHb Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt4xHb

*/

#include "qt4xhb.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800,600)

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB({||100}) // total de linhas
   oModel:setColumnCountCB({||10}) // total de colunas
   oModel:setDisplayRoleCB({|nRow,nCol|"C�lula "+alltrim(str(nRow))+","+alltrim(str(nCol))}) // conte�do da c�lula
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|"Coluna "+strzero(nCol,2)}) // t�tulos das colunas

   oView := QTableView():new(oWindow)
   oView:move(10,10)
   oView:resize(800-20,600-20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN
