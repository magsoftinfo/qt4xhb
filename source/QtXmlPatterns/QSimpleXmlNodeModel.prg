/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
REQUEST QXMLNAME
REQUEST QXMLNAMEPOOL
REQUEST QXMLNODEMODELINDEX
#endif

CLASS QSimpleXmlNodeModel INHERIT QAbstractXmlNodeModel

   METHOD delete
   METHOD namePool
   METHOD baseUri
   METHOD elementById
   METHOD namespaceBindings
   METHOD nodesByIdref
   METHOD stringValue

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSimpleXmlNodeModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXmlPatterns/QSimpleXmlNodeModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtCore/QVector>

HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_DELETE )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QXmlNamePool & namePool () const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NAMEPOOL )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QXmlNamePool * ptr = &obj->namePool ();
      _qt4xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", false );
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
virtual QUrl baseUri ( const QXmlNodeModelIndex & node ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_BASEURI )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
    {
#endif
      QUrl * ptr = new QUrl( obj->baseUri ( *PQXMLNODEMODELINDEX(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QURL", true );
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
virtual QXmlNodeModelIndex elementById ( const QXmlName & id ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_ELEMENTBYID )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQXMLNAME(1) )
    {
#endif
      QXmlNodeModelIndex * ptr = new QXmlNodeModelIndex( obj->elementById ( *PQXMLNAME(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QXMLNODEMODELINDEX", true );
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
virtual QVector<QXmlName> namespaceBindings ( const QXmlNodeModelIndex & node ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NAMESPACEBINDINGS )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
    {
#endif
      QVector<QXmlName> list = obj->namespaceBindings ( *PQXMLNODEMODELINDEX(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QXMLNAME" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QXmlName *) new QXmlName ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QXMLNAME", HB_ERR_ARGS_BASEPARAMS );
        }
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
virtual QVector<QXmlNodeModelIndex> nodesByIdref ( const QXmlName & idref ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_NODESBYIDREF )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQXMLNAME(1) )
    {
#endif
      QVector<QXmlNodeModelIndex> list = obj->nodesByIdref ( *PQXMLNAME(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QXMLNODEMODELINDEX" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QXmlNodeModelIndex *) new QXmlNodeModelIndex ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QXMLNODEMODELINDEX", HB_ERR_ARGS_BASEPARAMS );
        }
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
virtual QString stringValue ( const QXmlNodeModelIndex & node ) const
*/
HB_FUNC_STATIC( QSIMPLEXMLNODEMODEL_STRINGVALUE )
{
  QSimpleXmlNodeModel * obj = (QSimpleXmlNodeModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQXMLNODEMODELINDEX(1) )
    {
#endif
      RQSTRING( obj->stringValue ( *PQXMLNODEMODELINDEX(1) ) );
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
