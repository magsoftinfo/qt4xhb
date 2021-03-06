/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsColorizeEffectSlots.h"

QGraphicsColorizeEffectSlots::QGraphicsColorizeEffectSlots( QObject * parent ) : QObject( parent )
{
}

QGraphicsColorizeEffectSlots::~QGraphicsColorizeEffectSlots()
{
}

void QGraphicsColorizeEffectSlots::colorChanged( const QColor & color )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "colorChanged(QColor)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QGRAPHICSCOLORIZEEFFECT" );
    PHB_ITEM pcolor = Qt4xHb::Signals_return_object( ( void * ) &color, "QCOLOR" );

    hb_vmEvalBlockV( cb, 2, psender, pcolor );

    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void QGraphicsColorizeEffectSlots::strengthChanged( qreal strength )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "strengthChanged(qreal)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QGRAPHICSCOLORIZEEFFECT" );
    PHB_ITEM pstrength = hb_itemPutND( NULL, strength );

    hb_vmEvalBlockV( cb, 2, psender, pstrength );

    hb_itemRelease( psender );
    hb_itemRelease( pstrength );
  }
}

void QGraphicsColorizeEffectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QGraphicsColorizeEffect * obj = static_cast< QGraphicsColorizeEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QGraphicsColorizeEffectSlots * s = QCoreApplication::instance()->findChild<QGraphicsColorizeEffectSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsColorizeEffectSlots();
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
