/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QTABLEWIDGETITEM
REQUEST QTABLEWIDGETSELECTIONRANGE
REQUEST QWIDGET
#endif

CLASS QTableWidget INHERIT QTableView

   METHOD new
   METHOD delete
   METHOD cellWidget
   METHOD closePersistentEditor
   METHOD column
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD findItems
   METHOD horizontalHeaderItem
   METHOD item
   METHOD itemAt
   METHOD openPersistentEditor
   METHOD removeCellWidget
   METHOD row
   METHOD rowCount
   METHOD selectedItems
   METHOD selectedRanges
   METHOD setCellWidget
   METHOD setColumnCount
   METHOD setCurrentCell
   METHOD setCurrentItem
   METHOD setHorizontalHeaderItem
   METHOD setHorizontalHeaderLabels
   METHOD setItem
   METHOD setItemPrototype
   METHOD setRangeSelected
   METHOD setRowCount
   METHOD setVerticalHeaderItem
   METHOD setVerticalHeaderLabels
   METHOD sortItems
   METHOD takeHorizontalHeaderItem
   METHOD takeItem
   METHOD takeVerticalHeaderItem
   METHOD verticalHeaderItem
   METHOD visualColumn
   METHOD visualItemRect
   METHOD visualRow
   METHOD clear
   METHOD clearContents
   METHOD insertColumn
   METHOD insertRow
   METHOD removeColumn
   METHOD removeRow
   METHOD scrollToItem

   METHOD onCellActivated
   METHOD onCellChanged
   METHOD onCellClicked
   METHOD onCellDoubleClicked
   METHOD onCellEntered
   METHOD onCellPressed
   METHOD onCurrentCellChanged
   METHOD onCurrentItemChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTableWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTableWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QTableWidget ( QWidget * parent = 0 )
*/
void QTableWidget_new1()
{
  QTableWidget * o = new QTableWidget( OPQWIDGET(1,0) );
  _qt4xhb_returnNewObject( o, false );
}

/*
QTableWidget ( int rows, int columns, QWidget * parent = 0 )
*/
void QTableWidget_new2()
{
  QTableWidget * o = new QTableWidget( PINT(1), PINT(2), OPQWIDGET(3,0) );
  _qt4xhb_returnNewObject( o, false );
}

//[1]QTableWidget ( QWidget * parent = 0 )
//[2]QTableWidget ( int rows, int columns, QWidget * parent = 0 )

HB_FUNC_STATIC( QTABLEWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QTableWidget_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QTableWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTABLEWIDGET_DELETE )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
QWidget * cellWidget ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QWidget * ptr = obj->cellWidget( PINT(1), PINT(2) );
      _qt4xhb_createReturnQWidgetClass( ptr, "QWIDGET" );
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
void closePersistentEditor ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLOSEPERSISTENTEDITOR )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
    {
#endif
      obj->closePersistentEditor( PQTABLEWIDGETITEM(1) );
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
int column ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_COLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
    {
#endif
      RINT( obj->column( PQTABLEWIDGETITEM(1) ) );
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
int columnCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_COLUMNCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnCount() );
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
int currentColumn () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentColumn() );
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
QTableWidgetItem * currentItem () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QTableWidgetItem * ptr = obj->currentItem();
      _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
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
int currentRow () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTROW )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentRow() );
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
void editItem ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_EDITITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
    {
#endif
      obj->editItem( PQTABLEWIDGETITEM(1) );
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
QList<QTableWidgetItem *> findItems ( const QString & text, Qt::MatchFlags flags ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_FINDITEMS )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
#endif
      QList<QTableWidgetItem *> list = obj->findItems( PQSTRING(1), (Qt::MatchFlags) hb_parni(2) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QTABLEWIDGETITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QTableWidgetItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QTABLEWIDGETITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QTableWidgetItem * horizontalHeaderItem ( int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_HORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QTableWidgetItem * ptr = obj->horizontalHeaderItem( PINT(1) );
      _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
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
QTableWidgetItem * item ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QTableWidgetItem * ptr = obj->item( PINT(1), PINT(2) );
      _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
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
QTableWidgetItem * itemAt ( const QPoint & point ) const
*/
void QTableWidget_itemAt1()
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidgetItem * ptr = obj->itemAt( *PQPOINT(1) );
    _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
  }
}

/*
QTableWidgetItem * itemAt ( int ax, int ay ) const
*/
void QTableWidget_itemAt2()
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTableWidgetItem * ptr = obj->itemAt( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
  }
}

