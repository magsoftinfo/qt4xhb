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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QObjectCleanupHandler()
$constructor=|new|

$deleteMethod

$prototypeV2=QObject * add( QObject * object )

$prototypeV2=void remove( QObject * object )

$prototypeV2=bool isEmpty() const

$prototypeV2=void clear()

#pragma ENDDUMP
