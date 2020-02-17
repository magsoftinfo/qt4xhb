/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QWindowsXPStyle INHERIT QWindowsStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindowsXPStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QWindowsXPStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QWindowsXPStyle ()
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWindowsXPStyle * o = new QWindowsXPStyle ();
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWINDOWSXPSTYLE_DELETE )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    Events_disconnect_all_events (obj, true);
    Signals_disconnect_all_signals (obj, true);
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
virtual void drawComplexControl ( ComplexControl cc, const QStyleOptionComplex * option, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_DRAWCOMPLEXCONTROL )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawComplexControl ( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_DRAWCONTROL )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawControl ( (QStyle::ControlElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual void drawPrimitive ( PrimitiveElement pe, const QStyleOption * option, QPainter * p, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_DRAWPRIMITIVE )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawPrimitive ( (QStyle::PrimitiveElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual int pixelMetric ( PixelMetric pm, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_PIXELMETRIC )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      RINT( obj->pixelMetric ( (QStyle::PixelMetric) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) _qt4xhb_itemGetPtr(2), OPQWIDGET(3,0) ) );
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
virtual void polish ( QApplication * app )
*/
void QWindowsXPStyle_polish1 ()
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->polish ( PQAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QWidget * widget )
*/
void QWindowsXPStyle_polish2 ()
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->polish ( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QPalette & pal )
*/
void QWindowsXPStyle_polish3 ()
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->polish ( *PQPALETTE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void polish ( QApplication * app )
//[2]virtual void polish ( QWidget * widget )
//[3]virtual void polish ( QPalette & pal )

HB_FUNC_STATIC( QWINDOWSXPSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QWindowsXPStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWindowsXPStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QWindowsXPStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QSize sizeFromContents ( ContentsType ct, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_SIZEFROMCONTENTS )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeFromContents ( (QStyle::ContentsType) hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), OPQWIDGET(4,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
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
virtual QPalette standardPalette () const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_STANDARDPALETTE )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPalette * ptr = new QPalette( obj->standardPalette () );
      _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
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
virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * option, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_STANDARDPIXMAP )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->standardPixmap ( (QStyle::StandardPixmap) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
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
virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_STYLEHINT )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) && (ISQSTYLEHINTRETURN(4)||ISNIL(4)) )
    {
#endif
      RINT( obj->styleHint ( (QStyle::StyleHint) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) _qt4xhb_itemGetPtr(2), OPQWIDGET(3,0), ISNIL(4)? 0 : (QStyleHintReturn *) _qt4xhb_itemGetPtr(4) ) );
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
virtual QRect subControlRect ( ComplexControl cc, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_SUBCONTROLRECT )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISNUM(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      QRect * ptr = new QRect( obj->subControlRect ( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), (QStyle::SubControl) hb_parni(3), OPQWIDGET(4,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
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
virtual QRect subElementRect ( SubElement sr, const QStyleOption * option, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QWINDOWSXPSTYLE_SUBELEMENTRECT )
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QRect * ptr = new QRect( obj->subElementRect ( (QStyle::SubElement) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
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
virtual void unpolish ( QApplication * app )
*/
void QWindowsXPStyle_unpolish1 ()
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->unpolish ( PQAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unpolish ( QWidget * widget )
*/
void QWindowsXPStyle_unpolish2 ()
{
  QWindowsXPStyle * obj = (QWindowsXPStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->unpolish ( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]virtual void unpolish ( QApplication * app )
//[2]virtual void unpolish ( QWidget * widget )

HB_FUNC_STATIC( QWINDOWSXPSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QWindowsXPStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWindowsXPStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