//[1]QTableWidgetItem * itemAt ( const QPoint & point ) const
//[2]QTableWidgetItem * itemAt ( int ax, int ay ) const

HB_FUNC_STATIC( QTABLEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTableWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void openPersistentEditor ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_OPENPERSISTENTEDITOR )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
    {
#endif
      obj->openPersistentEditor( PQTABLEWIDGETITEM(1) );
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
void removeCellWidget ( int row, int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVECELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->removeCellWidget( PINT(1), PINT(2) );
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
int row ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ROW )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
    {
#endif
      RINT( obj->row( PQTABLEWIDGETITEM(1) ) );
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
int rowCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ROWCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount() );
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
QList<QTableWidgetItem *> selectedItems ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_SELECTEDITEMS )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QTableWidgetItem *> list = obj->selectedItems();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QTABLEWIDGETITEM" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QTableWidgetItem *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QTABLEWIDGETITEM", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
QList<QTableWidgetSelectionRange> selectedRanges () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_SELECTEDRANGES )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QTableWidgetSelectionRange> list = obj->selectedRanges();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QTABLEWIDGETSELECTIONRANGE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QTableWidgetSelectionRange *) new QTableWidgetSelectionRange( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QTABLEWIDGETSELECTIONRANGE", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
void setCellWidget ( int row, int column, QWidget * widget )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQWIDGET(3) )
    {
#endif
      obj->setCellWidget( PINT(1), PINT(2), PQWIDGET(3) );
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
void setColumnCount ( int columns )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCOLUMNCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setColumnCount( PINT(1) );
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
void setCurrentCell ( int row, int column )
*/
void QTableWidget_setCurrentCell1()
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCurrentCell( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
*/
void QTableWidget_setCurrentCell2()
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCurrentCell( PINT(1), PINT(2), (QItemSelectionModel::SelectionFlags) hb_parni(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCurrentCell ( int row, int column )
//[2]void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTCELL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentCell1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTableWidget_setCurrentCell2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentItem ( QTableWidgetItem * item )
*/
void QTableWidget_setCurrentItem1()
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCurrentItem( PQTABLEWIDGETITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
void QTableWidget_setCurrentItem2()
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCurrentItem( PQTABLEWIDGETITEM(1), (QItemSelectionModel::SelectionFlags) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setCurrentItem ( QTableWidgetItem * item )
//[2]void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTABLEWIDGETITEM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHorizontalHeaderItem ( int column, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETHORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQTABLEWIDGETITEM(2) )
    {
#endif
      obj->setHorizontalHeaderItem( PINT(1), PQTABLEWIDGETITEM(2) );
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
void setHorizontalHeaderLabels ( const QStringList & labels )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETHORIZONTALHEADERLABELS )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setHorizontalHeaderLabels( PQSTRINGLIST(1) );
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
void setItem ( int row, int column, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQTABLEWIDGETITEM(3) )
    {
#endif
      obj->setItem( PINT(1), PINT(2), PQTABLEWIDGETITEM(3) );
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
void setItemPrototype ( const QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETITEMPROTOTYPE )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
    {
#endif
      obj->setItemPrototype( PQTABLEWIDGETITEM(1) );
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
void setRangeSelected ( const QTableWidgetSelectionRange & range, bool select )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETRANGESELECTED )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQTABLEWIDGETSELECTIONRANGE(1) && ISLOG(2) )
    {
#endif
      obj->setRangeSelected( *PQTABLEWIDGETSELECTIONRANGE(1), PBOOL(2) );
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
void setRowCount ( int rows )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETROWCOUNT )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setRowCount( PINT(1) );
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
void setVerticalHeaderItem ( int row, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETVERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQTABLEWIDGETITEM(2) )
    {
#endif
      obj->setVerticalHeaderItem( PINT(1), PQTABLEWIDGETITEM(2) );
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
void setVerticalHeaderLabels ( const QStringList & labels )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETVERTICALHEADERLABELS )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setVerticalHeaderLabels( PQSTRINGLIST(1) );
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
void sortItems ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SORTITEMS )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      obj->sortItems( PINT(1), ISNIL(2)? (Qt::SortOrder) Qt::AscendingOrder : (Qt::SortOrder) hb_parni(2) );
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
QTableWidgetItem * takeHorizontalHeaderItem ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEHORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QTableWidgetItem * ptr = obj->takeHorizontalHeaderItem( PINT(1) );
      _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
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
QTableWidgetItem * takeItem ( int row, int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      QTableWidgetItem * ptr = obj->takeItem( PINT(1), PINT(2) );
      _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
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
QTableWidgetItem * takeVerticalHeaderItem ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEVERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QTableWidgetItem * ptr = obj->takeVerticalHeaderItem( PINT(1) );
      _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
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
QTableWidgetItem * verticalHeaderItem ( int row ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QTableWidgetItem * ptr = obj->verticalHeaderItem( PINT(1) );
      _qt4xhb_createReturnClass( ptr, "QTABLEWIDGETITEM", false );
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
int visualColumn ( int logicalColumn ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->visualColumn( PINT(1) ) );
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
QRect visualItemRect ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALITEMRECT )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
    {
#endif
      QRect * ptr = new QRect( obj->visualItemRect( PQTABLEWIDGETITEM(1) ) );
      _qt4xhb_createReturnClass( ptr, "QRECT", true );
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
int visualRow ( int logicalRow ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALROW )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RINT( obj->visualRow( PINT(1) ) );
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
void clear ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLEAR )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
void clearContents ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLEARCONTENTS )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearContents();
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
void insertColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_INSERTCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->insertColumn( PINT(1) );
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
void insertRow ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_INSERTROW )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->insertRow( PINT(1) );
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
void removeColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVECOLUMN )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->removeColumn( PINT(1) );
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
void removeRow ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVEROW )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->removeRow( PINT(1) );
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
void scrollToItem ( const QTableWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SCROLLTOITEM )
{
  QTableWidget * obj = (QTableWidget *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQTABLEWIDGETITEM(1) && ISOPTNUM(2) )
    {
#endif
      obj->scrollToItem( PQTABLEWIDGETITEM(1), ISNIL(2)? (QAbstractItemView::ScrollHint) QAbstractItemView::EnsureVisible : (QAbstractItemView::ScrollHint) hb_parni(2) );
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

void QTableWidgetSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QTABLEWIDGET_ONCELLACTIVATED )
{
  QTableWidgetSlots_connect_signal( "cellActivated(int,int)", "cellActivated(int,int)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONCELLCHANGED )
{
  QTableWidgetSlots_connect_signal( "cellChanged(int,int)", "cellChanged(int,int)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONCELLCLICKED )
{
  QTableWidgetSlots_connect_signal( "cellClicked(int,int)", "cellClicked(int,int)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONCELLDOUBLECLICKED )
{
  QTableWidgetSlots_connect_signal( "cellDoubleClicked(int,int)", "cellDoubleClicked(int,int)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONCELLENTERED )
{
  QTableWidgetSlots_connect_signal( "cellEntered(int,int)", "cellEntered(int,int)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONCELLPRESSED )
{
  QTableWidgetSlots_connect_signal( "cellPressed(int,int)", "cellPressed(int,int)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONCURRENTCELLCHANGED )
{
  QTableWidgetSlots_connect_signal( "currentCellChanged(int,int,int,int)", "currentCellChanged(int,int,int,int)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONCURRENTITEMCHANGED )
{
  QTableWidgetSlots_connect_signal( "currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)", "currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONITEMACTIVATED )
{
  QTableWidgetSlots_connect_signal( "itemActivated(QTableWidgetItem*)", "itemActivated(QTableWidgetItem*)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONITEMCHANGED )
{
  QTableWidgetSlots_connect_signal( "itemChanged(QTableWidgetItem*)", "itemChanged(QTableWidgetItem*)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONITEMCLICKED )
{
  QTableWidgetSlots_connect_signal( "itemClicked(QTableWidgetItem*)", "itemClicked(QTableWidgetItem*)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONITEMDOUBLECLICKED )
{
  QTableWidgetSlots_connect_signal( "itemDoubleClicked(QTableWidgetItem*)", "itemDoubleClicked(QTableWidgetItem*)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONITEMENTERED )
{
  QTableWidgetSlots_connect_signal( "itemEntered(QTableWidgetItem*)", "itemEntered(QTableWidgetItem*)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONITEMPRESSED )
{
  QTableWidgetSlots_connect_signal( "itemPressed(QTableWidgetItem*)", "itemPressed(QTableWidgetItem*)" );
}

HB_FUNC_STATIC( QTABLEWIDGET_ONITEMSELECTIONCHANGED )
{
  QTableWidgetSlots_connect_signal( "itemSelectionChanged()", "itemSelectionChanged()" );
}

#pragma ENDDUMP
