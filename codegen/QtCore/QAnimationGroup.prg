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

$beginClassFrom=QAbstractAnimation

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=void addAnimation( QAbstractAnimation * animation )

$prototypeV2=QAbstractAnimation * animationAt( int index ) const

$prototypeV2=int animationCount() const

$prototypeV2=void clear()

$prototypeV2=int indexOfAnimation( QAbstractAnimation * animation ) const

$prototype=void insertAnimation ( int index, QAbstractAnimation * animation )
$method=|void|insertAnimation|int,QAbstractAnimation *

$prototypeV2=void removeAnimation( QAbstractAnimation * animation )

$prototypeV2=QAbstractAnimation * takeAnimation( int index )

#pragma ENDDUMP
