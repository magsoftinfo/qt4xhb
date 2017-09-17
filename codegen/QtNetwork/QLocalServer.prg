$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLOCALSOCKET
#endif

CLASS QLocalServer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD close
   METHOD errorString
   METHOD fullServerName
   METHOD hasPendingConnections
   METHOD isListening
   METHOD listen
   METHOD maxPendingConnections
   METHOD nextPendingConnection
   METHOD serverError
   METHOD serverName
   METHOD setMaxPendingConnections
   METHOD waitForNewConnection
   METHOD removeServer

   METHOD onNewConnection

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLocalServer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLocalServer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QLOCALSERVER_NEW )
{
  QLocalServer * o = new QLocalServer ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void close ()
*/
HB_FUNC_STATIC( QLOCALSERVER_CLOSE )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->close ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fullServerName () const
*/
$method=|QString|fullServerName|

/*
virtual bool hasPendingConnections () const
*/
HB_FUNC_STATIC( QLOCALSERVER_HASPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasPendingConnections () );
  }
}


/*
bool isListening () const
*/
HB_FUNC_STATIC( QLOCALSERVER_ISLISTENING )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isListening () );
  }
}

/*
bool listen ( const QString & name )
*/
$method=|bool|listen|const QString &

/*
int maxPendingConnections () const
*/
HB_FUNC_STATIC( QLOCALSERVER_MAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maxPendingConnections () );
  }
}


/*
virtual QLocalSocket * nextPendingConnection ()
*/
HB_FUNC_STATIC( QLOCALSERVER_NEXTPENDINGCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocalSocket * ptr = obj->nextPendingConnection ();
    _qt4xhb_createReturnClass ( ptr, "QLOCALSOCKET" );
  }
}


/*
QAbstractSocket::SocketError serverError () const
*/
HB_FUNC_STATIC( QLOCALSERVER_SERVERERROR )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->serverError () );
  }
}

/*
QString serverName () const
*/
$method=|QString|serverName|

/*
void setMaxPendingConnections ( int numConnections )
*/
HB_FUNC_STATIC( QLOCALSERVER_SETMAXPENDINGCONNECTIONS )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaxPendingConnections ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool waitForNewConnection ( int msec = 0, bool * timedOut = 0 )
*/
HB_FUNC_STATIC( QLOCALSERVER_WAITFORNEWCONNECTION )
{
  QLocalServer * obj = (QLocalServer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RBOOL( obj->waitForNewConnection ( OPINT(1,0), &par2 ) );
    hb_storl( par2, 2 );
  }
}

/*
static bool removeServer ( const QString & name )
*/
$staticMethod=|bool|removeServer|const QString &

#pragma ENDDUMP
