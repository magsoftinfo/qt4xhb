/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTERPATH
REQUEST QPIXMAP
REQUEST QPOINTF
REQUEST QRECTF
#endif

CLASS QGraphicsPixmapItem INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD offset
   METHOD pixmap
   METHOD setOffset
   METHOD setPixmap
   METHOD setShapeMode
   METHOD setTransformationMode
   METHOD shapeMode
   METHOD transformationMode
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsPixmapItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsPixmapItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
*/
void QGraphicsPixmapItem_new1()
{
  QGraphicsPixmapItem * o = new QGraphicsPixmapItem( ISNIL(1)? 0 : (QGraphicsItem *) _qt4xhb_itemGetPtr(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )
*/
void QGraphicsPixmapItem_new2()
{
  QGraphicsPixmapItem * o = new QGraphicsPixmapItem( *PQPIXMAP(1), ISNIL(2)? 0 : (QGraphicsItem *) _qt4xhb_itemGetPtr(2) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QGraphicsPixmapItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPixmapItem ( const QPixmap & pixmap, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsPixmapItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPIXMAP(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsPixmapItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_DELETE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

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
QPointF offset () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_OFFSET )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPointF * ptr = new QPointF( obj->offset() );
      _qt4xhb_createReturnClass( ptr, "QPOINTF", true );
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
QPixmap pixmap () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_PIXMAP )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPixmap * ptr = new QPixmap( obj->pixmap() );
      _qt4xhb_createReturnClass( ptr, "QPIXMAP", true );
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
void setOffset ( const QPointF & offset )
*/
void QGraphicsPixmapItem_setOffset1()
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setOffset( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOffset ( qreal x, qreal y )
*/
void QGraphicsPixmapItem_setOffset2()
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setOffset( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setOffset ( const QPointF & offset )
//[2]void setOffset ( qreal x, qreal y )

HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETOFFSET )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QGraphicsPixmapItem_setOffset1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsPixmapItem_setOffset2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETPIXMAP )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setPixmap( *PQPIXMAP(1) );
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
void setShapeMode ( ShapeMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETSHAPEMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setShapeMode( (QGraphicsPixmapItem::ShapeMode) hb_parni(1) );
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
void setTransformationMode ( Qt::TransformationMode mode )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SETTRANSFORMATIONMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTransformationMode( (Qt::TransformationMode) hb_parni(1) );
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
ShapeMode shapeMode () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SHAPEMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->shapeMode() );
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
Qt::TransformationMode transformationMode () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_TRANSFORMATIONMODE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->transformationMode() );
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
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_BOUNDINGRECT )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRect() );
      _qt4xhb_createReturnClass( ptr, "QRECTF", true );
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
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_CONTAINS )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
#endif
      RBOOL( obj->contains( *PQPOINTF(1) ) );
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
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_ISOBSCUREDBY )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQGRAPHICSITEM(1) )
    {
#endif
      RBOOL( obj->isObscuredBy( PQGRAPHICSITEM(1) ) );
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
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_OPAQUEAREA )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->opaqueArea() );
      _qt4xhb_createReturnClass( ptr, "QPAINTERPATH", true );
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
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_PAINT )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQPAINTER(1) && ISQSTYLEOPTIONGRAPHICSITEM(2) && ISQWIDGET(3) )
    {
#endif
      obj->paint( PQPAINTER(1), PQSTYLEOPTIONGRAPHICSITEM(2), PQWIDGET(3) );
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
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_SHAPE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->shape() );
      _qt4xhb_createReturnClass( ptr, "QPAINTERPATH", true );
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
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPIXMAPITEM_TYPE )
{
  QGraphicsPixmapItem * obj = (QGraphicsPixmapItem *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->type() );
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
