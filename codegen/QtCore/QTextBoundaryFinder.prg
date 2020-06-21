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

$prototype=QTextBoundaryFinder()
$internalConstructor=|new1|

$prototype=QTextBoundaryFinder(const QTextBoundaryFinder &other)
$internalConstructor=|new2|const QTextBoundaryFinder &

$prototype=QTextBoundaryFinder(BoundaryType type, const QString &string)
$internalConstructor=|new3|QTextBoundaryFinder::BoundaryType,const QString &

$prototype=QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
%% TODO: implementar
%% $internalConstructor=|new4|QTextBoundaryFinder::BoundaryType,const QChar *,int,unsigned char *=0,int=0

/*
[1]QTextBoundaryFinder()
[2]QTextBoundaryFinder(const QTextBoundaryFinder &other)
[3]QTextBoundaryFinder(BoundaryType type, const QString &string)
[4]QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
*/

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextBoundaryFinder_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTBOUNDARYFINDER(1) )
  {
    QTextBoundaryFinder_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QTextBoundaryFinder_new3();
  }
%%  else if( ISBETWEEN(3,5) && ISNUM(1) && ISQCHAR(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) && (ISNUM(5)||ISNIL(5)) )
%%  {
%%    QTextBoundaryFinder_new4();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool isValid() const

$prototypeV2=QTextBoundaryFinder::BoundaryType type() const

$prototypeV2=QString string() const

$prototypeV2=void toStart()

$prototypeV2=void toEnd()

$prototypeV2=int position() const

$prototypeV2=void setPosition( int position )

$prototypeV2=int toNextBoundary()

$prototypeV2=int toPreviousBoundary()

$prototypeV2=bool isAtBoundary() const

$prototypeV2=QTextBoundaryFinder::BoundaryReasons boundaryReasons() const

$extraMethods

#pragma ENDDUMP
