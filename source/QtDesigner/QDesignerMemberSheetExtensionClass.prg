/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDesignerMemberSheetExtension

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerMemberSheetExtension
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD count
   METHOD declaredInClass
   METHOD indexOf
   METHOD inheritedFromWidget
   METHOD isSignal
   METHOD isSlot
   METHOD isVisible
   METHOD memberGroup
   METHOD memberName
   METHOD parameterNames
   METHOD parameterTypes
   METHOD setMemberGroup
   METHOD setVisible
   METHOD signature
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerMemberSheetExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerMemberSheetExtension>

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

HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_DELETE )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int count () const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_COUNT )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual QString declaredInClass ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_DECLAREDINCLASS )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->declaredInClass ( hb_parni(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual int indexOf ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_INDEXOF )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    hb_retni( obj->indexOf ( par1 ) );
  }
}


/*
virtual bool inheritedFromWidget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_INHERITEDFROMWIDGET )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->inheritedFromWidget ( hb_parni(1) ) );
  }
}


/*
virtual bool isSignal ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_ISSIGNAL )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSignal ( hb_parni(1) ) );
  }
}


/*
virtual bool isSlot ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_ISSLOT )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSlot ( hb_parni(1) ) );
  }
}


/*
virtual bool isVisible ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_ISVISIBLE )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isVisible ( hb_parni(1) ) );
  }
}


/*
virtual QString memberGroup ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_MEMBERGROUP )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->memberGroup ( hb_parni(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QString memberName ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_MEMBERNAME )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->memberName ( hb_parni(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
virtual QList<QByteArray> parameterNames ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_PARAMETERNAMES )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterNames ( hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QList<QByteArray> parameterTypes ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_PARAMETERTYPES )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterTypes ( hb_parni(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual void setMemberGroup ( int index, const QString & group ) = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_SETMEMBERGROUP )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par2 = hb_parc(2);
    obj->setMemberGroup ( hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setVisible ( int index, bool visible ) = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_SETVISIBLE )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( hb_parni(1), (bool) hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString signature ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_SIGNATURE )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->signature ( hb_parni(1) );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERMEMBERSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERMEMBERSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP
