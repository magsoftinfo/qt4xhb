/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHEADERVIEW
REQUEST QMODELINDEX
REQUEST QRECT

CLASS QTreeView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QTreeView
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD allColumnsShowFocus
   METHOD autoExpandDelay
   METHOD columnAt
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD expandsOnDoubleClick
   METHOD header
   METHOD indentation
   METHOD indexAbove
   METHOD indexBelow
   METHOD isAnimated
   METHOD isColumnHidden
   METHOD isExpanded
   METHOD isFirstColumnSpanned
   METHOD isHeaderHidden
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD itemsExpandable
   METHOD rootIsDecorated
   METHOD setAllColumnsShowFocus
   METHOD setAnimated
   METHOD setAutoExpandDelay
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setExpanded
   METHOD setExpandsOnDoubleClick
   METHOD setFirstColumnSpanned
   METHOD setHeader
   METHOD setHeaderHidden
   METHOD setIndentation
   METHOD setItemsExpandable
   METHOD setRootIsDecorated
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setUniformRowHeights
   METHOD setWordWrap
   METHOD sortByColumn
   METHOD uniformRowHeights
   METHOD wordWrap
   METHOD dataChanged
   METHOD indexAt
   METHOD keyboardSearch
   METHOD reset
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD visualRect
   METHOD collapse
   METHOD collapseAll
   METHOD expand
   METHOD expandAll
   METHOD expandToDepth
   METHOD hideColumn
   METHOD resizeColumnToContents
   METHOD showColumn
   METHOD onCollapsed
   METHOD onExpanded
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTreeView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTreeView>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTreeView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTREEVIEW_NEW )
{
  QTreeView * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTreeView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTreeView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTREEVIEW_DELETE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool allColumnsShowFocus () const
*/
HB_FUNC_STATIC( QTREEVIEW_ALLCOLUMNSSHOWFOCUS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->allColumnsShowFocus (  ) );
  }
}


/*
int autoExpandDelay () const
*/
HB_FUNC_STATIC( QTREEVIEW_AUTOEXPANDDELAY )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->autoExpandDelay (  ) );
  }
}


/*
int columnAt ( int x ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNAT )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->columnAt ( par1 ) );
  }
}


/*
int columnViewportPosition ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNVIEWPORTPOSITION )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->columnViewportPosition ( par1 ) );
  }
}


/*
int columnWidth ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNWIDTH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->columnWidth ( par1 ) );
  }
}


/*
bool expandsOnDoubleClick () const
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDSONDOUBLECLICK )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->expandsOnDoubleClick (  ) );
  }
}


/*
QHeaderView * header () const
*/
HB_FUNC_STATIC( QTREEVIEW_HEADER )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * ptr = obj->header (  );
    _qt4xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}


/*
int indentation () const
*/
HB_FUNC_STATIC( QTREEVIEW_INDENTATION )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->indentation (  ) );
  }
}


/*
QModelIndex indexAbove ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXABOVE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexAbove ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
QModelIndex indexBelow ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXBELOW )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexBelow ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool isAnimated () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISANIMATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isAnimated (  ) );
  }
}


/*
bool isColumnHidden ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISCOLUMNHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isColumnHidden ( par1 ) );
  }
}


/*
bool isExpanded ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISEXPANDED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isExpanded ( *par1 ) );
  }
}


/*
bool isFirstColumnSpanned ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISFIRSTCOLUMNSPANNED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QModelIndex * par2 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isFirstColumnSpanned ( par1, *par2 ) );
  }
}


/*
bool isHeaderHidden () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISHEADERHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isHeaderHidden (  ) );
  }
}


/*
bool isRowHidden ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISROWHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QModelIndex * par2 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isRowHidden ( par1, *par2 ) );
  }
}


/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISSORTINGENABLED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSortingEnabled (  ) );
  }
}


/*
bool itemsExpandable () const
*/
HB_FUNC_STATIC( QTREEVIEW_ITEMSEXPANDABLE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->itemsExpandable (  ) );
  }
}


