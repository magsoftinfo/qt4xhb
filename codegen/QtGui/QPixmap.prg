/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QBITMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QIMAGE
REQUEST QTRANSFORM
#endif

CLASS QPixmap INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD cacheKey
   METHOD convertFromImage
   METHOD copy1
   METHOD copy2
   METHOD copy
   METHOD createHeuristicMask
   METHOD createMaskFromColor1
   METHOD createMaskFromColor2
   METHOD createMaskFromColor
   METHOD depth
   METHOD detach
   METHOD fill1
   METHOD fill2
   METHOD fill3
   METHOD fill
   METHOD hasAlpha
   METHOD hasAlphaChannel
   METHOD height
   METHOD isNull
   METHOD isQBitmap
   METHOD load
   METHOD loadFromData1
   METHOD loadFromData2
   METHOD loadFromData
   METHOD mask
   METHOD rect
   METHOD save1
   METHOD save2
   METHOD save
   METHOD scaled1
   METHOD scaled2
   METHOD scaled
   METHOD scaledToHeight
   METHOD scaledToWidth
   METHOD scroll1
   METHOD scroll2
   METHOD scroll
   METHOD setMask
   METHOD size
   METHOD swap
   METHOD toImage
   METHOD transformed1
   METHOD transformed
   METHOD width
   METHOD defaultDepth
   METHOD fromImage
   METHOD fromImageReader
   METHOD grabWidget1
   METHOD grabWidget2
   METHOD grabWidget
   METHOD grabWindow
   METHOD trueMatrix1
   METHOD trueMatrix

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPixmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QPixmap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QBitmap>

