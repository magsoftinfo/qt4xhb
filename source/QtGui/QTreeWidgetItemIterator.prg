/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTreeWidgetItemIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTreeWidgetItemIterator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QTreeWidgetItemIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTreeWidgetItemIterator( const QTreeWidgetItemIterator & it )
*/
void QTreeWidgetItemIterator_new1()
{
  QTreeWidgetItemIterator * obj = new QTreeWidgetItemIterator( *PQTREEWIDGETITEMITERATOR( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QTreeWidgetItemIterator( QTreeWidget * widget, QTreeWidgetItemIterator::IteratorFlags flags = QTreeWidgetItemIterator::All )
*/
void QTreeWidgetItemIterator_new2()
{
  QTreeWidgetItemIterator * obj = new QTreeWidgetItemIterator( PQTREEWIDGET( 1 ), HB_ISNIL( 2 ) ? ( QTreeWidgetItemIterator::IteratorFlags ) QTreeWidgetItemIterator::All : ( QTreeWidgetItemIterator::IteratorFlags ) hb_parni( 2 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QTreeWidgetItemIterator( QTreeWidgetItem * item, QTreeWidgetItemIterator::IteratorFlags flags = QTreeWidgetItemIterator::All )
*/
void QTreeWidgetItemIterator_new3()
{
  QTreeWidgetItemIterator * obj = new QTreeWidgetItemIterator( PQTREEWIDGETITEM( 1 ), HB_ISNIL( 2 ) ? ( QTreeWidgetItemIterator::IteratorFlags ) QTreeWidgetItemIterator::All : ( QTreeWidgetItemIterator::IteratorFlags ) hb_parni( 2 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEW )
{
  if( ISNUMPAR( 1 ) && ISQTREEWIDGETITEMITERATOR( 1 ) )
  {
    QTreeWidgetItemIterator_new1();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQTREEWIDGET( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QTreeWidgetItemIterator_new2();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQTREEWIDGETITEM( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QTreeWidgetItemIterator_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_DELETE )
{
  QTreeWidgetItemIterator * obj = static_cast< QTreeWidgetItemIterator * >( Qt4xHb::itemGetPtrStackSelfItem() );

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

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
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

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTREEWIDGETITEMITERATOR_NEWFROM );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTREEWIDGETITEMITERATOR_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl( 1 ) );
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
