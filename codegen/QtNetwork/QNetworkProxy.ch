/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QNetworkProxy::Capability
flags QNetworkProxy::Capabilities
*/
#define QNetworkProxy_TunnelingCapability                            0x0001
#define QNetworkProxy_ListeningCapability                            0x0002
#define QNetworkProxy_UdpTunnelingCapability                         0x0004
#define QNetworkProxy_CachingCapability                              0x0008
#define QNetworkProxy_HostNameLookupCapability                       0x0010

/*
enum QNetworkProxy::ProxyType
*/
#define QNetworkProxy_NoProxy                                        2
#define QNetworkProxy_DefaultProxy                                   0
#define QNetworkProxy_Socks5Proxy                                    1
#define QNetworkProxy_HttpProxy                                      3
#define QNetworkProxy_HttpCachingProxy                               4
#define QNetworkProxy_FtpCachingProxy                                5