/*
bool rootIsDecorated () const
*/
HB_FUNC_STATIC( QTREEVIEW_ROOTISDECORATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->rootIsDecorated (  ) );
  }
}


/*
void setAllColumnsShowFocus ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETALLCOLUMNSSHOWFOCUS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAllColumnsShowFocus ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAnimated ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETANIMATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setAnimated ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoExpandDelay ( int delay )
*/
HB_FUNC_STATIC( QTREEVIEW_SETAUTOEXPANDDELAY )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAutoExpandDelay ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnHidden ( int column, bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETCOLUMNHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setColumnHidden ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnWidth ( int column, int width )
*/
HB_FUNC_STATIC( QTREEVIEW_SETCOLUMNWIDTH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setColumnWidth ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExpanded ( const QModelIndex & index, bool expanded )
*/
HB_FUNC_STATIC( QTREEVIEW_SETEXPANDED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool par2 = hb_parl(2);
    obj->setExpanded ( *par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setExpandsOnDoubleClick ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETEXPANDSONDOUBLECLICK )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setExpandsOnDoubleClick ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFirstColumnSpanned ( int row, const QModelIndex & parent, bool span )
*/
HB_FUNC_STATIC( QTREEVIEW_SETFIRSTCOLUMNSPANNED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QModelIndex * par2 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool par3 = hb_parl(3);
    obj->setFirstColumnSpanned ( par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTREEVIEW_SETHEADER )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * par1 = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHeader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeaderHidden ( bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETHEADERHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setHeaderHidden ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIndentation ( int i )
*/
HB_FUNC_STATIC( QTREEVIEW_SETINDENTATION )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setIndentation ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemsExpandable ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETITEMSEXPANDABLE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setItemsExpandable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRootIsDecorated ( bool show )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROOTISDECORATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setRootIsDecorated ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowHidden ( int row, const QModelIndex & parent, bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROWHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QModelIndex * par2 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool par3 = hb_parl(3);
    obj->setRowHidden ( par1, *par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETSORTINGENABLED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setSortingEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUniformRowHeights ( bool uniform )
*/
HB_FUNC_STATIC( QTREEVIEW_SETUNIFORMROWHEIGHTS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setUniformRowHeights ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QTREEVIEW_SETWORDWRAP )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setWordWrap ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTREEVIEW_SORTBYCOLUMN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->sortByColumn ( par1,  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool uniformRowHeights () const
*/
HB_FUNC_STATIC( QTREEVIEW_UNIFORMROWHEIGHTS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->uniformRowHeights (  ) );
  }
}


/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QTREEVIEW_WORDWRAP )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->wordWrap (  ) );
  }
}


/*
virtual void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
*/
HB_FUNC_STATIC( QTREEVIEW_DATACHANGED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * par2 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->dataChanged ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXAT )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void keyboardSearch ( const QString & search )
*/
HB_FUNC_STATIC( QTREEVIEW_KEYBOARDSEARCH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->keyboardSearch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset ()
*/
HB_FUNC_STATIC( QTREEVIEW_RESET )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QTREEVIEW_SCROLLTO )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QTreeView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *par1,  (QTreeView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_SELECTALL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QTREEVIEW_SETMODEL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROOTINDEX )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTREEVIEW_SETSELECTIONMODEL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_VISUALRECT )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->visualRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void collapse ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_COLLAPSE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->collapse ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void collapseAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_COLLAPSEALL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->collapseAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void expand ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_EXPAND )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->expand ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void expandAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDALL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->expandAll (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void expandToDepth ( int depth )
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDTODEPTH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->expandToDepth ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hideColumn ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_HIDECOLUMN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->hideColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeColumnToContents ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_RESIZECOLUMNTOCONTENTS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resizeColumnToContents ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showColumn ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_SHOWCOLUMN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->showColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
