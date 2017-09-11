/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDOMATTR
REQUEST QDOMCDATASECTION
REQUEST QDOMCOMMENT
REQUEST QDOMDOCUMENTFRAGMENT
REQUEST QDOMELEMENT
REQUEST QDOMENTITYREFERENCE
REQUEST QDOMPROCESSINGINSTRUCTION
REQUEST QDOMTEXT
REQUEST QDOMDOCUMENTTYPE
REQUEST QDOMNODELIST
REQUEST QDOMIMPLEMENTATION
REQUEST QDOMNODE
REQUEST QBYTEARRAY
#endif

CLASS QDomDocument INHERIT QDomNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAttribute
   METHOD createAttributeNS
   METHOD createCDATASection
   METHOD createComment
   METHOD createDocumentFragment
   METHOD createElement
   METHOD createElementNS
   METHOD createEntityReference
   METHOD createProcessingInstruction
   METHOD createTextNode
   METHOD doctype
   METHOD documentElement
   METHOD elementById
   METHOD elementsByTagName
   METHOD elementsByTagNameNS
   METHOD implementation
   METHOD importNode
   METHOD nodeType
   //METHOD setContent1
   //METHOD setContent2
   //METHOD setContent3
   //METHOD setContent4
   //METHOD setContent5
   //METHOD setContent6
   //METHOD setContent7
   //METHOD setContent8
   //METHOD setContent
   METHOD toByteArray
   METHOD toString

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDomDocument>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDomDocument ()
*/
void QDomDocument_new1 ()
{
  QDomDocument * o = new QDomDocument ();
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QDomDocument ( const QString & name )
*/
void QDomDocument_new2 ()
{
  QDomDocument * o = new QDomDocument ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QDomDocument ( const QDomDocumentType & doctype )
*/
void QDomDocument_new3 ()
{
  QDomDocument * o = new QDomDocument ( *PQDOMDOCUMENTTYPE(1) );
  _qt4xhb_storePointerAndFlag( o, true );
}

/*
QDomDocument ( const QDomDocument & x )
*/
void QDomDocument_new4 ()
{
  QDomDocument * o = new QDomDocument ( *PQDOMDOCUMENT(1) );
  _qt4xhb_storePointerAndFlag( o, true );
}

//[1]QDomDocument ()
//[2]QDomDocument ( const QString & name )
//[3]QDomDocument ( const QDomDocumentType & doctype )
//[4]QDomDocument ( const QDomDocument & x )

HB_FUNC_STATIC( QDOMDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomDocument_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QDomDocument_new2();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENTTYPE(1) )
  {
    QDomDocument_new3();
  }
  else if( ISNUMPAR(1) && ISQDOMDOCUMENT(1) )
  {
    QDomDocument_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMDOCUMENT_DELETE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QDomAttr createAttribute ( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomAttr * ptr = new QDomAttr( obj->createAttribute ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomAttr createAttributeNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEATTRIBUTENS )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      QDomAttr * ptr = new QDomAttr( obj->createAttributeNS ( PQSTRING(1), PQSTRING(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMATTR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomCDATASection createCDATASection ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECDATASECTION )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomCDATASection * ptr = new QDomCDATASection( obj->createCDATASection ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMCDATASECTION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomComment createComment ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATECOMMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomComment * ptr = new QDomComment( obj->createComment ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMCOMMENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomDocumentFragment createDocumentFragment ()
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEDOCUMENTFRAGMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDomDocumentFragment * ptr = new QDomDocumentFragment( obj->createDocumentFragment () );
      _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTFRAGMENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomElement createElement ( const QString & tagName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomElement * ptr = new QDomElement( obj->createElement ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomElement createElementNS ( const QString & nsURI, const QString & qName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEELEMENTNS )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      QDomElement * ptr = new QDomElement( obj->createElementNS ( PQSTRING(1), PQSTRING(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomEntityReference createEntityReference ( const QString & name )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEENTITYREFERENCE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomEntityReference * ptr = new QDomEntityReference( obj->createEntityReference ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMENTITYREFERENCE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomProcessingInstruction createProcessingInstruction ( const QString & target, const QString & data )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATEPROCESSINGINSTRUCTION )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      QDomProcessingInstruction * ptr = new QDomProcessingInstruction( obj->createProcessingInstruction ( PQSTRING(1), PQSTRING(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMPROCESSINGINSTRUCTION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomText createTextNode ( const QString & value )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_CREATETEXTNODE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomText * ptr = new QDomText( obj->createTextNode ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMTEXT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomDocumentType doctype () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCTYPE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDomDocumentType * ptr = new QDomDocumentType( obj->doctype () );
      _qt4xhb_createReturnClass ( ptr, "QDOMDOCUMENTTYPE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomElement documentElement () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_DOCUMENTELEMENT )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDomElement * ptr = new QDomElement( obj->documentElement () );
      _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomElement elementById ( const QString & elementId )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTBYID )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomElement * ptr = new QDomElement( obj->elementById ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMELEMENT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomNodeList elementsByTagName ( const QString & tagname ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAME )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagName ( PQSTRING(1) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomNodeList elementsByTagNameNS ( const QString & nsURI, const QString & localName )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_ELEMENTSBYTAGNAMENS )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
      QDomNodeList * ptr = new QDomNodeList( obj->elementsByTagNameNS ( PQSTRING(1), PQSTRING(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMNODELIST", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomImplementation implementation () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPLEMENTATION )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDomImplementation * ptr = new QDomImplementation( obj->implementation () );
      _qt4xhb_createReturnClass ( ptr, "QDOMIMPLEMENTATION", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomNode importNode ( const QDomNode & importedNode, bool deep )
*/
HB_FUNC_STATIC( QDOMDOCUMENT_IMPORTNODE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQDOMNODE(1) && ISLOG(2) )
    {
      QDomNode * ptr = new QDomNode( obj->importNode ( *PQDOMNODE(1), PBOOL(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QDOMNODE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_NODETYPE )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->nodeType () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

/*
bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

/*
bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

/*
bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

/*
bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

/*
bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

/*
bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

/*
bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
*/

//[1]bool setContent ( const QByteArray & data, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[2]bool setContent ( const QString & text, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[3]bool setContent ( QIODevice * dev, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[4]bool setContent ( QXmlInputSource * source, bool namespaceProcessing, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[5]bool setContent ( const QString & text, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[6]bool setContent ( const QByteArray & buffer, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[7]bool setContent ( QIODevice * dev, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )
//[8]bool setContent ( QXmlInputSource * source, QXmlReader * reader, QString * errorMsg = 0, int * errorLine = 0, int * errorColumn = 0 )

/*
QByteArray toByteArray ( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOBYTEARRAY )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      QByteArray * ptr = new QByteArray( obj->toByteArray ( OPINT(1,1) ) );
      _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toString ( int indent = 1 ) const
*/
HB_FUNC_STATIC( QDOMDOCUMENT_TOSTRING )
{
  QDomDocument * obj = (QDomDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
      RQSTRING( obj->toString ( OPINT(1,1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
