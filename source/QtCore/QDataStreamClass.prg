/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QIODEVICE

CLASS QDataStream

   DATA pointer
   DATA class_id INIT Class_Id_QDataStream
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD atEnd
   METHOD byteOrder
   METHOD device
   METHOD floatingPointPrecision
   METHOD readRawData
   METHOD resetStatus
   METHOD setByteOrder
   METHOD setDevice
   METHOD setFloatingPointPrecision
   METHOD setStatus
   METHOD setVersion
   METHOD skipRawData
   METHOD status
   METHOD version
   METHOD writeRawData
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDataStream
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDataStream
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDataStream
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDataStream
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDataStream
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDataStream
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDataStream>

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

/*
QDataStream ()
*/
HB_FUNC_STATIC( QDATASTREAM_NEW1 )
{
  QDataStream * o = NULL;
  o = new QDataStream (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDataStream ( QIODevice * d )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW2 )
{
  QDataStream * o = NULL;
  QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDataStream ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW3 )
{
  QDataStream * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  o = new QDataStream ( par1,  (QIODevice::OpenMode) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QDataStream ( const QByteArray & a )
*/
HB_FUNC_STATIC( QDATASTREAM_NEW4 )
{
  QDataStream * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDataStream ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDataStream *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDataStream ()
//[2]QDataStream ( QIODevice * d )
//[3]QDataStream ( QByteArray * a, QIODevice::OpenMode mode )
//[4]QDataStream ( const QByteArray & a )

HB_FUNC_STATIC( QDATASTREAM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QDATASTREAM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDATASTREAM_DELETE )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool atEnd () const
*/
HB_FUNC_STATIC( QDATASTREAM_ATEND )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->atEnd (  );
    hb_retl( b );
  }
}


/*
ByteOrder byteOrder () const
*/
HB_FUNC_STATIC( QDATASTREAM_BYTEORDER )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->byteOrder (  );
    hb_retni( i );
  }
}


/*
QIODevice * device () const
*/
HB_FUNC_STATIC( QDATASTREAM_DEVICE )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * ptr = obj->device (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
FloatingPointPrecision floatingPointPrecision () const
*/
HB_FUNC_STATIC( QDATASTREAM_FLOATINGPOINTPRECISION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->floatingPointPrecision (  );
    hb_retni( i );
  }
}



/*
int readRawData ( char * s, int len )
*/
HB_FUNC_STATIC( QDATASTREAM_READRAWDATA )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char * par1 = (char *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    int i = obj->readRawData ( par1, par2 );
    hb_retni( i );
  }
}


/*
void resetStatus ()
*/
HB_FUNC_STATIC( QDATASTREAM_RESETSTATUS )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resetStatus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setByteOrder ( ByteOrder bo )
*/
HB_FUNC_STATIC( QDATASTREAM_SETBYTEORDER )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setByteOrder (  (QDataStream::ByteOrder) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDevice ( QIODevice * d )
*/
HB_FUNC_STATIC( QDATASTREAM_SETDEVICE )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFloatingPointPrecision ( FloatingPointPrecision precision )
*/
HB_FUNC_STATIC( QDATASTREAM_SETFLOATINGPOINTPRECISION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFloatingPointPrecision (  (QDataStream::FloatingPointPrecision) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStatus ( Status status )
*/
HB_FUNC_STATIC( QDATASTREAM_SETSTATUS )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStatus (  (QDataStream::Status) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVersion ( int v )
*/
HB_FUNC_STATIC( QDATASTREAM_SETVERSION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setVersion ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipRawData ( int len )
*/
HB_FUNC_STATIC( QDATASTREAM_SKIPRAWDATA )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->skipRawData ( par1 );
    hb_retni( i );
  }
}


/*
Status status () const
*/
HB_FUNC_STATIC( QDATASTREAM_STATUS )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->status (  );
    hb_retni( i );
  }
}


/*
int version () const
*/
HB_FUNC_STATIC( QDATASTREAM_VERSION )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->version (  );
    hb_retni( i );
  }
}



/*
int writeRawData ( const char * s, int len )
*/
HB_FUNC_STATIC( QDATASTREAM_WRITERAWDATA )
{
  QDataStream * obj = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int par2 = hb_parni(2);
    int i = obj->writeRawData (  (const char *) par1, par2 );
    hb_retni( i );
  }
}





#pragma ENDDUMP
