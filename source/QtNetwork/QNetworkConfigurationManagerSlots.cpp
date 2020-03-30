/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QNetworkConfigurationManagerSlots.h"

QNetworkConfigurationManagerSlots::QNetworkConfigurationManagerSlots(QObject *parent) : QObject(parent)
{
}

QNetworkConfigurationManagerSlots::~QNetworkConfigurationManagerSlots()
{
}
void QNetworkConfigurationManagerSlots::configurationAdded( const QNetworkConfiguration & config )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "configurationAdded(QNetworkConfiguration)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKCONFIGURATIONMANAGER" );
    PHB_ITEM pconfig = Signals_return_object( (void *) &config, "QNETWORKCONFIGURATION" );
    hb_vmEvalBlockV( cb, 2, psender, pconfig );
    hb_itemRelease( psender );
    hb_itemRelease( pconfig );
  }
}
void QNetworkConfigurationManagerSlots::configurationChanged( const QNetworkConfiguration & config )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "configurationChanged(QNetworkConfiguration)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKCONFIGURATIONMANAGER" );
    PHB_ITEM pconfig = Signals_return_object( (void *) &config, "QNETWORKCONFIGURATION" );
    hb_vmEvalBlockV( cb, 2, psender, pconfig );
    hb_itemRelease( psender );
    hb_itemRelease( pconfig );
  }
}
void QNetworkConfigurationManagerSlots::configurationRemoved( const QNetworkConfiguration & config )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "configurationRemoved(QNetworkConfiguration)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKCONFIGURATIONMANAGER" );
    PHB_ITEM pconfig = Signals_return_object( (void *) &config, "QNETWORKCONFIGURATION" );
    hb_vmEvalBlockV( cb, 2, psender, pconfig );
    hb_itemRelease( psender );
    hb_itemRelease( pconfig );
  }
}
void QNetworkConfigurationManagerSlots::onlineStateChanged( bool isOnline )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "onlineStateChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKCONFIGURATIONMANAGER" );
    PHB_ITEM pisOnline = hb_itemPutL( NULL, isOnline );
    hb_vmEvalBlockV( cb, 2, psender, pisOnline );
    hb_itemRelease( psender );
    hb_itemRelease( pisOnline );
  }
}
void QNetworkConfigurationManagerSlots::updateCompleted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateCompleted()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QNETWORKCONFIGURATIONMANAGER" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QNetworkConfigurationManagerSlots_connect_signal( const QString & signal, const QString & slot )
{
  QNetworkConfigurationManager * obj = (QNetworkConfigurationManager *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QNetworkConfigurationManagerSlots * s = QCoreApplication::instance()->findChild<QNetworkConfigurationManagerSlots *>();

    if( s == NULL )
    {
      s = new QNetworkConfigurationManagerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
