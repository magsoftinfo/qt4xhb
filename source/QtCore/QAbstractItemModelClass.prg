/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QMIMEDATA
REQUEST QSIZE

CLASS QAbstractItemModel INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractItemModel
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD buddy
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD dropMimeData
   METHOD fetchMore
   METHOD flags
   METHOD hasChildren
   METHOD hasIndex
   METHOD headerData
   METHOD index
   METHOD insertColumn
   METHOD insertColumns
   METHOD insertRow
   METHOD insertRows
   METHOD match
   METHOD mimeData
   METHOD mimeTypes
   METHOD parent
   METHOD removeColumn
   METHOD removeColumns
   METHOD removeRow
   METHOD removeRows
   METHOD rowCount
   METHOD setData
   METHOD setHeaderData
   METHOD setSupportedDragActions
   METHOD sibling
   METHOD sort
   METHOD span
   METHOD supportedDragActions
   METHOD supportedDropActions
   METHOD revert
   METHOD submit
   METHOD onColumnsAboutToBeInserted
   METHOD onColumnsAboutToBeMoved
   METHOD onColumnsAboutToBeRemoved
   METHOD onColumnsInserted
   METHOD onColumnsMoved
   METHOD onColumnsRemoved
   METHOD onDataChanged
   METHOD onHeaderDataChanged
   METHOD onLayoutAboutToBeChanged
   METHOD onLayoutChanged
   METHOD onModelAboutToBeReset
   METHOD onModelReset
   METHOD onRowsAboutToBeInserted
   METHOD onRowsAboutToBeMoved
   METHOD onRowsAboutToBeRemoved
   METHOD onRowsInserted
   METHOD onRowsMoved
   METHOD onRowsRemoved
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAbstractItemModel>

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

#include <QStringList>
#include <QSize>


HB_FUNC_STATIC( QABSTRACTITEMMODEL_DELETE )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QModelIndex buddy ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_BUDDY )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->buddy ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual bool canFetchMore ( const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_CANFETCHMORE )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->canFetchMore ( *par1 ) );
  }
}


/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_COLUMNCOUNT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
virtual QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_DATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->data ( *par1, ISNIL(2)? Qt::DisplayRole : hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_DROPMIMEDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMimeData * par1 = (const QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * par5 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->dropMimeData ( par1,  (Qt::DropAction) hb_parni(2), hb_parni(3), hb_parni(4), *par5 ) );
  }
}


/*
virtual void fetchMore ( const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_FETCHMORE )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->fetchMore ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual Qt::ItemFlags flags ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_FLAGS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( (int) obj->flags ( *par1 ) );
  }
}


/*
virtual bool hasChildren ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HASCHILDREN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->hasChildren ( par1 ) );
  }
}


/*
bool hasIndex ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HASINDEX )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->hasIndex ( hb_parni(1), hb_parni(2), par3 ) );
  }
}


/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_HEADERDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->headerData ( hb_parni(1),  (Qt::Orientation) hb_parni(2), ISNIL(3)? Qt::DisplayRole : hb_parni(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INDEX )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->index ( hb_parni(1), hb_parni(2), par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool insertColumn ( int column, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTCOLUMN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->insertColumn ( hb_parni(1), par2 ) );
  }
}


/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTCOLUMNS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->insertColumns ( hb_parni(1), hb_parni(2), par3 ) );
  }
}


/*
bool insertRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTROW )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->insertRow ( hb_parni(1), par2 ) );
  }
}


/*
virtual bool insertRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_INSERTROWS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->insertRows ( hb_parni(1), hb_parni(2), par3 ) );
  }
}



/*
virtual QModelIndexList match ( const QModelIndex & start, int role, const QVariant & value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags( Qt::MatchStartsWith | Qt::MatchWrap ) ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_MATCH )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndexList list = obj->match ( *par1, hb_parni(2), *par3, ISNIL(4)? 1 : hb_parni(4),  (Qt::MatchFlags) ISNIL(5)? (int) Qt::MatchStartsWith | Qt::MatchWrap : hb_parni(5) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QMimeData * mimeData ( const QModelIndexList & indexes ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_MIMEDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndexList * par1 = (QModelIndexList *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QMimeData * ptr = obj->mimeData ( *par1 );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}


/*
virtual QStringList mimeTypes () const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_MIMETYPES )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->mimeTypes (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QModelIndex parent ( const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_PARENT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool removeColumn ( int column, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVECOLUMN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->removeColumn ( hb_parni(1), par2 ) );
  }
}


/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVECOLUMNS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->removeColumns ( hb_parni(1), hb_parni(2), par3 ) );
  }
}


/*
bool removeRow ( int row, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVEROW )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par2 = ISNIL(2)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->removeRow ( hb_parni(1), par2 ) );
  }
}


/*
virtual bool removeRows ( int row, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REMOVEROWS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->removeRows ( hb_parni(1), hb_parni(2), par3 ) );
  }
}



/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_ROWCOUNT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->rowCount ( par1 ) );
  }
}


/*
virtual bool setData ( const QModelIndex & index, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SETDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->setData ( *par1, *par2, ISNIL(3)? Qt::EditRole : hb_parni(3) ) );
  }
}


/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SETHEADERDATA )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->setHeaderData ( hb_parni(1),  (Qt::Orientation) hb_parni(2), *par3, ISNIL(4)? Qt::EditRole : hb_parni(4) ) );
  }
}



/*
void setSupportedDragActions ( Qt::DropActions actions )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SETSUPPORTEDDRAGACTIONS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSupportedDragActions (  (Qt::DropActions) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QModelIndex sibling ( int row, int column, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SIBLING )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par3 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->sibling ( hb_parni(1), hb_parni(2), *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void sort ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SORT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->sort ( hb_parni(1),  (Qt::SortOrder) ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize span ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SPAN )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSize * ptr = new QSize( obj->span ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
Qt::DropActions supportedDragActions () const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SUPPORTEDDRAGACTIONS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->supportedDragActions (  ) );
  }
}


/*
virtual Qt::DropActions supportedDropActions () const
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SUPPORTEDDROPACTIONS )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->supportedDropActions (  ) );
  }
}


/*
virtual void revert ()
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_REVERT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->revert (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool submit ()
*/
HB_FUNC_STATIC( QABSTRACTITEMMODEL_SUBMIT )
{
  QAbstractItemModel * obj = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->submit (  ) );
  }
}





#pragma ENDDUMP
