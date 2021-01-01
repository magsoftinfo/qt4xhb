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

CLASS QDesignerDynamicPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addDynamicProperty
   METHOD canAddDynamicProperty
   METHOD dynamicPropertiesAllowed
   METHOD isDynamicProperty
   METHOD removeDynamicProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDesignerDynamicPropertySheetExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDesigner/QDesignerDynamicPropertySheetExtension>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DELETE )
{
  QDesignerDynamicPropertySheetExtension * obj = ( QDesignerDynamicPropertySheetExtension * ) Qt4xHb::itemGetPtrStackSelfItem();

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
virtual int addDynamicProperty( const QString & propertyName, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = ( QDesignerDynamicPropertySheetExtension * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISCHAR( 1 ) && ISQVARIANT( 2 ) )
    {
#endif
      RINT( obj->addDynamicProperty( PQSTRING( 1 ), *PQVARIANT( 2 ) ) );
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
virtual bool canAddDynamicProperty( const QString & propertyName ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_CANADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = ( QDesignerDynamicPropertySheetExtension * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISCHAR( 1 ) )
    {
#endif
      RBOOL( obj->canAddDynamicProperty( PQSTRING( 1 ) ) );
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
virtual bool dynamicPropertiesAllowed() const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DYNAMICPROPERTIESALLOWED )
{
  QDesignerDynamicPropertySheetExtension * obj = ( QDesignerDynamicPropertySheetExtension * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->dynamicPropertiesAllowed() );
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
virtual bool isDynamicProperty( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ISDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = ( QDesignerDynamicPropertySheetExtension * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->isDynamicProperty( PINT( 1 ) ) );
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
virtual bool removeDynamicProperty( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_REMOVEDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = ( QDesignerDynamicPropertySheetExtension * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->removeDynamicProperty( PINT( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, ( void * ) hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, ( void * ) hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) );
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

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_NEWFROM );
}

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG( 1 ) )
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
