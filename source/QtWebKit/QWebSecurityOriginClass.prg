/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBDATABASE
REQUEST QWEBSECURITYORIGIN
#endif

CLASS QWebSecurityOrigin

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD databaseQuota
   METHOD databaseUsage
   METHOD databases
   METHOD host
   METHOD port
   METHOD scheme
   METHOD setDatabaseQuota
   METHOD addLocalScheme
   METHOD allOrigins
   METHOD localSchemes
   METHOD removeLocalScheme

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebSecurityOrigin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWebSecurityOrigin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>
#include <QWebDatabase>

/*
QWebSecurityOrigin ( const QWebSecurityOrigin & other )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEW )
{
  if( ISNUMPAR(1) && ISQWEBSECURITYORIGIN(1) )
  {
    QWebSecurityOrigin * o = new QWebSecurityOrigin ( *PQWEBSECURITYORIGIN(1) );
    _qt4xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_DELETE )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
qint64 databaseQuota () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASEQUOTA )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->databaseQuota () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qint64 databaseUsage () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASEUSAGE )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQINT64( obj->databaseUsage () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QList<QWebDatabase> databases () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_DATABASES )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QWebDatabase> list = obj->databases ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QWEBDATABASE" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QWebDatabase *) new QWebDatabase ( list[i] ) );
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
    hb_itemReturnRelease(pArray);
  }
}

/*
QString host () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_HOST )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->host () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int port () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_PORT )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->port () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString scheme () const
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_SCHEME )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->scheme () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setDatabaseQuota ( qint64 quota )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_SETDATABASEQUOTA )
{
  QWebSecurityOrigin * obj = (QWebSecurityOrigin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setDatabaseQuota ( PQINT64(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void addLocalScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_ADDLOCALSCHEME )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      QWebSecurityOrigin::addLocalScheme ( PQSTRING(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QWebSecurityOrigin> allOrigins ()
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_ALLORIGINS )
{
  QList<QWebSecurityOrigin> list = QWebSecurityOrigin::allOrigins ();
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QWEBSECURITYORIGIN" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
      hb_itemPutPtr( pItem, (QWebSecurityOrigin *) new QWebSecurityOrigin ( list[i] ) );
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
  hb_itemReturnRelease(pArray);
}

/*
static QStringList localSchemes ()
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_LOCALSCHEMES )
{
    if( ISNUMPAR(0) )
  {
      RQSTRINGLIST( QWebSecurityOrigin::localSchemes () );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void removeLocalScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QWEBSECURITYORIGIN_REMOVELOCALSCHEME )
{
    if( ISNUMPAR(1) && ISCHAR(1) )
  {
      QWebSecurityOrigin::removeLocalScheme ( PQSTRING(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEWFROM )
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

HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWEBSECURITYORIGIN_NEWFROM );
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWEBSECURITYORIGIN_NEWFROM );
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWEBSECURITYORIGIN_SETSELFDESTRUCTION )
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
