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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTime()
$internalConstructor=|new1|

$prototype=QTime(int h, int m, int s = 0, int ms = 0)
$internalConstructor=|new2|int,int,int=0,int=0

/*
[1]QTime()
[2]QTime(int h, int m, int s = 0, int ms = 0)
*/

HB_FUNC_STATIC( QTIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTime_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    QTime_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QTime addMSecs( int ms ) const

$prototypeV2=QTime addSecs( int s ) const

$prototypeV2=int elapsed() const

$prototypeV2=int hour() const

$prototypeV2=bool isNull() const

$prototypeV2=int minute() const

$prototypeV2=int msec() const

$prototypeV2=int msecsTo( const QTime & t ) const

$prototypeV2=int restart()

$prototypeV2=int second() const

$prototypeV2=int secsTo( const QTime & t ) const

$prototype=bool setHMS(int h, int m, int s, int ms = 0)
$method=|bool|setHMS|int,int,int,int=0

$prototypeV2=void start()

$prototype=QString toString(const QString & format) const
$internalMethod=|QString|toString,toString1|const QString &

$prototype=QString toString(Qt::DateFormat format = Qt::TextDate) const
$internalMethod=|QString|toString,toString2|Qt::DateFormat=Qt::TextDate

/*
[1]QString toString(const QString & format) const
[2]QString toString(Qt::DateFormat format = Qt::TextDate) const
*/

HB_FUNC_STATIC( QTIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTime_toString1();
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QTime_toString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=toString

$prototypeV2=static QTime currentTime()

$prototype=static QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
$internalStaticMethod=|QTime|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

$prototype=QTime fromString(const QString & string, const QString & format)
$internalMethod=|QTime|fromString,fromString2|const QString &,const QString &

/*
[1]QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
[2]QTime fromString(const QString & string, const QString & format)
*/

HB_FUNC_STATIC( QTIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QTime_fromString1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QTime_fromString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromString

$prototype=bool isValid() const
$internalMethod=|bool|isValid,isValid1|

$prototype=static bool isValid(int h, int m, int s, int ms = 0)
$internalStaticMethod=|bool|isValid,isValid2|int,int,int,int=0

/*
[1]bool isValid() const
[2]bool isValid(int h, int m, int s, int ms = 0)
*/

HB_FUNC_STATIC( QTIME_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    QTime_isValid1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QTime_isValid2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=isValid

$extraMethods

#pragma ENDDUMP
