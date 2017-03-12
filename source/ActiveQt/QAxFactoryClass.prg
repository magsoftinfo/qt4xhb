/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUUID
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QAxFactory INHERIT QObject

   DATA class_id INIT Class_Id_QAxFactory
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD appID
   METHOD classID
   METHOD createObject
   METHOD eventsID
   METHOD exposeToSuperClass
   METHOD featureList
   METHOD hasStockEvents
   METHOD interfaceID
   METHOD isService
   METHOD metaObject
   METHOD registerClass
   METHOD stayTopLevel
   METHOD typeLibID
   METHOD unregisterClass
   METHOD validateLicenseKey
   METHOD isServer
   METHOD registerActiveObject
   METHOD serverDirPath
   METHOD serverFilePath
   METHOD startServer
   METHOD stopServer
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAxFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QAXFACTORY_DELETE )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QUuid appID () const
*/
HB_FUNC_STATIC( QAXFACTORY_APPID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUuid * ptr = new QUuid( obj->appID (  ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual QUuid classID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_CLASSID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QUuid * ptr = new QUuid( obj->classID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual QObject * createObject ( const QString & key ) = 0
*/
HB_FUNC_STATIC( QAXFACTORY_CREATEOBJECT )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QObject * ptr = obj->createObject ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}



/*
virtual QUuid eventsID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EVENTSID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QUuid * ptr = new QUuid( obj->eventsID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual QString exposeToSuperClass ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_EXPOSETOSUPERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->exposeToSuperClass ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QStringList featureList () const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_FEATURELIST )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->featureList (  );
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
virtual bool hasStockEvents ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_HASSTOCKEVENTS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->hasStockEvents ( par1 ) );
  }
}


/*
virtual QUuid interfaceID ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_INTERFACEID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QUuid * ptr = new QUuid( obj->interfaceID ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual bool isService () const
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVICE )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isService (  ) );
  }
}


/*
virtual const QMetaObject * metaObject ( const QString & key ) const = 0
*/
HB_FUNC_STATIC( QAXFACTORY_METAOBJECT )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    const QMetaObject * ptr = obj->metaObject ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
virtual void registerClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QSettings * par2 = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->registerClass ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool stayTopLevel ( const QString & key ) const
*/
HB_FUNC_STATIC( QAXFACTORY_STAYTOPLEVEL )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retl( obj->stayTopLevel ( par1 ) );
  }
}


/*
virtual QUuid typeLibID () const
*/
HB_FUNC_STATIC( QAXFACTORY_TYPELIBID )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUuid * ptr = new QUuid( obj->typeLibID (  ) );
    _qt4xhb_createReturnClass ( ptr, "QUUID", true );
  }
}


/*
virtual void unregisterClass ( const QString & key, QSettings * settings ) const
*/
HB_FUNC_STATIC( QAXFACTORY_UNREGISTERCLASS )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QSettings * par2 = (QSettings *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->unregisterClass ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
*/
HB_FUNC_STATIC( QAXFACTORY_VALIDATELICENSEKEY )
{
  QAxFactory * obj = (QAxFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    hb_retl( obj->validateLicenseKey ( par1, par2 ) );
  }
}



/*
bool isServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_ISSERVER )
{
  hb_retl( QAxFactory::isServer (  ) );
}


/*
bool registerActiveObject ( QObject * object )
*/
HB_FUNC_STATIC( QAXFACTORY_REGISTERACTIVEOBJECT )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QAxFactory::registerActiveObject ( par1 ) );
}


/*
QString serverDirPath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERDIRPATH )
{
  QString str1 = QAxFactory::serverDirPath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString serverFilePath ()
*/
HB_FUNC_STATIC( QAXFACTORY_SERVERFILEPATH )
{
  QString str1 = QAxFactory::serverFilePath (  );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
bool startServer ( ServerType type = MultipleInstances )
*/
HB_FUNC_STATIC( QAXFACTORY_STARTSERVER )
{
  hb_retl( QAxFactory::startServer ( ISNIL(1)? QAxFactory::MultipleInstances : (QAxFactory::ServerType) hb_parni(1) ) );
}


/*
bool stopServer ()
*/
HB_FUNC_STATIC( QAXFACTORY_STOPSERVER )
{
  hb_retl( QAxFactory::stopServer (  ) );
}




#pragma ENDDUMP
