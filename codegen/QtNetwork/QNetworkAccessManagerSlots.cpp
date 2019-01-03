%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$slot=|authenticationRequired( QNetworkReply * reply, QAuthenticator * authenticator )
$slot=|finished( QNetworkReply * reply )
$slot=|networkAccessibleChanged( QNetworkAccessManager::NetworkAccessibility accessible )
$slot=|proxyAuthenticationRequired( const QNetworkProxy & proxy, QAuthenticator * authenticator )
$slot=|sslErrors( QNetworkReply * reply, const QList<QSslError> & errors )
$endSlotsClass
