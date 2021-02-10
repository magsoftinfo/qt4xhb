/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSizeF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundedTo
   METHOD expandedTo
   METHOD height
   METHOD isEmpty
   METHOD isNull
   METHOD isValid
   METHOD scale
   METHOD setHeight
   METHOD setWidth
   METHOD toSize
   METHOD transpose
   METHOD width

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSizeF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QSizeF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSizeF()
*/
void QSizeF_new1()
{
  QSizeF * obj = new QSizeF();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QSizeF( const QSize & size )
*/
void QSizeF_new2()
{
  QSizeF * obj = new QSizeF( *PQSIZE( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QSizeF( qreal width, qreal height )
*/
void QSizeF_new3()
{
  QSizeF * obj = new QSizeF( PQREAL( 1 ), PQREAL( 2 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSIZEF_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QSizeF_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQSIZE( 1 ) )
  {
    QSizeF_new2();
  }
  else if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
  {
    QSizeF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIZEF_DELETE )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
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
QSizeF boundedTo( const QSizeF & otherSize ) const
*/
HB_FUNC_STATIC( QSIZEF_BOUNDEDTO )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQSIZEF( 1 ) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->boundedTo( *PQSIZEF( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QSIZEF", true );
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
QSizeF expandedTo( const QSizeF & otherSize ) const
*/
HB_FUNC_STATIC( QSIZEF_EXPANDEDTO )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQSIZEF( 1 ) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->expandedTo( *PQSIZEF( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QSIZEF", true );
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
qreal height() const
*/
HB_FUNC_STATIC( QSIZEF_HEIGHT )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->height() );
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QSIZEF_ISEMPTY )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
bool isNull() const
*/
HB_FUNC_STATIC( QSIZEF_ISNULL )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isNull() );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSIZEF_ISVALID )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isValid() );
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
void scale( qreal width, qreal height, Qt::AspectRatioMode mode )
*/
void QSizeF_scale1()
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->scale( PQREAL( 1 ), PQREAL( 2 ), ( Qt::AspectRatioMode ) hb_parni( 3 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scale( const QSizeF & size, Qt::AspectRatioMode mode )
*/
void QSizeF_scale2()
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->scale( *PQSIZEF( 1 ), ( Qt::AspectRatioMode ) hb_parni( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QSIZEF_SCALE )
{
  if( ISNUMPAR( 3 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) )
  {
    QSizeF_scale1();
  }
  else if( ISNUMPAR( 2 ) && ISQSIZEF( 1 ) && ISNUM( 2 ) )
  {
    QSizeF_scale2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHeight( qreal height )
*/
HB_FUNC_STATIC( QSIZEF_SETHEIGHT )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setHeight( PQREAL( 1 ) );
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
void setWidth( qreal width )
*/
HB_FUNC_STATIC( QSIZEF_SETWIDTH )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setWidth( PQREAL( 1 ) );
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
QSize toSize() const
*/
HB_FUNC_STATIC( QSIZEF_TOSIZE )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QSize * ptr = new QSize( obj->toSize() );
      Qt4xHb::createReturnClass( ptr, "QSIZE", true );
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
void transpose()
*/
HB_FUNC_STATIC( QSIZEF_TRANSPOSE )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->transpose();
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
qreal width() const
*/
HB_FUNC_STATIC( QSIZEF_WIDTH )
{
  QSizeF * obj = static_cast< QSizeF * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->width() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QSIZEF_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSIZEF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSIZEF_NEWFROM );
}

HB_FUNC_STATIC( QSIZEF_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSIZEF_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl( 1 ) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
