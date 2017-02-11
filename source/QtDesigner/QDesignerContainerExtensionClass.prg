/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET

CLASS QDesignerContainerExtension

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerContainerExtension
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD insertWidget
   METHOD remove
   METHOD setCurrentIndex
   METHOD widget
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDesignerContainerExtension
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDesignerContainerExtension
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDesignerContainerExtension
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDesignerContainerExtension
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDesignerContainerExtension
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDesignerContainerExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN