/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTimer INHERIT QObject

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start
   METHOD stop
   METHOD singleShot

   METHOD onTimeout

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QTimer ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTIMER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QTimer * o = new QTimer( OPQOBJECT(1,0) );
    Qt4xHb::returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTIMER_DELETE )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
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
int interval () const
*/
HB_FUNC_STATIC( QTIMER_INTERVAL )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->interval() );
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
bool isActive () const
*/
HB_FUNC_STATIC( QTIMER_ISACTIVE )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isActive() );
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
bool isSingleShot () const
*/
HB_FUNC_STATIC( QTIMER_ISSINGLESHOT )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSingleShot() );
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
void setInterval ( int msec )
*/
HB_FUNC_STATIC( QTIMER_SETINTERVAL )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setInterval( PINT(1) );
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
void setSingleShot ( bool singleShot )
*/
HB_FUNC_STATIC( QTIMER_SETSINGLESHOT )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSingleShot( PBOOL(1) );
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
int timerId () const
*/
HB_FUNC_STATIC( QTIMER_TIMERID )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->timerId() );
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
void start ( int msec )
*/
void QTimer_start1()
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start( PINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start ()
*/
void QTimer_start2()
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->start();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
void stop ()
*/
HB_FUNC_STATIC( QTIMER_STOP )
{
  QTimer * obj = (QTimer *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
static void singleShot ( int msec, QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QTIMER_SINGLESHOT )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(3) && ISNUM(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
#endif
    QTimer::singleShot( PINT(1), PQOBJECT(2), PCONSTCHAR(3) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif

  hb_itemReturn( hb_stackSelfItem() );
}

void QTimerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QTIMER_ONTIMEOUT )
{
  QTimerSlots_connect_signal( "timeout()", "timeout()" );
}

#pragma ENDDUMP
