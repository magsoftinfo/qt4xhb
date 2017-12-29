/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZE
REQUEST QMATRIX
REQUEST QRECT
#endif

CLASS QSvgRenderer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD animated
   METHOD boundsOnElement
   METHOD defaultSize
   METHOD elementExists
   METHOD framesPerSecond
   METHOD isValid
   METHOD matrixForElement
   METHOD setFramesPerSecond
   METHOD setViewBox
   METHOD viewBox
   METHOD viewBoxF
   METHOD load
   METHOD render

   METHOD onRepaintNeeded

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSvgRenderer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSvgRenderer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSvgRenderer ( QObject * parent = 0 )
*/
void QSvgRenderer_new1 ()
{
  QSvgRenderer * o = new QSvgRenderer ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

/*
QSvgRenderer ( const QString & filename, QObject * parent = 0 )
*/
void QSvgRenderer_new2 ()
{
  QSvgRenderer * o = new QSvgRenderer ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

/*
QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
*/
void QSvgRenderer_new3 ()
{
  QSvgRenderer * o = new QSvgRenderer ( *PQBYTEARRAY(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

/*
QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )
*/
void QSvgRenderer_new4 ()
{
  QSvgRenderer * o = new QSvgRenderer ( PQXMLSTREAMREADER(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

//[1]QSvgRenderer ( QObject * parent = 0 )
//[2]QSvgRenderer ( const QString & filename, QObject * parent = 0 )
//[3]QSvgRenderer ( const QByteArray & contents, QObject * parent = 0 )
//[4]QSvgRenderer ( QXmlStreamReader * contents, QObject * parent = 0 )

HB_FUNC_STATIC( QSVGRENDERER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QSvgRenderer_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSvgRenderer_new2();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSvgRenderer_new3();
  }
  else if( ISBETWEEN(1,2) && ISQXMLSTREAMREADER(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QSvgRenderer_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSVGRENDERER_DELETE )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool animated () const
*/
HB_FUNC_STATIC( QSVGRENDERER_ANIMATED )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->animated () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF boundsOnElement ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_BOUNDSONELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QRectF * ptr = new QRectF( obj->boundsOnElement ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QSize defaultSize () const
*/
HB_FUNC_STATIC( QSVGRENDERER_DEFAULTSIZE )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->defaultSize () );
      _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool elementExists ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_ELEMENTEXISTS )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->elementExists ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int framesPerSecond () const
*/
HB_FUNC_STATIC( QSVGRENDERER_FRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->framesPerSecond () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QSVGRENDERER_ISVALID )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QMatrix matrixForElement ( const QString & id ) const
*/
HB_FUNC_STATIC( QSVGRENDERER_MATRIXFORELEMENT )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QMatrix * ptr = new QMatrix( obj->matrixForElement ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QMATRIX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFramesPerSecond ( int num )
*/
HB_FUNC_STATIC( QSVGRENDERER_SETFRAMESPERSECOND )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFramesPerSecond ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewBox ( const QRect & viewbox )
*/
void QSvgRenderer_setViewBox1 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setViewBox ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewBox ( const QRectF & viewbox )
*/
void QSvgRenderer_setViewBox2 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->setViewBox ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setViewBox ( const QRect & viewbox )
//[2]void setViewBox ( const QRectF & viewbox )

HB_FUNC_STATIC( QSVGRENDERER_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QSvgRenderer_setViewBox1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSvgRenderer_setViewBox2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect viewBox () const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOX )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRect * ptr = new QRect( obj->viewBox () );
      _qt4xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRectF viewBoxF () const
*/
HB_FUNC_STATIC( QSVGRENDERER_VIEWBOXF )
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->viewBoxF () );
      _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool load ( const QString & filename )
*/
void QSvgRenderer_load1 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->load ( PQSTRING(1) ) );
  }
}

/*
bool load ( const QByteArray & contents )
*/
void QSvgRenderer_load2 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->load ( *PQBYTEARRAY(1) ) );
  }
}

/*
bool load ( QXmlStreamReader * contents )
*/
void QSvgRenderer_load3 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->load ( PQXMLSTREAMREADER(1) ) );
  }
}

//[1]bool load ( const QString & filename )
//[2]bool load ( const QByteArray & contents )
//[3]bool load ( QXmlStreamReader * contents )

HB_FUNC_STATIC( QSVGRENDERER_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSvgRenderer_load1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSvgRenderer_load2();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMREADER(1) )
  {
    QSvgRenderer_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void render ( QPainter * painter )
*/
void QSvgRenderer_render1 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->render ( PQPAINTER(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QRectF & bounds )
*/
void QSvgRenderer_render2 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->render ( PQPAINTER(1), *PQRECTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )
*/
void QSvgRenderer_render3 ()
{
  QSvgRenderer * obj = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->render ( PQPAINTER(1), PQSTRING(2), ISNIL(3)? QRectF() : *(QRectF *) _qt4xhb_itemGetPtr(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void render ( QPainter * painter )
//[2]void render ( QPainter * painter, const QRectF & bounds )
//[3]void render ( QPainter * painter, const QString & elementId, const QRectF & bounds = QRectF() )

HB_FUNC_STATIC( QSVGRENDERER_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QSvgRenderer_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQRECTF(2) )
  {
    QSvgRenderer_render2();
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISCHAR(2) && (ISQRECTF(3)||ISNIL(3)) )
  {
    QSvgRenderer_render3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
