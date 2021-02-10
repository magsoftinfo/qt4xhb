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

CLASS QFutureWatcherBase INHERIT QObject

   METHOD delete
   METHOD progressValue
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD progressText
   METHOD isStarted
   METHOD isFinished
   METHOD isRunning
   METHOD isCanceled
   METHOD isPaused
   METHOD waitForFinished
   METHOD setPendingResultsLimit
   METHOD event
   METHOD cancel
   METHOD setPaused
   METHOD pause
   METHOD resume
   METHOD togglePaused

   METHOD onStarted
   METHOD onFinished
   METHOD onCanceled
   METHOD onPaused
   METHOD onResumed
   METHOD onResultReadyAt
   METHOD onResultsReadyAt
   METHOD onProgressRangeChanged
   METHOD onProgressValueChanged
   METHOD onProgressTextChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFutureWatcherBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QFutureWatcherBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QFUTUREWATCHERBASE_DELETE )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
int progressValue() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSVALUE )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->progressValue() );
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
int progressMinimum() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSMINIMUM )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->progressMinimum() );
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
int progressMaximum() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSMAXIMUM )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->progressMaximum() );
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
QString progressText() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSTEXT )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->progressText() );
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
bool isStarted() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISSTARTED )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isStarted() );
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
bool isFinished() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISFINISHED )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isFinished() );
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
bool isRunning() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISRUNNING )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isRunning() );
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
bool isCanceled() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISCANCELED )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isCanceled() );
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
bool isPaused() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISPAUSED )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isPaused() );
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
void waitForFinished()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_WAITFORFINISHED )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->waitForFinished();
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
void setPendingResultsLimit( int limit )
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_SETPENDINGRESULTSLIMIT )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
    {
#endif
      obj->setPendingResultsLimit( PINT( 1 ) );
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
bool event( QEvent * event )
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_EVENT )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQEVENT( 1 ) )
    {
#endif
      RBOOL( obj->event( PQEVENT( 1 ) ) );
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
void cancel()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_CANCEL )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->cancel();
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
void setPaused( bool paused )
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_SETPAUSED )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISLOG( 1 ) )
    {
#endif
      obj->setPaused( PBOOL( 1 ) );
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
void pause()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PAUSE )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->pause();
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
void resume()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_RESUME )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->resume();
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
void togglePaused()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_TOGGLEPAUSED )
{
  QFutureWatcherBase * obj = static_cast< QFutureWatcherBase * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->togglePaused();
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

void QFutureWatcherBaseSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONSTARTED )
{
  QFutureWatcherBaseSlots_connect_signal( "started()", "started()" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONFINISHED )
{
  QFutureWatcherBaseSlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONCANCELED )
{
  QFutureWatcherBaseSlots_connect_signal( "canceled()", "canceled()" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONPAUSED )
{
  QFutureWatcherBaseSlots_connect_signal( "paused()", "paused()" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONRESUMED )
{
  QFutureWatcherBaseSlots_connect_signal( "resumed()", "resumed()" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONRESULTREADYAT )
{
  QFutureWatcherBaseSlots_connect_signal( "resultReadyAt(int)", "resultReadyAt(int)" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONRESULTSREADYAT )
{
  QFutureWatcherBaseSlots_connect_signal( "resultsReadyAt(int,int)", "resultsReadyAt(int,int)" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONPROGRESSRANGECHANGED )
{
  QFutureWatcherBaseSlots_connect_signal( "progressRangeChanged(int,int)", "progressRangeChanged(int,int)" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONPROGRESSVALUECHANGED )
{
  QFutureWatcherBaseSlots_connect_signal( "progressValueChanged(int)", "progressValueChanged(int)" );
}

HB_FUNC_STATIC( QFUTUREWATCHERBASE_ONPROGRESSTEXTCHANGED )
{
  QFutureWatcherBaseSlots_connect_signal( "progressTextChanged(QString)", "progressTextChanged(QString)" );
}

#pragma ENDDUMP
