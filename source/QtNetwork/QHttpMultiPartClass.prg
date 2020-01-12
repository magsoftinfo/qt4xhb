/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QHttpMultiPart INHERIT QObject

   METHOD new
   METHOD delete
   METHOD append
   METHOD boundary
   METHOD setBoundary
   METHOD setContentType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHttpMultiPart
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHttpMultiPart>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHttpMultiPart ( QObject * parent = 0 )
*/
void QHttpMultiPart_new1 ()
{
  QHttpMultiPart * o = new QHttpMultiPart ( OPQOBJECT(1,0) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )
*/
void QHttpMultiPart_new2 ()
{
  QHttpMultiPart * o = new QHttpMultiPart ( (QHttpMultiPart::ContentType) hb_parni(1), OPQOBJECT(2,0) );
  _qt4xhb_returnNewObject( o, false );
}

//[1]QHttpMultiPart ( QObject * parent = 0 )
//[2]QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHttpMultiPart_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHttpMultiPart_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHTTPMULTIPART_DELETE )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void append ( const QHttpPart & httpPart )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_APPEND )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQHTTPPART(1) )
    {
#endif
      obj->append ( *PQHTTPPART(1) );
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
QByteArray boundary () const
*/
HB_FUNC_STATIC( QHTTPMULTIPART_BOUNDARY )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->boundary () );
      _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
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
void setBoundary ( const QByteArray & boundary )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETBOUNDARY )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->setBoundary ( *PQBYTEARRAY(1) );
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
void setContentType ( ContentType contentType )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETCONTENTTYPE )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setContentType ( (QHttpMultiPart::ContentType) hb_parni(1) );
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

#pragma ENDDUMP
