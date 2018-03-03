/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpEngineCoreSlots.h"

static QHelpEngineCoreSlots * s = NULL;

QHelpEngineCoreSlots::QHelpEngineCoreSlots(QObject *parent) : QObject(parent)
{
}

QHelpEngineCoreSlots::~QHelpEngineCoreSlots()
{
}
void QHelpEngineCoreSlots::currentFilterChanged( const QString & newFilter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentFilterChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pnewFilter = hb_itemPutC( NULL, QSTRINGTOSTRING(newFilter) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewFilter );
    hb_itemRelease( psender );
    hb_itemRelease( pnewFilter );
  }
}
void QHelpEngineCoreSlots::setupFinished()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setupFinished()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QHelpEngineCoreSlots::setupStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "setupStarted()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QHelpEngineCoreSlots::warning( const QString & msg )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "warning(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( object, "QOBJECT" );
    PHB_ITEM pmsg = hb_itemPutC( NULL, QSTRINGTOSTRING(msg) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmsg );
    hb_itemRelease( psender );
    hb_itemRelease( pmsg );
  }
}

void QHelpEngineCoreSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QHelpEngineCoreSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
