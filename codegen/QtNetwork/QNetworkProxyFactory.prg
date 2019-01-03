%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

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

$prototype=virtual QList<QNetworkProxy> queryProxy ( const QNetworkProxyQuery & query = QNetworkProxyQuery() ) = 0
$virtualMethod=|QList<QNetworkProxy>|queryProxy|const QNetworkProxyQuery &=QNetworkProxyQuery()

$prototype=static QList<QNetworkProxy> proxyForQuery ( const QNetworkProxyQuery & query )
$staticMethod=|QList<QNetworkProxy>|proxyForQuery|const QNetworkProxyQuery &

$prototype=static void setApplicationProxyFactory ( QNetworkProxyFactory * factory )
$staticMethod=|void|setApplicationProxyFactory|QNetworkProxyFactory *

$prototype=static void setUseSystemConfiguration ( bool enable )
$staticMethod=|void|setUseSystemConfiguration|bool

$prototype=static QList<QNetworkProxy> systemProxyForQuery ( const QNetworkProxyQuery & query = QNetworkProxyQuery() )
$staticMethod=|QList<QNetworkProxy>|systemProxyForQuery|const QNetworkProxyQuery &=QNetworkProxyQuery()

$extraMethods

#pragma ENDDUMP
