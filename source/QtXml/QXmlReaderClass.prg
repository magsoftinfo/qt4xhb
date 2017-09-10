/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QXMLDTDHANDLER
REQUEST QXMLCONTENTHANDLER
REQUEST QXMLDECLHANDLER
REQUEST QXMLENTITYRESOLVER
REQUEST QXMLERRORHANDLER
REQUEST QXMLLEXICALHANDLER
#endif

CLASS QXmlReader

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD DTDHandler
   METHOD contentHandler
   METHOD declHandler
   METHOD entityResolver
   METHOD errorHandler
   METHOD feature
   METHOD hasFeature
   METHOD hasProperty
   METHOD lexicalHandler
   METHOD parse
   METHOD property
   METHOD setContentHandler
   METHOD setDTDHandler
   METHOD setDeclHandler
   METHOD setEntityResolver
   METHOD setErrorHandler
   METHOD setFeature
   METHOD setLexicalHandler
   METHOD setProperty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlReader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QXmlReader>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QXMLREADER_DELETE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QXmlDTDHandler * DTDHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_DTDHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXmlDTDHandler * ptr = obj->DTDHandler ();
      _qt4xhb_createReturnClass ( ptr, "QXMLDTDHANDLER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QXmlContentHandler * contentHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_CONTENTHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXmlContentHandler * ptr = obj->contentHandler ();
      _qt4xhb_createReturnClass ( ptr, "QXMLCONTENTHANDLER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QXmlDeclHandler * declHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_DECLHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXmlDeclHandler * ptr = obj->declHandler ();
      _qt4xhb_createReturnClass ( ptr, "QXMLDECLHANDLER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QXmlEntityResolver * entityResolver () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_ENTITYRESOLVER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXmlEntityResolver * ptr = obj->entityResolver ();
      _qt4xhb_createReturnClass ( ptr, "QXMLENTITYRESOLVER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QXmlErrorHandler * errorHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_ERRORHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXmlErrorHandler * ptr = obj->errorHandler ();
      _qt4xhb_createReturnClass ( ptr, "QXMLERRORHANDLER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool feature ( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_FEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTLOG(2) )
    {
      bool par2;
      RBOOL( obj->feature ( PQSTRING(1), &par2 ) );
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool hasFeature ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_HASFEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->hasFeature ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool hasProperty ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_HASPROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      RBOOL( obj->hasProperty ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QXmlLexicalHandler * lexicalHandler () const = 0
*/
HB_FUNC_STATIC( QXMLREADER_LEXICALHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QXmlLexicalHandler * ptr = obj->lexicalHandler ();
      _qt4xhb_createReturnClass ( ptr, "QXMLLEXICALHANDLER", false );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool parse ( const QXmlInputSource * input ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_PARSE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLINPUTSOURCE(1) )
    {
      RBOOL( obj->parse ( PQXMLINPUTSOURCE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void * property ( const QString & name, bool * ok = 0 ) const = 0
*/
HB_FUNC_STATIC( QXMLREADER_PROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTLOG(2) )
    {
      bool par2;
      hb_retptr( (void *) obj->property ( PQSTRING(1), &par2 ) );
      hb_storl( par2, 2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setContentHandler ( QXmlContentHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETCONTENTHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLCONTENTHANDLER(1) )
    {
      obj->setContentHandler ( PQXMLCONTENTHANDLER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setDTDHandler ( QXmlDTDHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETDTDHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLDTDHANDLER(1) )
    {
      obj->setDTDHandler ( PQXMLDTDHANDLER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setDeclHandler ( QXmlDeclHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETDECLHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLDECLHANDLER(1) )
    {
      obj->setDeclHandler ( PQXMLDECLHANDLER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setEntityResolver ( QXmlEntityResolver * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETENTITYRESOLVER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLENTITYRESOLVER(1) )
    {
      obj->setEntityResolver ( PQXMLENTITYRESOLVER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setErrorHandler ( QXmlErrorHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETERRORHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLERRORHANDLER(1) )
    {
      obj->setErrorHandler ( PQXMLERRORHANDLER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setFeature ( const QString & name, bool value ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETFEATURE )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISLOG(2) )
    {
      obj->setFeature ( PQSTRING(1), PBOOL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setLexicalHandler ( QXmlLexicalHandler * handler ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETLEXICALHANDLER )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQXMLLEXICALHANDLER(1) )
    {
      obj->setLexicalHandler ( PQXMLLEXICALHANDLER(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setProperty ( const QString & name, void * value ) = 0
*/
HB_FUNC_STATIC( QXMLREADER_SETPROPERTY )
{
  QXmlReader * obj = (QXmlReader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISPOINTER(2) )
    {
      obj->setProperty ( PQSTRING(1), (void *) hb_parptr(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QXMLREADER_NEWFROM )
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

HB_FUNC_STATIC( QXMLREADER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLREADER_NEWFROM );
}

HB_FUNC_STATIC( QXMLREADER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLREADER_NEWFROM );
}

HB_FUNC_STATIC( QXMLREADER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLREADER_SETSELFDESTRUCTION )
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
