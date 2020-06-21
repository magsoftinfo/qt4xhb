%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimer ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=int interval() const

$prototypeV2=bool isActive() const

$prototypeV2=bool isSingleShot() const

$prototypeV2=void setInterval( int msec )

$prototypeV2=void setSingleShot( bool singleShot )

$prototypeV2=int timerId() const

$prototype=void start ( int msec )
$internalMethod=|void|start,start1|int

$prototype=void start ()
$internalMethod=|void|start,start2|

/*
[1]void start ( int msec )
[2]void start ()
*/

HB_FUNC_STATIC( QTIMER_START )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTimer_start1();
  }
  else if( ISNUMPAR(0) )
  {
    QTimer_start2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=start

$prototypeV2=void stop()

$prototype=static void singleShot ( int msec, QObject * receiver, const char * member )
$staticMethod=|void|singleShot|int,QObject *,const char *

$beginSignals
$signal=|timeout()
$endSignals

#pragma ENDDUMP
