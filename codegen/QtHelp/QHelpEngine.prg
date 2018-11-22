%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QHelpEngineCore

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QHelpContentModel>
#include <QHelpContentWidget>
#include <QHelpIndexModel>
#include <QHelpIndexWidget>
#include <QHelpSearchEngine>

$prototype=QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
$constructor=|new|const QString &,QObject *=0

$deleteMethod

$prototype=QHelpContentModel * contentModel () const
$method=|QHelpContentModel *|contentModel|

$prototype=QHelpContentWidget * contentWidget ()
$method=|QHelpContentWidget *|contentWidget|

$prototype=QHelpIndexModel * indexModel () const
$method=|QHelpIndexModel *|indexModel|

$prototype=QHelpIndexWidget * indexWidget ()
$method=|QHelpIndexWidget *|indexWidget|

$prototype=QHelpSearchEngine * searchEngine ()
$method=|QHelpSearchEngine *|searchEngine|

#pragma ENDDUMP
