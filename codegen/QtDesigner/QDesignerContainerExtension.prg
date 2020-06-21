%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual void addWidget( QWidget * page ) = 0

$prototypeV2=virtual int count() const = 0

$prototypeV2=virtual int currentIndex() const = 0

$prototype=virtual void insertWidget ( int index, QWidget * page ) = 0
$virtualMethod=|void|insertWidget|int,QWidget *

$prototypeV2=virtual void remove( int index ) = 0

$prototypeV2=virtual void setCurrentIndex( int index ) = 0

$prototypeV2=virtual QWidget * widget( int index ) const = 0

$extraMethods

#pragma ENDDUMP
