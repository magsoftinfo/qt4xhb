/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QPlainTextDocumentLayout INHERIT QAbstractTextDocumentLayout

   METHOD new
   METHOD delete
   METHOD cursorWidth
   METHOD ensureBlockLayout
   METHOD requestUpdate
   METHOD setCursorWidth
   METHOD blockBoundingRect
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD hitTest
   METHOD pageCount

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlainTextDocumentLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPlainTextDocumentLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPlainTextDocumentLayout ( QTextDocument * document )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_NEW )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QPlainTextDocumentLayout * o = new QPlainTextDocumentLayout ( PQTEXTDOCUMENT(1) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DELETE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int cursorWidth () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_CURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->cursorWidth () );
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
void ensureBlockLayout ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_ENSUREBLOCKLAYOUT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
    {
#endif
      obj->ensureBlockLayout ( *PQTEXTBLOCK(1) );
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
void requestUpdate ()
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_REQUESTUPDATE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->requestUpdate ();
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
void setCursorWidth ( int width )
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_SETCURSORWIDTH )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCursorWidth ( PINT(1) );
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
virtual QRectF blockBoundingRect ( const QTextBlock & block ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTBLOCK(1) )
    {
#endif
      QRectF * ptr = new QRectF( obj->blockBoundingRect ( *PQTEXTBLOCK(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
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
virtual QSizeF documentSize () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_DOCUMENTSIZE )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSizeF * ptr = new QSizeF( obj->documentSize () );
      _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
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
virtual QRectF frameBoundingRect ( QTextFrame * ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTFRAME(1) )
    {
#endif
      QRectF * ptr = new QRectF( obj->frameBoundingRect ( PQTEXTFRAME(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
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
virtual int hitTest ( const QPointF &, Qt::HitTestAccuracy ) const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_HITTEST )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
    {
#endif
      RINT( obj->hitTest ( *PQPOINTF(1), (Qt::HitTestAccuracy) hb_parni(2) ) );
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
virtual int pageCount () const
*/
HB_FUNC_STATIC( QPLAINTEXTDOCUMENTLAYOUT_PAGECOUNT )
{
  QPlainTextDocumentLayout * obj = (QPlainTextDocumentLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->pageCount () );
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
