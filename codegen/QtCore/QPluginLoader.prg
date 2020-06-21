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

$prototype=QPluginLoader ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QPluginLoader ( const QString & fileName, QObject * parent = 0 )
$internalConstructor=|new2|const QString &,QObject *=0

/*
[1]QPluginLoader ( QObject * parent = 0 )
[2]QPluginLoader ( const QString & fileName, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPluginLoader_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QPluginLoader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QString errorString() const

$prototypeV2=QString fileName() const

$prototypeV2=QObject * instance()

$prototypeV2=bool isLoaded() const

$prototypeV2=bool load()

$prototypeV2=QLibrary::LoadHints loadHints() const

$prototypeV2=void setFileName( const QString & fileName )

$prototypeV2=void setLoadHints( QLibrary::LoadHints loadHints )

$prototypeV2=bool unload()

#pragma ENDDUMP
