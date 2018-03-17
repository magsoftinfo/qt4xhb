/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractTransitionSlots.h"

QAbstractTransitionSlots::QAbstractTransitionSlots(QObject *parent) : QObject(parent)
{
}

QAbstractTransitionSlots::~QAbstractTransitionSlots()
{
}
void QAbstractTransitionSlots::triggered()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "triggered()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QABSTRACTTRANSITION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QAbstractTransitionSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QAbstractTransition * obj = (QAbstractTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAbstractTransitionSlots * s = obj->findChild<QAbstractTransitionSlots *>();

    if( s == NULL )
    {
      s = new QAbstractTransitionSlots( obj );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
