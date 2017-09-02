/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QGraphicsSceneMoveEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD newPos
   METHOD oldPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsSceneMoveEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsSceneMoveEvent ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_NEW )
{
  QGraphicsSceneMoveEvent * o = new QGraphicsSceneMoveEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_DELETE )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

/*
QPointF newPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_NEWPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->newPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF oldPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEMOVEEVENT_OLDPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->oldPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

#pragma ENDDUMP