/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
#endif

CLASS QCDEStyle INHERIT QMotifStyle

   METHOD new
   METHOD delete
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD standardPalette

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCDEStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QCDEStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QCDEStyle( bool useHighlightCols = false )
*/
HB_FUNC_STATIC( QCDESTYLE_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( HB_ISLOG( 1 ) || HB_ISNIL( 1 ) ) )
  {
    QCDEStyle * obj = new QCDEStyle( OPBOOL( 1, false ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCDESTYLE_DELETE )
{
  QCDEStyle * obj = static_cast< QCDEStyle * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
virtual void drawControl( QStyle::ControlElement element, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCDESTYLE_DRAWCONTROL )
{
  QCDEStyle * obj = static_cast< QCDEStyle * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTION( 2 ) && ISQPAINTER( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      obj->drawControl( ( QStyle::ControlElement ) hb_parni( 1 ), PQSTYLEOPTION( 2 ), PQPAINTER( 3 ), OPQWIDGET( 4, 0 ) );
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
virtual void drawPrimitive( QStyle::PrimitiveElement pe, const QStyleOption * opt, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCDESTYLE_DRAWPRIMITIVE )
{
  QCDEStyle * obj = static_cast< QCDEStyle * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && HB_ISNUM( 1 ) && ISQSTYLEOPTION( 2 ) && ISQPAINTER( 3 ) && ( ISQWIDGET( 4 ) || HB_ISNIL( 4 ) ) )
    {
#endif
      obj->drawPrimitive( ( QStyle::PrimitiveElement ) hb_parni( 1 ), PQSTYLEOPTION( 2 ), PQPAINTER( 3 ), OPQWIDGET( 4, 0 ) );
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
virtual int pixelMetric( QStyle::PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCDESTYLE_PIXELMETRIC )
{
  QCDEStyle * obj = static_cast< QCDEStyle * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 3 ) && HB_ISNUM( 1 ) && ( ISQSTYLEOPTION( 2 ) || HB_ISNIL( 2 ) ) && ( ISQWIDGET( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      RINT( obj->pixelMetric( ( QStyle::PixelMetric ) hb_parni( 1 ), HB_ISNIL( 2 ) ? 0 : static_cast< QStyleOption * >( Qt4xHb::itemGetPtr( 2 ) ), OPQWIDGET( 3, 0 ) ) );
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
virtual QPalette standardPalette() const
*/
HB_FUNC_STATIC( QCDESTYLE_STANDARDPALETTE )
{
  QCDEStyle * obj = static_cast< QCDEStyle * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPalette * ptr = new QPalette( obj->standardPalette() );
      Qt4xHb::createReturnClass( ptr, "QPALETTE", true );
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
