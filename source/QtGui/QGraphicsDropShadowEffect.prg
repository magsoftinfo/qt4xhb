/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QGraphicsDropShadowEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD blurRadius
   METHOD color
   METHOD offset
   METHOD xOffset
   METHOD yOffset
   METHOD boundingRectFor
   METHOD setBlurRadius
   METHOD setColor
   METHOD setOffset
   METHOD setXOffset
   METHOD setYOffset

   METHOD onBlurRadiusChanged
   METHOD onColorChanged
   METHOD onOffsetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsDropShadowEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsDropShadowEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QGraphicsDropShadowEffect( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQOBJECT( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QGraphicsDropShadowEffect * obj = new QGraphicsDropShadowEffect( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_DELETE )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
qreal blurRadius() const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_BLURRADIUS )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->blurRadius() );
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
QColor color() const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_COLOR )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QColor * ptr = new QColor( obj->color() );
      Qt4xHb::createReturnClass( ptr, "QCOLOR", true );
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
QPointF offset() const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_OFFSET )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPointF * ptr = new QPointF( obj->offset() );
      Qt4xHb::createReturnClass( ptr, "QPOINTF", true );
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
qreal xOffset() const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_XOFFSET )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->xOffset() );
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
qreal yOffset() const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_YOFFSET )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->yOffset() );
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
virtual QRectF boundingRectFor( const QRectF & rect ) const
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_BOUNDINGRECTFOR )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQRECTF( 1 ) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRectFor( *PQRECTF( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QRECTF", true );
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
void setBlurRadius( qreal blurRadius )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETBLURRADIUS )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setBlurRadius( PQREAL( 1 ) );
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
void setColor( const QColor & color )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETCOLOR )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ( ISQCOLOR( 1 ) || HB_ISCHAR( 1 ) ) )
    {
#endif
      obj->setColor( HB_ISOBJECT( 1 ) ? *static_cast< QColor * >( Qt4xHb::itemGetPtr( 1 ) ) : QColor( hb_parc( 1 ) ) );
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
void setOffset( const QPointF & ofs )
*/
void QGraphicsDropShadowEffect_setOffset1()
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->setOffset( *PQPOINTF( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset( qreal dx, qreal dy )
*/
void QGraphicsDropShadowEffect_setOffset2()
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->setOffset( PQREAL( 1 ), PQREAL( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset( qreal d )
*/
void QGraphicsDropShadowEffect_setOffset3()
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->setOffset( PQREAL( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETOFFSET )
{
  if( ISNUMPAR( 1 ) && ISQPOINTF( 1 ) )
  {
    QGraphicsDropShadowEffect_setOffset1();
  }
  else if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) )
  {
    QGraphicsDropShadowEffect_setOffset2();
  }
  else if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    QGraphicsDropShadowEffect_setOffset3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setXOffset( qreal dx )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETXOFFSET )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setXOffset( PQREAL( 1 ) );
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
void setYOffset( qreal dy )
*/
HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_SETYOFFSET )
{
  QGraphicsDropShadowEffect * obj = static_cast< QGraphicsDropShadowEffect * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setYOffset( PQREAL( 1 ) );
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

void QGraphicsDropShadowEffectSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_ONBLURRADIUSCHANGED )
{
  QGraphicsDropShadowEffectSlots_connect_signal( "blurRadiusChanged(qreal)", "blurRadiusChanged(qreal)" );
}

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_ONCOLORCHANGED )
{
  QGraphicsDropShadowEffectSlots_connect_signal( "colorChanged(QColor)", "colorChanged(QColor)" );
}

HB_FUNC_STATIC( QGRAPHICSDROPSHADOWEFFECT_ONOFFSETCHANGED )
{
  QGraphicsDropShadowEffectSlots_connect_signal( "offsetChanged(QPointF)", "offsetChanged(QPointF)" );
}

#pragma ENDDUMP
