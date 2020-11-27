/*

  Qt4xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt4xhb

*/

#include "qt4xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oTimer

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oWindow:setWindowTitle( "Teste" )

   oWindow:resize( 640, 480 )

   oWindow:show()

   oTimer := QTimer():new( oWindow )
   ? oTimer:onTimeout( {||qout("timer executado")} )
   oTimer:setInterval( 1000 )
   oTimer:start()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
