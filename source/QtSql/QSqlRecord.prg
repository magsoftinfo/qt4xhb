/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLFIELD
REQUEST QVARIANT
#endif

CLASS QSqlRecord

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD clear
   METHOD clearValues
   METHOD contains
   METHOD count
   METHOD field
   METHOD fieldName
   METHOD indexOf
   METHOD insert
   METHOD isEmpty
   METHOD isGenerated
   METHOD isNull
   METHOD remove
   METHOD replace
   METHOD setGenerated
   METHOD setNull
   METHOD setValue
   METHOD value

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSqlRecord
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtSql/QSqlRecord>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtSql/QSqlField>
#include <QtCore/QVariant>

/*
QSqlRecord ()
*/
void QSqlRecord_new1()
{
  QSqlRecord * obj = new QSqlRecord();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QSqlRecord ( const QSqlRecord & other )
*/
void QSqlRecord_new2()
{
  QSqlRecord * obj = new QSqlRecord( *PQSQLRECORD(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
[1]QSqlRecord ()
[2]QSqlRecord ( const QSqlRecord & other )
*/

HB_FUNC_STATIC( QSQLRECORD_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSqlRecord_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLRECORD(1) )
  {
    QSqlRecord_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLRECORD_DELETE )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

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
void append ( const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_APPEND )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSQLFIELD(1) )
    {
#endif
      obj->append( *PQSQLFIELD(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clear ()
*/
HB_FUNC_STATIC( QSQLRECORD_CLEAR )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearValues ()
*/
HB_FUNC_STATIC( QSQLRECORD_CLEARVALUES )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearValues();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool contains ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_CONTAINS )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->contains( PQSTRING(1) ) );
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
int count() const
*/
HB_FUNC_STATIC( QSQLRECORD_COUNT )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
QSqlField field ( int index ) const
*/
void QSqlRecord_field1()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlField * ptr = new QSqlField( obj->field( PINT(1) ) );
    Qt4xHb::createReturnClass( ptr, "QSQLFIELD", true );
  }
}

/*
QSqlField field ( const QString & name ) const
*/
void QSqlRecord_field2()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSqlField * ptr = new QSqlField( obj->field( PQSTRING(1) ) );
    Qt4xHb::createReturnClass( ptr, "QSQLFIELD", true );
  }
}

/*
[1]QSqlField field ( int index ) const
[2]QSqlField field ( const QString & name ) const
*/

HB_FUNC_STATIC( QSQLRECORD_FIELD )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_field1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_field2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString fieldName ( int index ) const
*/
HB_FUNC_STATIC( QSQLRECORD_FIELDNAME )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQSTRING( obj->fieldName( PINT(1) ) );
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
int indexOf ( const QString & name ) const
*/
HB_FUNC_STATIC( QSQLRECORD_INDEXOF )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RINT( obj->indexOf( PQSTRING(1) ) );
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
void insert ( int pos, const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_INSERT )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQSQLFIELD(2) )
    {
#endif
      obj->insert( PINT(1), *PQSQLFIELD(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QSQLRECORD_ISEMPTY )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
bool isGenerated ( const QString & name ) const
*/
void QSqlRecord_isGenerated1()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isGenerated( PQSTRING(1) ) );
  }
}

/*
bool isGenerated ( int index ) const
*/
void QSqlRecord_isGenerated2()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isGenerated( PINT(1) ) );
  }
}

/*
[1]bool isGenerated ( const QString & name ) const
[2]bool isGenerated ( int index ) const
*/

HB_FUNC_STATIC( QSQLRECORD_ISGENERATED )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_isGenerated1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_isGenerated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isNull ( const QString & name ) const
*/
void QSqlRecord_isNull1()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull( PQSTRING(1) ) );
  }
}

/*
bool isNull ( int index ) const
*/
void QSqlRecord_isNull2()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull( PINT(1) ) );
  }
}

/*
[1]bool isNull ( const QString & name ) const
[2]bool isNull ( int index ) const
*/

HB_FUNC_STATIC( QSQLRECORD_ISNULL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_isNull1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_isNull2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove ( int pos )
*/
HB_FUNC_STATIC( QSQLRECORD_REMOVE )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->remove( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void replace ( int pos, const QSqlField & field )
*/
HB_FUNC_STATIC( QSQLRECORD_REPLACE )
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQSQLFIELD(2) )
    {
#endif
      obj->replace( PINT(1), *PQSQLFIELD(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGenerated ( const QString & name, bool generated )
*/
void QSqlRecord_setGenerated1()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGenerated( PQSTRING(1), PBOOL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGenerated ( int index, bool generated )
*/
void QSqlRecord_setGenerated2()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGenerated( PINT(1), PBOOL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setGenerated ( const QString & name, bool generated )
[2]void setGenerated ( int index, bool generated )
*/

HB_FUNC_STATIC( QSQLRECORD_SETGENERATED )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
  {
    QSqlRecord_setGenerated1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    QSqlRecord_setGenerated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setNull ( int index )
*/
void QSqlRecord_setNull1()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setNull( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNull ( const QString & name )
*/
void QSqlRecord_setNull2()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setNull( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setNull ( int index )
[2]void setNull ( const QString & name )
*/

HB_FUNC_STATIC( QSQLRECORD_SETNULL )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_setNull1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_setNull2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setValue ( int index, const QVariant & val )
*/
void QSqlRecord_setValue1()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setValue( PINT(1), *PQVARIANT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setValue ( const QString & name, const QVariant & val )
*/
void QSqlRecord_setValue2()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setValue( PQSTRING(1), *PQVARIANT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setValue ( int index, const QVariant & val )
[2]void setValue ( const QString & name, const QVariant & val )
*/

HB_FUNC_STATIC( QSQLRECORD_SETVALUE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    QSqlRecord_setValue1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
  {
    QSqlRecord_setValue2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant value ( int index ) const
*/
void QSqlRecord_value1()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value( PINT(1) ) );
    Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
  }
}

/*
QVariant value ( const QString & name ) const
*/
void QSqlRecord_value2()
{
  QSqlRecord * obj = (QSqlRecord *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->value( PQSTRING(1) ) );
    Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
  }
}

/*
[1]QVariant value ( int index ) const
[2]QVariant value ( const QString & name ) const
*/

HB_FUNC_STATIC( QSQLRECORD_VALUE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSqlRecord_value1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSqlRecord_value2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSQLRECORD_NEWFROM )
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

HB_FUNC_STATIC( QSQLRECORD_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSQLRECORD_NEWFROM );
}

HB_FUNC_STATIC( QSQLRECORD_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSQLRECORD_NEWFROM );
}

HB_FUNC_STATIC( QSQLRECORD_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSQLRECORD_SETSELFDESTRUCTION )
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
