/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QOBJECT
#endif

CLASS QPropertyAnimation INHERIT QVariantAnimation

   METHOD new
   METHOD delete
   METHOD propertyName
   METHOD setPropertyName
   METHOD setTargetObject
   METHOD targetObject

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPropertyAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QPropertyAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QPropertyAnimation( QObject * parent = 0 )
*/
void QPropertyAnimation_new1()
{
  QPropertyAnimation * obj = new QPropertyAnimation( OPQOBJECT( 1, 0 ) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QPropertyAnimation( QObject * target, const QByteArray & propertyName, QObject * parent = 0 )
*/
void QPropertyAnimation_new2()
{
  QPropertyAnimation * obj = new QPropertyAnimation( PQOBJECT( 1 ), *PQBYTEARRAY( 2 ), OPQOBJECT( 3, 0 ) );
  Qt4xHb::returnNewObject( obj, false );
}

HB_FUNC_STATIC( QPROPERTYANIMATION_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QPropertyAnimation_new1();
  }
  else if( ISBETWEEN( 2, 3 ) && ISQOBJECT( 1 ) && ISQBYTEARRAY( 2 ) && ( ISQOBJECT( 3 ) || HB_ISNIL( 3 ) ) )
  {
    QPropertyAnimation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPROPERTYANIMATION_DELETE )
{
  QPropertyAnimation * obj = static_cast< QPropertyAnimation * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
QByteArray propertyName() const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_PROPERTYNAME )
{
  QPropertyAnimation * obj = static_cast< QPropertyAnimation * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->propertyName() );
      Qt4xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
void setPropertyName( const QByteArray & propertyName )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETPROPERTYNAME )
{
  QPropertyAnimation * obj = static_cast< QPropertyAnimation * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQBYTEARRAY( 1 ) )
    {
#endif
      obj->setPropertyName( *PQBYTEARRAY( 1 ) );
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

/*
void setTargetObject( QObject * target )
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_SETTARGETOBJECT )
{
  QPropertyAnimation * obj = static_cast< QPropertyAnimation * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQOBJECT( 1 ) )
    {
#endif
      obj->setTargetObject( PQOBJECT( 1 ) );
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

/*
QObject * targetObject() const
*/
HB_FUNC_STATIC( QPROPERTYANIMATION_TARGETOBJECT )
{
  QPropertyAnimation * obj = static_cast< QPropertyAnimation * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QObject * ptr = obj->targetObject();
      Qt4xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
