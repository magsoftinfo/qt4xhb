/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCONFIGURATION
#endif

CLASS QNetworkConfigurationManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD allConfigurations
   METHOD capabilities
   METHOD configurationFromIdentifier
   METHOD defaultConfiguration
   METHOD isOnline
   METHOD updateConfigurations

   METHOD onConfigurationAdded
   METHOD onConfigurationChanged
   METHOD onConfigurationRemoved
   METHOD onOnlineStateChanged
   METHOD onUpdateCompleted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QNetworkConfigurationManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtNetwork/QNetworkConfigurationManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QNetworkConfigurationManager( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QNetworkConfigurationManager * obj = new QNetworkConfigurationManager( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_DELETE )
{
  QNetworkConfigurationManager * obj = static_cast< QNetworkConfigurationManager * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
QList<QNetworkConfiguration> allConfigurations( QNetworkConfiguration::StateFlags filter = 0 ) const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ALLCONFIGURATIONS )
{
  QNetworkConfigurationManager * obj = static_cast< QNetworkConfigurationManager * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      QList<QNetworkConfiguration> list = obj->allConfigurations( HB_ISNIL( 1 ) ? ( QNetworkConfiguration::StateFlags ) 0 : ( QNetworkConfiguration::StateFlags ) hb_parni( 1 ) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKCONFIGURATION" );
      PHB_ITEM pArray = hb_itemArrayNew( 0 );
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, static_cast< QNetworkConfiguration * >( new QNetworkConfiguration( list[i] ) ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QNETWORKCONFIGURATION", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkConfigurationManager::Capabilities capabilities() const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_CAPABILITIES )
{
  QNetworkConfigurationManager * obj = static_cast< QNetworkConfigurationManager * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->capabilities() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkConfiguration configurationFromIdentifier( const QString & identifier ) const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_CONFIGURATIONFROMIDENTIFIER )
{
  QNetworkConfigurationManager * obj = static_cast< QNetworkConfigurationManager * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->configurationFromIdentifier( PQSTRING( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QNETWORKCONFIGURATION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QNetworkConfiguration defaultConfiguration() const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_DEFAULTCONFIGURATION )
{
  QNetworkConfigurationManager * obj = static_cast< QNetworkConfigurationManager * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QNetworkConfiguration * ptr = new QNetworkConfiguration( obj->defaultConfiguration() );
      Qt4xHb::createReturnClass( ptr, "QNETWORKCONFIGURATION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isOnline() const
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ISONLINE )
{
  QNetworkConfigurationManager * obj = static_cast< QNetworkConfigurationManager * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isOnline() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void updateConfigurations()
*/
HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_UPDATECONFIGURATIONS )
{
  QNetworkConfigurationManager * obj = static_cast< QNetworkConfigurationManager * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->updateConfigurations();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QNetworkConfigurationManagerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONADDED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "configurationAdded(QNetworkConfiguration)", "configurationAdded(QNetworkConfiguration)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONCHANGED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "configurationChanged(QNetworkConfiguration)", "configurationChanged(QNetworkConfiguration)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONCONFIGURATIONREMOVED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "configurationRemoved(QNetworkConfiguration)", "configurationRemoved(QNetworkConfiguration)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONONLINESTATECHANGED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "onlineStateChanged(bool)", "onlineStateChanged(bool)" );
}

HB_FUNC_STATIC( QNETWORKCONFIGURATIONMANAGER_ONUPDATECOMPLETED )
{
  QNetworkConfigurationManagerSlots_connect_signal( "updateCompleted()", "updateCompleted()" );
}

#pragma ENDDUMP
