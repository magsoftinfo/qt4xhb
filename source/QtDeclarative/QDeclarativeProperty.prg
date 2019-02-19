/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMETAMETHOD
REQUEST QMETAPROPERTY
REQUEST QOBJECT
REQUEST QVARIANT
#endif

CLASS QDeclarativeProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD connectNotifySignal
   METHOD hasNotifySignal
   METHOD index
   METHOD isDesignable
   METHOD isProperty
   METHOD isResettable
   METHOD isSignalProperty
   METHOD isValid
   METHOD isWritable
   METHOD method
   METHOD name
   METHOD needsNotifySignal
   METHOD object
   METHOD property
   METHOD propertyType
   METHOD propertyTypeCategory
   METHOD propertyTypeName
   METHOD reset
   METHOD type
   METHOD read
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeProperty
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDeclarative/QDeclarativeProperty>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeProperty ()
*/
void QDeclarativeProperty_new1 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QDeclarativeProperty ( QObject * obj )
*/
void QDeclarativeProperty_new2 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ( PQOBJECT(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
*/
void QDeclarativeProperty_new3 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ( PQOBJECT(1), PQDECLARATIVECONTEXT(2) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
*/
void QDeclarativeProperty_new4 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ( PQOBJECT(1), PQDECLARATIVEENGINE(2) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QDeclarativeProperty ( QObject * obj, const QString & name )
*/
void QDeclarativeProperty_new5 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ( PQOBJECT(1), PQSTRING(2) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
*/
void QDeclarativeProperty_new6 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ( PQOBJECT(1), PQSTRING(2), PQDECLARATIVECONTEXT(3) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
*/
void QDeclarativeProperty_new7 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ( PQOBJECT(1), PQSTRING(2), PQDECLARATIVEENGINE(3) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QDeclarativeProperty ( const QDeclarativeProperty & other )
*/
void QDeclarativeProperty_new8 ()
{
  QDeclarativeProperty * o = new QDeclarativeProperty ( *PQDECLARATIVEPROPERTY(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QDeclarativeProperty ()
//[2]QDeclarativeProperty ( QObject * obj )
//[3]QDeclarativeProperty ( QObject * obj, QDeclarativeContext * ctxt )
//[4]QDeclarativeProperty ( QObject * obj, QDeclarativeEngine * engine )
//[5]QDeclarativeProperty ( QObject * obj, const QString & name )
//[6]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeContext * ctxt )
//[7]QDeclarativeProperty ( QObject * obj, const QString & name, QDeclarativeEngine * engine )
//[8]QDeclarativeProperty ( const QDeclarativeProperty & other )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeProperty_new1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QDeclarativeProperty_new2();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2) )
  {
    QDeclarativeProperty_new3();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVEENGINE(2) )
  {
    QDeclarativeProperty_new4();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QDeclarativeProperty_new5();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    QDeclarativeProperty_new6();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    QDeclarativeProperty_new7();
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVEPROPERTY(1) )
  {
    QDeclarativeProperty_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool connectNotifySignal ( QObject * dest, const char * slot ) const
*/
void QDeclarativeProperty_connectNotifySignal1 ()
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->connectNotifySignal ( PQOBJECT(1), PCONSTCHAR(2) ) );
  }
}

/*
bool connectNotifySignal ( QObject * dest, int method ) const
*/
void QDeclarativeProperty_connectNotifySignal2 ()
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->connectNotifySignal ( PQOBJECT(1), PINT(2) ) );
  }
}

//[1]bool connectNotifySignal ( QObject * dest, const char * slot ) const
//[2]bool connectNotifySignal ( QObject * dest, int method ) const

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_CONNECTNOTIFYSIGNAL )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QDeclarativeProperty_connectNotifySignal1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QDeclarativeProperty_connectNotifySignal2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool hasNotifySignal () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_HASNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasNotifySignal () );
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
int index () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_INDEX )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->index () );
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
bool isDesignable () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISDESIGNABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDesignable () );
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
bool isProperty () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISPROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isProperty () );
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
bool isResettable () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISRESETTABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isResettable () );
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
bool isSignalProperty () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISSIGNALPROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSignalProperty () );
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
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISVALID )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
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
bool isWritable () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_ISWRITABLE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isWritable () );
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
QMetaMethod method () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_METHOD )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaMethod * ptr = new QMetaMethod( obj->method () );
      _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD", true );
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
QString name () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NAME )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->name () );
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
bool needsNotifySignal () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEEDSNOTIFYSIGNAL )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->needsNotifySignal () );
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
QObject * object () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_OBJECT )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->object ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
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
QMetaProperty property () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMetaProperty * ptr = new QMetaProperty( obj->property () );
      _qt4xhb_createReturnClass ( ptr, "QMETAPROPERTY", true );
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
int propertyType () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->propertyType () );
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
PropertyTypeCategory propertyTypeCategory () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPECATEGORY )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->propertyTypeCategory () );
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
const char * propertyTypeName () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_PROPERTYTYPENAME )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retc( (const char *) obj->propertyTypeName () );
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
bool reset () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_RESET )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->reset () );
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
Type type () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTY_TYPE )
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
QVariant read () const
*/
void QDeclarativeProperty_read1 ()
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QVariant * ptr = new QVariant( obj->read () );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
static QVariant read ( QObject * object, const QString & name )
*/
void QDeclarativeProperty_read2 ()
{

      QVariant * ptr = new QVariant( QDeclarativeProperty::read ( PQOBJECT(1), PQSTRING(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}

/*
static QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
*/
void QDeclarativeProperty_read3 ()
{

      QVariant * ptr = new QVariant( QDeclarativeProperty::read ( PQOBJECT(1), PQSTRING(2), PQDECLARATIVECONTEXT(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}

/*
static QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )
*/
void QDeclarativeProperty_read4 ()
{

      QVariant * ptr = new QVariant( QDeclarativeProperty::read ( PQOBJECT(1), PQSTRING(2), PQDECLARATIVEENGINE(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
}

//[1]QVariant read () const
//[2]QVariant read ( QObject * object, const QString & name )
//[3]QVariant read ( QObject * object, const QString & name, QDeclarativeContext * ctxt )
//[4]QVariant read ( QObject * object, const QString & name, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_READ )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeProperty_read1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QDeclarativeProperty_read2();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVECONTEXT(3) )
  {
    QDeclarativeProperty_read3();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQDECLARATIVEENGINE(3) )
  {
    QDeclarativeProperty_read4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool write ( const QVariant & value ) const
*/
void QDeclarativeProperty_write1 ()
{
  QDeclarativeProperty * obj = (QDeclarativeProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      RBOOL( obj->write ( *PQVARIANT(1) ) );
  }
}

/*
static bool write ( QObject * object, const QString & name, const QVariant & value )
*/
void QDeclarativeProperty_write2 ()
{

      RBOOL( QDeclarativeProperty::write ( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3) ) );
}

/*
static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
*/
void QDeclarativeProperty_write3 ()
{

      RBOOL( QDeclarativeProperty::write ( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQDECLARATIVECONTEXT(4) ) );
}

/*
static bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )
*/
void QDeclarativeProperty_write4 ()
{

      RBOOL( QDeclarativeProperty::write ( PQOBJECT(1), PQSTRING(2), *PQVARIANT(3), PQDECLARATIVEENGINE(4) ) );
}

//[1]bool write ( const QVariant & value ) const
//[2]bool write ( QObject * object, const QString & name, const QVariant & value )
//[3]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeContext * ctxt )
//[4]bool write ( QObject * object, const QString & name, const QVariant & value, QDeclarativeEngine * engine )

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_WRITE )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    QDeclarativeProperty_write1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
  {
    QDeclarativeProperty_write2();
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVECONTEXT(4) )
  {
    QDeclarativeProperty_write3();
  }
  else if( ISNUMPAR(4) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) && ISQDECLARATIVEENGINE(4) )
  {
    QDeclarativeProperty_write4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVEPROPERTY_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVEPROPERTY_SETSELFDESTRUCTION )
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
