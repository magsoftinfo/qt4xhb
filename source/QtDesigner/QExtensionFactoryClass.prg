/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEXTENSIONMANAGER
REQUEST QOBJECT
#endif

CLASS QExtensionFactory INHERIT QObject,QAbstractExtensionFactory

   DATA class_id INIT Class_Id_QExtensionFactory
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD extensionManager
   METHOD extension
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QExtensionFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QExtensionFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QExtensionFactory ( QExtensionManager * parent = 0 )
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_NEW )
{
  QExtensionFactory * o = NULL;
  QExtensionManager * par1 = ISNIL(1)? 0 : (QExtensionManager *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QExtensionFactory ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QExtensionFactory *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QEXTENSIONFACTORY_DELETE )
{
  QExtensionFactory * obj = (QExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QExtensionManager * extensionManager () const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSIONMANAGER )
{
  QExtensionFactory * obj = (QExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QExtensionManager * ptr = obj->extensionManager (  );
    _qt4xhb_createReturnClass ( ptr, "QEXTENSIONMANAGER" );
  }
}


/*
virtual QObject * extension ( QObject * object, const QString & iid ) const
*/
HB_FUNC_STATIC( QEXTENSIONFACTORY_EXTENSION )
{
  QExtensionFactory * obj = (QExtensionFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    QObject * ptr = obj->extension ( par1, par2 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}





#pragma ENDDUMP
