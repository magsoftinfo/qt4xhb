/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QStateSlots.h"

QStateSlots::QStateSlots( QObject * parent ) : QObject( parent )
{
}

QStateSlots::~QStateSlots()
{
}

void QStateSlots::finished()
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QSTATE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QStateSlots::propertiesAssigned()
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "propertiesAssigned()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QSTATE" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QStateSlots_connect_signal( const QString & signal, const QString & slot )
{
  QState * obj = static_cast< QState * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QStateSlots * s = QCoreApplication::instance()->findChild<QStateSlots *>();

    if( s == NULL )
    {
      s = new QStateSlots();
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
