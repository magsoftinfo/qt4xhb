$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
#endif

CLASS QSslError

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD certificate
   METHOD error
   METHOD errorString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSslError>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSslError ()
*/
HB_FUNC_STATIC( QSSLERROR_NEW1 )
{
  QSslError * o = new QSslError ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSslError ( SslError error )
*/
HB_FUNC_STATIC( QSSLERROR_NEW2 )
{
  QSslError * o = new QSslError ( (QSslError::SslError) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSslError ( SslError error, const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLERROR_NEW3 )
{
  QSslError * o = new QSslError ( (QSslError::SslError) hb_parni(1), *PQSSLCERTIFICATE(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QSslError ( const QSslError & other )
*/
HB_FUNC_STATIC( QSSLERROR_NEW4 )
{
  QSslError * o = new QSslError ( *PQSSLERROR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QSslError ()
//[2]QSslError ( SslError error )
//[3]QSslError ( SslError error, const QSslCertificate & certificate )
//[4]QSslError ( const QSslError & other )

HB_FUNC_STATIC( QSSLERROR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQSSLCERTIFICATE(2) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSSLERROR(1) )
  {
    HB_FUNC_EXEC( QSSLERROR_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QSslCertificate certificate () const
*/
HB_FUNC_STATIC( QSSLERROR_CERTIFICATE )
{
  QSslError * obj = (QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSslCertificate * ptr = new QSslCertificate( obj->certificate () );
    _qt4xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
  }
}


/*
SslError error () const
*/
HB_FUNC_STATIC( QSSLERROR_ERROR )
{
  QSslError * obj = (QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}

/*
QString errorString () const
*/
$method=|QString|errorString|

$extraMethods

#pragma ENDDUMP
