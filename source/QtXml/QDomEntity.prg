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

CLASS QDomEntity INHERIT QDomNode

   METHOD new
   METHOD nodeType
   METHOD notationName
   METHOD publicId
   METHOD systemId

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomEntity
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtXml/QDomEntity>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomEntity()
*/
void QDomEntity_new1()
{
  QDomEntity * obj = new QDomEntity();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QDomEntity( const QDomEntity & x )
*/
void QDomEntity_new2()
{
  QDomEntity * obj = new QDomEntity( *PQDOMENTITY( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QDOMENTITY_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QDomEntity_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQDOMENTITY( 1 ) )
  {
    QDomEntity_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDomNode::NodeType nodeType() const
*/
HB_FUNC_STATIC( QDOMENTITY_NODETYPE )
{
  QDomEntity * obj = ( QDomEntity * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->nodeType() );
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
QString notationName() const
*/
HB_FUNC_STATIC( QDOMENTITY_NOTATIONNAME )
{
  QDomEntity * obj = ( QDomEntity * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->notationName() );
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
QString publicId() const
*/
HB_FUNC_STATIC( QDOMENTITY_PUBLICID )
{
  QDomEntity * obj = ( QDomEntity * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->publicId() );
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
QString systemId() const
*/
HB_FUNC_STATIC( QDOMENTITY_SYSTEMID )
{
  QDomEntity * obj = ( QDomEntity * ) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->systemId() );
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
