/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCURSOR
REQUEST QTEXTTABLECELL
REQUEST QTEXTTABLEFORMAT
#endif

CLASS QTextTable INHERIT QTextFrame

   METHOD delete
   METHOD appendColumns
   METHOD appendRows
   METHOD cellAt
   METHOD columns
   METHOD format
   METHOD insertColumns
   METHOD insertRows
   METHOD mergeCells
   METHOD removeColumns
   METHOD removeRows
   METHOD resize
   METHOD rowEnd
   METHOD rowStart
   METHOD rows
   METHOD setFormat
   METHOD splitCell

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTextTable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtGui/QTextCursor>

HB_FUNC_STATIC( QTEXTTABLE_DELETE )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void appendColumns ( int count )
*/
HB_FUNC_STATIC( QTEXTTABLE_APPENDCOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->appendColumns ( PINT(1) );
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
void appendRows ( int count )
*/
HB_FUNC_STATIC( QTEXTTABLE_APPENDROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->appendRows ( PINT(1) );
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
QTextTableCell cellAt ( int row, int column ) const
*/
void QTextTable_cellAt1 ()
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( PINT(1), PINT(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL", true );
  }
}

/*
QTextTableCell cellAt ( int position ) const
*/
void QTextTable_cellAt2 ()
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( PINT(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL", true );
  }
}

/*
QTextTableCell cellAt ( const QTextCursor & cursor ) const
*/
void QTextTable_cellAt3 ()
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( *PQTEXTCURSOR(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL", true );
  }
}

//[1]QTextTableCell cellAt ( int row, int column ) const
//[2]QTextTableCell cellAt ( int position ) const
//[3]QTextTableCell cellAt ( const QTextCursor & cursor ) const

HB_FUNC_STATIC( QTEXTTABLE_CELLAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextTable_cellAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextTable_cellAt2();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_cellAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int columns () const
*/
HB_FUNC_STATIC( QTEXTTABLE_COLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columns () );
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
QTextTableFormat format () const
*/
HB_FUNC_STATIC( QTEXTTABLE_FORMAT )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTextTableFormat * ptr = new QTextTableFormat( obj->format () );
      _qt4xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT", true );
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
void insertColumns ( int index, int columns )
*/
HB_FUNC_STATIC( QTEXTTABLE_INSERTCOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->insertColumns ( PINT(1), PINT(2) );
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
void insertRows ( int index, int rows )
*/
HB_FUNC_STATIC( QTEXTTABLE_INSERTROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->insertRows ( PINT(1), PINT(2) );
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
void mergeCells ( int row, int column, int numRows, int numCols )
*/
void QTextTable_mergeCells1 ()
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->mergeCells ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void mergeCells ( const QTextCursor & cursor )
*/
void QTextTable_mergeCells2 ()
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->mergeCells ( *PQTEXTCURSOR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void mergeCells ( int row, int column, int numRows, int numCols )
//[2]void mergeCells ( const QTextCursor & cursor )

HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTextTable_mergeCells1();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_mergeCells2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void removeColumns ( int index, int columns )
*/
HB_FUNC_STATIC( QTEXTTABLE_REMOVECOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->removeColumns ( PINT(1), PINT(2) );
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
void removeRows ( int index, int rows )
*/
HB_FUNC_STATIC( QTEXTTABLE_REMOVEROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->removeRows ( PINT(1), PINT(2) );
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
void resize ( int rows, int columns )
*/
HB_FUNC_STATIC( QTEXTTABLE_RESIZE )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->resize ( PINT(1), PINT(2) );
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
QTextCursor rowEnd ( const QTextCursor & cursor ) const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWEND )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
    {
#endif
      QTextCursor * ptr = new QTextCursor( obj->rowEnd ( *PQTEXTCURSOR(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
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
QTextCursor rowStart ( const QTextCursor & cursor ) const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWSTART )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
    {
#endif
      QTextCursor * ptr = new QTextCursor( obj->rowStart ( *PQTEXTCURSOR(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
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
int rows () const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rows () );
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
void setFormat ( const QTextTableFormat & format )
*/
HB_FUNC_STATIC( QTEXTTABLE_SETFORMAT )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTEXTTABLEFORMAT(1) )
    {
#endif
      obj->setFormat ( *PQTEXTTABLEFORMAT(1) );
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
void splitCell ( int row, int column, int numRows, int numCols )
*/
HB_FUNC_STATIC( QTEXTTABLE_SPLITCELL )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
#endif
      obj->splitCell ( PINT(1), PINT(2), PINT(3), PINT(4) );
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
