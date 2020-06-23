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

CLASS QCleanlooksStyle INHERIT QWindowsStyle

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawItemPixmap
   METHOD drawItemText
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD itemPixmapRect
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

PROCEDURE destroyObject() CLASS QCleanlooksStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QCleanlooksStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QCleanlooksStyle ()
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QCleanlooksStyle * obj = new QCleanlooksStyle();
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DELETE )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

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
virtual void drawComplexControl( QStyle::ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWCOMPLEXCONTROL )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && ISQWIDGET(4) )
    {
#endif
      obj->drawComplexControl( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3), PQWIDGET(4) );
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
virtual void drawControl( QStyle::ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWCONTROL )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && ISQWIDGET(4) )
    {
#endif
      obj->drawControl( (QStyle::ControlElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), PQWIDGET(4) );
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
virtual void drawItemPixmap( QPainter * painter, const QRect & rect, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWITEMPIXMAP )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISQPAINTER(1) && ISQRECT(2) && ISNUM(3) && ISQPIXMAP(4) )
    {
#endif
      obj->drawItemPixmap( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPIXMAP(4) );
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
virtual void drawItemText ( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWITEMTEXT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(6,7) && ISQPAINTER(1) && ISQRECT(2) && ISNUM(3) && ISQPALETTE(4) && ISLOG(5) && ISCHAR(6) && ISOPTNUM(7) )
    {
#endif
      obj->drawItemText( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPALETTE(4), PBOOL(5), PQSTRING(6), ISNIL(7)? (QPalette::ColorRole) QPalette::NoRole : (QPalette::ColorRole) hb_parni(7) );
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
virtual void drawPrimitive ( PrimitiveElement elem, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_DRAWPRIMITIVE )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      obj->drawPrimitive( (QStyle::PrimitiveElement) hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4,0) );
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
virtual QPixmap generatedIconPixmap( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * opt ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_GENERATEDICONPIXMAP )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISQPIXMAP(2) && ISQSTYLEOPTION(3) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->generatedIconPixmap( (QIcon::Mode) hb_parni(1), *PQPIXMAP(2), PQSTYLEOPTION(3) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
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
virtual SubControl hitTestComplexControl ( ComplexControl cc, const QStyleOptionComplex * opt, const QPoint & pt, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_HITTESTCOMPLEXCONTROL )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(3,4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPOINT(3) && (ISQWIDGET(4)||ISNIL(4)) )
    {
#endif
      RENUM( obj->hitTestComplexControl( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), *PQPOINT(3), OPQWIDGET(4,0) ) );
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
virtual QRect itemPixmapRect( const QRect & r, int flags, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_ITEMPIXMAPRECT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQRECT(1) && ISNUM(2) && ISQPIXMAP(3) )
    {
#endif
      QRect * ptr = new QRect( obj->itemPixmapRect( *PQRECT(1), PINT(2), *PQPIXMAP(3) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
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
virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_PIXELMETRIC )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      RINT( obj->pixelMetric( (QStyle::PixelMetric) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) Qt4xHb::itemGetPtr(2), OPQWIDGET(3,0) ) );
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
virtual void polish ( QWidget * widget )
*/
void QCleanlooksStyle_polish1()
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->polish( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QApplication * app )
*/
void QCleanlooksStyle_polish2()
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->polish( PQAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QPalette & pal )
*/
void QCleanlooksStyle_polish3()
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->polish( *PQPALETTE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]virtual void polish ( QWidget * widget )
[2]virtual void polish ( QApplication * app )
[3]virtual void polish ( QPalette & pal )
*/

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCleanlooksStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCleanlooksStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QCleanlooksStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QSize sizeFromContents( QStyle::ContentsType type, const QStyleOption * option, const QSize & size, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SIZEFROMCONTENTS )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && ISQWIDGET(4) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeFromContents( (QStyle::ContentsType) hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), PQWIDGET(4) ) );
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
virtual QPalette standardPalette() const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STANDARDPALETTE )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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

/*
virtual QPixmap standardPixmap ( StandardPixmap standardPixmap, const QStyleOption * opt, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STANDARDPIXMAP )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->standardPixmap( (QStyle::StandardPixmap) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      Qt4xHb::createReturnClass( ptr, "QPIXMAP", true );
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
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_STYLEHINT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && (ISQWIDGET(3)||ISNIL(3)) && (ISQSTYLEHINTRETURN(4)||ISNIL(4)) )
    {
#endif
      RINT( obj->styleHint( (QStyle::StyleHint) hb_parni(1), ISNIL(2)? 0 : (QStyleOption *) Qt4xHb::itemGetPtr(2), OPQWIDGET(3,0), ISNIL(4)? 0 : (QStyleHintReturn *) Qt4xHb::itemGetPtr(4) ) );
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
virtual QRect subControlRect( QStyle::ComplexControl control, const QStyleOptionComplex * option, QStyle::SubControl subControl, const QWidget * widget ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SUBCONTROLRECT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISNUM(3) && ISQWIDGET(4) )
    {
#endif
      QRect * ptr = new QRect( obj->subControlRect( (QStyle::ComplexControl) hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), (QStyle::SubControl) hb_parni(3), PQWIDGET(4) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
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
virtual QRect subElementRect ( SubElement sr, const QStyleOption * opt, const QWidget * w = 0 ) const
*/
HB_FUNC_STATIC( QCLEANLOOKSSTYLE_SUBELEMENTRECT )
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3)||ISNIL(3)) )
    {
#endif
      QRect * ptr = new QRect( obj->subElementRect( (QStyle::SubElement) hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3,0) ) );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
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
virtual void unpolish ( QWidget * widget )
*/
void QCleanlooksStyle_unpolish1()
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unpolish( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unpolish ( QApplication * app )
*/
void QCleanlooksStyle_unpolish2()
{
  QCleanlooksStyle * obj = (QCleanlooksStyle *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unpolish( PQAPPLICATION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]virtual void unpolish ( QWidget * widget )
[2]virtual void unpolish ( QApplication * app )
*/

HB_FUNC_STATIC( QCLEANLOOKSSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QCleanlooksStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QCleanlooksStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
