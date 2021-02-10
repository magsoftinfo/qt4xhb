/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSequentialAnimationGroupSlots.h"

QSequentialAnimationGroupSlots::QSequentialAnimationGroupSlots( QObject * parent ) : QObject( parent )
{
}

QSequentialAnimationGroupSlots::~QSequentialAnimationGroupSlots()
{
}

void QSequentialAnimationGroupSlots::currentAnimationChanged( QAbstractAnimation * current )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "currentAnimationChanged(QAbstractAnimation*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QSEQUENTIALANIMATIONGROUP" );
    PHB_ITEM pcurrent = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( current ), "QABSTRACTANIMATION" );

    hb_vmEvalBlockV( cb, 2, psender, pcurrent );

    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
  }
}

void QSequentialAnimationGroupSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSequentialAnimationGroup * obj = static_cast< QSequentialAnimationGroup * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QSequentialAnimationGroupSlots * s = QCoreApplication::instance()->findChild<QSequentialAnimationGroupSlots *>();

    if( s == NULL )
    {
      s = new QSequentialAnimationGroupSlots();
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