/*
QPixmap ()
*/
HB_FUNC_STATIC( QPIXMAP_NEW1 )
{
  QPixmap * o = new QPixmap ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPixmap ( int width, int height )
*/
HB_FUNC_STATIC( QPIXMAP_NEW2 )
{
  QPixmap * o = new QPixmap ( PINT(1), PINT(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_NEW3 )
{
  int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
  QPixmap * o = new QPixmap ( PQSTRING(1), (const char *) ISNIL(2)? 0 : hb_parc(2), (Qt::ImageConversionFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QPIXMAP_NEW5 )
{
  QPixmap * o = new QPixmap ( *PQPIXMAP(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPixmap ( const QSize & size )
*/
HB_FUNC_STATIC( QPIXMAP_NEW6 )
{
  QPixmap * o = new QPixmap ( *PQSIZE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPixmap ()
//[2]QPixmap ( int width, int height )
//[3]QPixmap ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[4]QPixmap ( const char * const[] xpm )
//[5]QPixmap ( const QPixmap & pixmap )
//[6]QPixmap ( const QSize & size )

HB_FUNC_STATIC( QPIXMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QPIXMAP_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPIXMAP_DELETE )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qint64 cacheKey () const
*/
HB_FUNC_STATIC( QPIXMAP_CACHEKEY )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->cacheKey () );
  }
}

/*
bool convertFromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_CONVERTFROMIMAGE )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
    RBOOL( obj->convertFromImage ( *PQIMAGE(1), (Qt::ImageConversionFlags) par2 ) );
  }
}

/*
QPixmap copy ( const QRect & rectangle = QRect() ) const
*/
HB_FUNC_STATIC( QPIXMAP_COPY1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect par1 = ISNIL(1)? QRect() : *(QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPixmap * ptr = new QPixmap( obj->copy ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap copy ( int x, int y, int width, int height ) const
*/
HB_FUNC_STATIC( QPIXMAP_COPY2 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->copy ( PINT(1), PINT(2), PINT(3), PINT(4) ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

//[1]QPixmap copy ( const QRect & rectangle = QRect() ) const
//[2]QPixmap copy ( int x, int y, int width, int height ) const

HB_FUNC_STATIC( QPIXMAP_COPY )
{
  if( ISBETWEEN(0,1) && (ISQRECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_COPY1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QPIXMAP_COPY2 );
  }
}

/*
QBitmap createHeuristicMask ( bool clipTight = true ) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEHEURISTICMASK )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBitmap * ptr = new QBitmap( obj->createHeuristicMask ( OPBOOL(1,true) ) );
    _qt4xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}

/*
QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    int par2 = hb_parni(2);
    QBitmap * ptr = new QBitmap( obj->createMaskFromColor ( par1, (Qt::MaskMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}

/*
QBitmap createMaskFromColor ( const QColor & maskColor ) const
*/
HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR2 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    QBitmap * ptr = new QBitmap( obj->createMaskFromColor ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}

//[1]QBitmap createMaskFromColor ( const QColor & maskColor, Qt::MaskMode mode ) const
//[2]QBitmap createMaskFromColor ( const QColor & maskColor ) const

HB_FUNC_STATIC( QPIXMAP_CREATEMASKFROMCOLOR )
{
  if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_CREATEMASKFROMCOLOR1 );
  }
  else if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_CREATEMASKFROMCOLOR2 );
  }
}

/*
int depth () const
*/
HB_FUNC_STATIC( QPIXMAP_DEPTH )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->depth () );
  }
}

/*
void detach ()
*/
HB_FUNC_STATIC( QPIXMAP_DETACH )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->detach ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( const QColor & color = Qt::white )
*/
HB_FUNC_STATIC( QPIXMAP_FILL1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par1 = ISNIL(1)? Qt::white : ISOBJECT(1)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(1));
    obj->fill ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( const QWidget * widget, const QPoint & offset )
*/
HB_FUNC_STATIC( QPIXMAP_FILL2 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->fill ( par1, *PQPOINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fill ( const QWidget * widget, int x, int y )
*/
HB_FUNC_STATIC( QPIXMAP_FILL3 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QWidget * par1 = (const QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->fill ( par1, PINT(2), PINT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void fill ( const QColor & color = Qt::white )
//[2]void fill ( const QWidget * widget, const QPoint & offset )
//[3]void fill ( const QWidget * widget, int x, int y )

HB_FUNC_STATIC( QPIXMAP_FILL )
{
  if( ISBETWEEN(0,1) && (ISQCOLOR(1)||ISCHAR(1)||ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL2 );
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPIXMAP_FILL3 );
  }
}

/*
bool hasAlpha () const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHA )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAlpha () );
  }
}

/*
bool hasAlphaChannel () const
*/
HB_FUNC_STATIC( QPIXMAP_HASALPHACHANNEL )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasAlphaChannel () );
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QPIXMAP_HEIGHT )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->height () );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QPIXMAP_ISNULL )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool isQBitmap () const
*/
HB_FUNC_STATIC( QPIXMAP_ISQBITMAP )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isQBitmap () );
  }
}

/*
bool load ( const QString & fileName, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_LOAD )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
    RBOOL( obj->load ( PQSTRING(1), (const char *) ISNIL(2)? 0 : hb_parc(2), (Qt::ImageConversionFlags) par3 ) );
  }
}

/*
bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const uchar * par1 = (const uchar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par4 = ISNIL(4)? (int) Qt::AutoColor : hb_parni(4);
    RBOOL( obj->loadFromData ( par1, PUINT(2), (const char *) ISNIL(3)? 0 : hb_parc(3), (Qt::ImageConversionFlags) par4 ) );
  }
}

/*
bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA2 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::AutoColor : hb_parni(3);
    RBOOL( obj->loadFromData ( *PQBYTEARRAY(1), (const char *) ISNIL(2)? 0 : hb_parc(2), (Qt::ImageConversionFlags) par3 ) );
  }
}

//[1]bool loadFromData ( const uchar * data, uint len, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )
//[2]bool loadFromData ( const QByteArray & data, const char * format = 0, Qt::ImageConversionFlags flags = Qt::AutoColor )

HB_FUNC_STATIC( QPIXMAP_LOADFROMDATA )
{
  if( ISBETWEEN(2,4) && ISCHAR(1) && ISNUM(2) && (ISCHAR(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_LOADFROMDATA1 );
  }
  else if( ISBETWEEN(1,3) && ISQBYTEARRAY(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_LOADFROMDATA2 );
  }
}

/*
QBitmap mask () const
*/
HB_FUNC_STATIC( QPIXMAP_MASK )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBitmap * ptr = new QBitmap( obj->mask () );
    _qt4xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}

/*
QRect rect () const
*/
HB_FUNC_STATIC( QPIXMAP_RECT )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
*/
HB_FUNC_STATIC( QPIXMAP_SAVE1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->save ( PQSTRING(1), (const char *) ISNIL(2)? 0 : hb_parc(2), OPINT(3,-1) ) );
  }
}

