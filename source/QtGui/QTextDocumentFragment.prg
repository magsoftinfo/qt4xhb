/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTextDocumentFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toHtml
   METHOD toPlainText
   METHOD fromHtml
   METHOD fromPlainText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTextDocumentFragment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTextDocumentFragment>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextDocumentFragment ()
*/
void QTextDocumentFragment_new1()
{
  QTextDocumentFragment * o = new QTextDocumentFragment();
  _qt4xhb_returnNewObject( o, true );
}

/*
QTextDocumentFragment ( const QTextDocument * document )
*/
void QTextDocumentFragment_new2()
{
  QTextDocumentFragment * o = new QTextDocumentFragment( PQTEXTDOCUMENT(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QTextDocumentFragment ( const QTextCursor & cursor )
*/
void QTextDocumentFragment_new3()
{
  QTextDocumentFragment * o = new QTextDocumentFragment( *PQTEXTCURSOR(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QTextDocumentFragment ( const QTextDocumentFragment & other )
*/
void QTextDocumentFragment_new4()
{
  QTextDocumentFragment * o = new QTextDocumentFragment( *PQTEXTDOCUMENTFRAGMENT(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QTextDocumentFragment ()
//[2]QTextDocumentFragment ( const QTextDocument * document )
//[3]QTextDocumentFragment ( const QTextCursor & cursor )
//[4]QTextDocumentFragment ( const QTextDocumentFragment & other )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextDocumentFragment_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextDocumentFragment_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextDocumentFragment_new3();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    QTextDocumentFragment_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_DELETE )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt4xhb_itemGetPtrStackSelfItem();

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
bool isEmpty () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_ISEMPTY )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
QString toHtml ( const QByteArray & encoding ) const
*/
void QTextDocumentFragment_toHtml1()
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toHtml( *PQBYTEARRAY(1) ) );
  }
}

/*
QString toHtml () const
*/
void QTextDocumentFragment_toHtml2()
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toHtml() );
  }
}

//[1]QString toHtml ( const QByteArray & encoding ) const
//[2]QString toHtml () const

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTextDocumentFragment_toHtml1();
  }
  else if( ISNUMPAR(0) )
  {
    QTextDocumentFragment_toHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString toPlainText () const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOPLAINTEXT )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toPlainText() );
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
static QTextDocumentFragment fromHtml ( const QString & text )
*/
void QTextDocumentFragment_fromHtml1()
{

  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml( PQSTRING(1) ) );
  _qt4xhb_createReturnClass( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}

/*
static QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )
*/
void QTextDocumentFragment_fromHtml2()
{

  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml( PQSTRING(1), PQTEXTDOCUMENT(2) ) );
  _qt4xhb_createReturnClass( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}

//[1]QTextDocumentFragment fromHtml ( const QString & text )
//[2]QTextDocumentFragment fromHtml ( const QString & text, const QTextDocument * resourceProvider )

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextDocumentFragment_fromHtml1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQTEXTDOCUMENT(2) )
  {
    QTextDocumentFragment_fromHtml2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QTextDocumentFragment fromPlainText ( const QString & plainText )
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMPLAINTEXT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromPlainText( PQSTRING(1) ) );
    _qt4xhb_createReturnClass( ptr, "QTEXTDOCUMENTFRAGMENT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
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

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEWFROM );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
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
