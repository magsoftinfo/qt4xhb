/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTimerSlots.h"

QTimerSlots::QTimerSlots( QObject * parent ) : QObject( parent )
{
}

QTimerSlots::~QTimerSlots()
{
}

void QTimerSlots::timeout()
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "timeout()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( ( QObject * ) object, "QTIMER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QTimerSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTimer * obj = ( QTimer * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QTimerSlots * s = QCoreApplication::instance()->findChild<QTimerSlots *>();

    if( s == NULL )
    {
      s = new QTimerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt4xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