/*
bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const
*/
HB_FUNC_STATIC( QPIXMAP_SAVE2 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->save ( PQIODEVICE(1), (const char *) ISNIL(2)? 0 : hb_parc(2), OPINT(3,-1) ) );
  }
}

//[1]bool save ( const QString & fileName, const char * format = 0, int quality = -1 ) const
//[2]bool save ( QIODevice * device, const char * format = 0, int quality = -1 ) const

HB_FUNC_STATIC( QPIXMAP_SAVE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SAVE1 );
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SAVE2 );
  }
}

/*
QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALED1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::IgnoreAspectRatio : hb_parni(2);
    int par3 = ISNIL(3)? (int) Qt::FastTransformation : hb_parni(3);
    QPixmap * ptr = new QPixmap( obj->scaled ( *PQSIZE(1), (Qt::AspectRatioMode) par2, (Qt::TransformationMode) par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALED2 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) Qt::IgnoreAspectRatio : hb_parni(3);
    int par4 = ISNIL(4)? (int) Qt::FastTransformation : hb_parni(4);
    QPixmap * ptr = new QPixmap( obj->scaled ( PINT(1), PINT(2), (Qt::AspectRatioMode) par3, (Qt::TransformationMode) par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

//[1]QPixmap scaled ( const QSize & size, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const
//[2]QPixmap scaled ( int width, int height, Qt::AspectRatioMode aspectRatioMode = Qt::IgnoreAspectRatio, Qt::TransformationMode transformMode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QPIXMAP_SCALED )
{
  if( ISBETWEEN(1,3) && ISQSIZE(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCALED1 );
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCALED2 );
  }
}

/*
QPixmap scaledToHeight ( int height, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOHEIGHT )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->scaledToHeight ( PINT(1), (Qt::TransformationMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
QPixmap scaledToWidth ( int width, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_SCALEDTOWIDTH )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->scaledToWidth ( PINT(1), (Qt::TransformationMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
*/
HB_FUNC_STATIC( QPIXMAP_SCROLL1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par7 = ISNIL(7)? 0 : (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->scroll ( PINT(1), PINT(2), PINT(3), PINT(4), PINT(5), PINT(6), par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )
*/
HB_FUNC_STATIC( QPIXMAP_SCROLL2 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par4 = ISNIL(4)? 0 : (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->scroll ( PINT(1), PINT(2), *PQRECT(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void scroll ( int dx, int dy, int x, int y, int width, int height, QRegion * exposed = 0 )
//[2]void scroll ( int dx, int dy, const QRect & rect, QRegion * exposed = 0 )

HB_FUNC_STATIC( QPIXMAP_SCROLL )
{
  if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && (ISQREGION(7)||ISNIL(7)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCROLL1 );
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISQRECT(3) && (ISQREGION(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QPIXMAP_SCROLL2 );
  }
}

/*
void setMask ( const QBitmap & mask )
*/
HB_FUNC_STATIC( QPIXMAP_SETMASK )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMask ( *PQBITMAP(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QPIXMAP_SIZE )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void swap ( QPixmap & other )
*/
HB_FUNC_STATIC( QPIXMAP_SWAP )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QImage toImage () const
*/
HB_FUNC_STATIC( QPIXMAP_TOIMAGE )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QImage * ptr = new QImage( obj->toImage () );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}

/*
QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
*/
HB_FUNC_STATIC( QPIXMAP_TRANSFORMED1 )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::FastTransformation : hb_parni(2);
    QPixmap * ptr = new QPixmap( obj->transformed ( *PQTRANSFORM(1), (Qt::TransformationMode) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

//[1]QPixmap transformed ( const QTransform & transform, Qt::TransformationMode mode = Qt::FastTransformation ) const
//[2]QPixmap transformed ( const QMatrix & matrix, Qt::TransformationMode mode = Qt::FastTransformation ) const

HB_FUNC_STATIC( QPIXMAP_TRANSFORMED )
{
  if( ISBETWEEN(1,2) && ISQTRANSFORM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRANSFORMED1 );
  }
  //else if( ISBETWEEN(1,2) && ISQMATRIX(1) && (ISNUM(2)||ISNIL(2)) )
  //{
  //  HB_FUNC_EXEC( QPIXMAP_TRANSFORMED2 );
  //}
}

/*
int width () const
*/
HB_FUNC_STATIC( QPIXMAP_WIDTH )
{
  QPixmap * obj = (QPixmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width () );
  }
}

//operator QVariant () const
//bool operator! () const
//QPixmap & operator= ( const QPixmap & pixmap )

//Static Public Members

/*
int defaultDepth ()
*/
HB_FUNC_STATIC( QPIXMAP_DEFAULTDEPTH )
{
  RINT( QPixmap::defaultDepth () );
}

/*
QPixmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGE )
{
  int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
  QPixmap * ptr = new QPixmap( QPixmap::fromImage ( *PQIMAGE(1), (Qt::ImageConversionFlags) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

/*
QPixmap fromImageReader ( QImageReader * imageReader, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QPIXMAP_FROMIMAGEREADER )
{
  QImageReader * par1 = (QImageReader *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
  QPixmap * ptr = new QPixmap( QPixmap::fromImageReader ( par1, (Qt::ImageConversionFlags) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

/*
QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
*/
HB_FUNC_STATIC( QPIXMAP_GRABWIDGET1 )
{
  QPixmap * ptr = new QPixmap( QPixmap::grabWidget ( PQWIDGET(1), *PQRECT(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

/*
QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )
*/
HB_FUNC_STATIC( QPIXMAP_GRABWIDGET2 )
{
  QPixmap * ptr = new QPixmap( QPixmap::grabWidget ( PQWIDGET(1), OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

//[1]QPixmap grabWidget ( QWidget * widget, const QRect & rectangle )
//[2]QPixmap grabWidget ( QWidget * widget, int x = 0, int y = 0, int width = -1, int height = -1 )

HB_FUNC_STATIC( QPIXMAP_GRABWIDGET )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQRECT(2) )
  {
    HB_FUNC_EXEC( QPIXMAP_GRABWIDGET1 );
  }
  else if( ISBETWEEN(1,5) && ISQWIDGET(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QPIXMAP_GRABWIDGET2 );
  }
}

/*
QPixmap grabWindow ( WId window, int x = 0, int y = 0, int width = -1, int height = -1 )
*/
HB_FUNC_STATIC( QPIXMAP_GRABWINDOW )
{
  WId par1 = (WId) hb_parptr(1);
  QPixmap * ptr = new QPixmap( QPixmap::grabWindow ( par1, OPINT(2,0), OPINT(3,0), OPINT(4,-1), OPINT(5,-1) ) );
  _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
}

/*
QTransform trueMatrix ( const QTransform & matrix, int width, int height )
*/
HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX1 )
{
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QTransform * ptr = new QTransform( QPixmap::trueMatrix ( *PQTRANSFORM(1), par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}

//[1]QTransform trueMatrix ( const QTransform & matrix, int width, int height )
//[2]QMatrix trueMatrix ( const QMatrix & m, int w, int h )

HB_FUNC_STATIC( QPIXMAP_TRUEMATRIX )
{
  if( ISNUMPAR(3) && ISQTRANSFORM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPIXMAP_TRUEMATRIX1 );
  }
  //else if( ISNUMPAR(3) && ISQMATRIX(1) && ISNUM(2) && ISNUM(3) )
  //{
  //  HB_FUNC_EXEC( QPIXMAP_TRUEMATRIX2 );
  //}
}

#pragma ENDDUMP