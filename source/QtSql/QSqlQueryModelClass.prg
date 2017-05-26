/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLERROR
REQUEST QSQLQUERY
REQUEST QSQLRECORD
REQUEST QVARIANT
#endif

CLASS QSqlQueryModel INHERIT QAbstractTableModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD lastError
   METHOD query
   METHOD record1
   METHOD record2
   METHOD record
   METHOD setQuery1
   METHOD setQuery2
   METHOD setQuery
   METHOD canFetchMore
   METHOD columnCount
   METHOD data
   METHOD fetchMore
   METHOD headerData
   METHOD insertColumns
   METHOD removeColumns
   METHOD rowCount
   METHOD setHeaderData
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSqlQueryModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSqlQueryModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>

/*
QSqlQueryModel ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_NEW )
{
  QSqlQueryModel * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QSqlQueryModel ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSQLQUERYMODEL_DELETE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void clear ()
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CLEAR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSqlError lastError () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_LASTERROR )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlError * ptr = new QSqlError( obj->lastError () );
    _qt4xhb_createReturnClass ( ptr, "QSQLERROR", true );
  }
}


/*
QSqlQuery query () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_QUERY )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlQuery * ptr = new QSqlQuery( obj->query () );
    _qt4xhb_createReturnClass ( ptr, "QSQLQUERY", true );
  }
}


/*
QSqlRecord record ( int row ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD1 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}


/*
QSqlRecord record () const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD2 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlRecord * ptr = new QSqlRecord( obj->record () );
    _qt4xhb_createReturnClass ( ptr, "QSQLRECORD", true );
  }
}


//[1]QSqlRecord record ( int row ) const
//[2]QSqlRecord record () const

HB_FUNC_STATIC( QSQLQUERYMODEL_RECORD )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_RECORD2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_RECORD1 );
  }
}

/*
void setQuery ( const QSqlQuery & query )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY1 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlQuery * par1 = (QSqlQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setQuery ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY2 )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSqlDatabase par2 = ISNIL(2)? QSqlDatabase() : *(QSqlDatabase *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setQuery ( PQSTRING(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setQuery ( const QSqlQuery & query )
//[2]void setQuery ( const QString & query, const QSqlDatabase & db = QSqlDatabase() )

HB_FUNC_STATIC( QSQLQUERYMODEL_SETQUERY )
{
  if( ISNUMPAR(1) && ISQSQLQUERY(1) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_SETQUERY1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQSQLDATABASE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSQLQUERYMODEL_SETQUERY2 );
  }
}

/*
virtual bool canFetchMore ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_CANFETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->canFetchMore ( par1 ) );
  }
}


/*
virtual int columnCount ( const QModelIndex & index = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_COLUMNCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
virtual QVariant data ( const QModelIndex & item, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_DATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->data ( *par1, OPINT(2,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void fetchMore ( const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_FETCHMORE )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->fetchMore ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant headerData ( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_HEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->headerData ( PINT(1),  (Qt::Orientation) hb_parni(2), OPINT(3,Qt::DisplayRole) ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual bool insertColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_INSERTCOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->insertColumns ( PINT(1), PINT(2), par3 ) );
  }
}


/*
virtual bool removeColumns ( int column, int count, const QModelIndex & parent = QModelIndex() )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_REMOVECOLUMNS )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
  }
}


/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_ROWCOUNT )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->rowCount ( par1 ) );
  }
}


/*
virtual bool setHeaderData ( int section, Qt::Orientation orientation, const QVariant & value, int role = Qt::EditRole )
*/
HB_FUNC_STATIC( QSQLQUERYMODEL_SETHEADERDATA )
{
  QSqlQueryModel * obj = (QSqlQueryModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant * par3 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->setHeaderData ( PINT(1),  (Qt::Orientation) hb_parni(2), *par3, OPINT(4,Qt::EditRole) ) );
  }
}




#pragma ENDDUMP
