/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QStyleHintReturnMask INHERIT QStyleHintReturn

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleHintReturnMask
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleHintReturnMask>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleHintReturnMask ()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNMASK_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleHintReturnMask * o = new QStyleHintReturnMask ();
    _qt4xhb_returnNewObject( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTYLEHINTRETURNMASK_DELETE )
{
  QStyleHintReturnMask * obj = (QStyleHintReturnMask *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
