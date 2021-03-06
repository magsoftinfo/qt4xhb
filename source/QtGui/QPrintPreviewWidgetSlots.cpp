/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintPreviewWidgetSlots.h"

QPrintPreviewWidgetSlots::QPrintPreviewWidgetSlots( QObject * parent ) : QObject( parent )
{
}

QPrintPreviewWidgetSlots::~QPrintPreviewWidgetSlots()
{
}

void QPrintPreviewWidgetSlots::paintRequested( QPrinter * printer )
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "paintRequested(QPrinter*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QPRINTPREVIEWWIDGET" );
    PHB_ITEM pprinter = Qt4xHb::Signals_return_object( ( void * ) printer, "QPRINTER" );

    hb_vmEvalBlockV( cb, 2, psender, pprinter );

    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

void QPrintPreviewWidgetSlots::previewChanged()
{
  QObject * object = qobject_cast<QObject *>( sender() );

  PHB_ITEM cb = Qt4xHb::Signals_return_codeblock( object, "previewChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt4xHb::Signals_return_qobject( static_cast< QObject * >( object ), "QPRINTPREVIEWWIDGET" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QPrintPreviewWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QPrintPreviewWidget * obj = static_cast< QPrintPreviewWidget * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QPrintPreviewWidgetSlots * s = QCoreApplication::instance()->findChild<QPrintPreviewWidgetSlots *>();

    if( s == NULL )
    {
      s = new QPrintPreviewWidgetSlots();
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
