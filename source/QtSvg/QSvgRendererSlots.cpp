/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSvgRendererSlots.h"

QSvgRendererSlots::QSvgRendererSlots(QObject *parent) : QObject(parent)
{
}

QSvgRendererSlots::~QSvgRendererSlots()
{
}
void QSvgRendererSlots::repaintNeeded()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "repaintNeeded()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QSVGRENDERER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QSvgRendererSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QSvgRendererSlots * s = obj->findChild<QSvgRendererSlots *>();

    if( s == NULL )
    {
      s = new QSvgRendererSlots( obj );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
