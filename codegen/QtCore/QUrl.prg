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

#include <QtCore/QStringList>

$prototype=QUrl ()
$internalConstructor=|new1|

$prototype=QUrl ( const QString & url )
$internalConstructor=|new2|const QString &

$prototype=QUrl ( const QUrl & other )
$internalConstructor=|new3|const QUrl &

$prototype=QUrl ( const QString & url, ParsingMode parsingMode )
$internalConstructor=|new4|const QString &,QUrl::ParsingMode

/*
[1]QUrl ()
[2]QUrl ( const QString & url )
[3]QUrl ( const QUrl & other )
[4]QUrl ( const QString & url, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrl_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_new2();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrl_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addEncodedQueryItem ( const QByteArray & key, const QByteArray & value )
$method=|void|addEncodedQueryItem|const QByteArray &,const QByteArray &

$prototype=void addQueryItem ( const QString & key, const QString & value )
$method=|void|addQueryItem|const QString &,const QString &

$prototype=QList<QByteArray> allEncodedQueryItemValues ( const QByteArray & key ) const
$method=|QList<QByteArray>|allEncodedQueryItemValues|const QByteArray &

$prototype=QStringList allQueryItemValues ( const QString & key ) const
$method=|QStringList|allQueryItemValues|const QString &

$prototype=QString authority () const
$method=|QString|authority|

$prototype=void clear ()
$method=|void|clear|

$prototype=QByteArray encodedFragment () const
$method=|QByteArray|encodedFragment|

$prototype=QByteArray encodedHost () const
$method=|QByteArray|encodedHost|

$prototype=QByteArray encodedPassword () const
$method=|QByteArray|encodedPassword|

$prototype=QByteArray encodedPath () const
$method=|QByteArray|encodedPath|

$prototype=QByteArray encodedQuery () const
$method=|QByteArray|encodedQuery|

$prototype=QByteArray encodedQueryItemValue ( const QByteArray & key ) const
$method=|QByteArray|encodedQueryItemValue|const QByteArray &

$prototype=QByteArray encodedUserName () const
$method=|QByteArray|encodedUserName|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString fragment () const
$method=|QString|fragment|

$prototype=bool hasEncodedQueryItem ( const QByteArray & key ) const
$method=|bool|hasEncodedQueryItem|const QByteArray &

$prototype=bool hasFragment () const
$method=|bool|hasFragment|

$prototype=bool hasQuery () const
$method=|bool|hasQuery|

$prototype=bool hasQueryItem ( const QString & key ) const
$method=|bool|hasQueryItem|const QString &

$prototype=QString host () const
$method=|QString|host|

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isLocalFile () const
$method=|bool|isLocalFile|

$prototype=bool isParentOf ( const QUrl & childUrl ) const
$method=|bool|isParentOf|const QUrl &

$prototype=bool isRelative () const
$method=|bool|isRelative|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString password () const
$method=|QString|password|

$prototype=QString path () const
$method=|QString|path|

$prototype=int port () const
$internalMethod=|int|port,port1|

$prototype=int port ( int defaultPort ) const
$internalMethod=|int|port,port2|int

/*
[1]int port () const
[2]int port ( int defaultPort ) const
*/

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    QUrl_port1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QUrl_port2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=port

$prototype=QString queryItemValue ( const QString & key ) const
$method=|QString|queryItemValue|const QString &

$prototype=void removeAllEncodedQueryItems ( const QByteArray & key )
$method=|void|removeAllEncodedQueryItems|const QByteArray &

$prototype=void removeAllQueryItems ( const QString & key )
$method=|void|removeAllQueryItems|const QString &

$prototype=void removeEncodedQueryItem ( const QByteArray & key )
$method=|void|removeEncodedQueryItem|const QByteArray &

$prototype=void removeQueryItem ( const QString & key )
$method=|void|removeQueryItem|const QString &

$prototype=QUrl resolved ( const QUrl & relative ) const
$method=|QUrl|resolved|const QUrl &

$prototype=QString scheme () const
$method=|QString|scheme|

$prototype=void setAuthority ( const QString & authority )
$method=|void|setAuthority|const QString &

$prototype=void setEncodedFragment ( const QByteArray & fragment )
$method=|void|setEncodedFragment|const QByteArray &

$prototype=void setEncodedHost ( const QByteArray & host )
$method=|void|setEncodedHost|const QByteArray &

$prototype=void setEncodedPassword ( const QByteArray & password )
$method=|void|setEncodedPassword|const QByteArray &

$prototype=void setEncodedPath ( const QByteArray & path )
$method=|void|setEncodedPath|const QByteArray &

$prototype=void setEncodedQuery ( const QByteArray & query )
$method=|void|setEncodedQuery|const QByteArray &

$prototype=void setEncodedUrl ( const QByteArray & encodedUrl )
$internalMethod=|void|setEncodedUrl,setEncodedUrl1|const QByteArray &

$prototype=void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )
$internalMethod=|void|setEncodedUrl,setEncodedUrl2|const QByteArray &,QUrl::ParsingMode

/*
[1]void setEncodedUrl ( const QByteArray & encodedUrl )
[2]void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_SETENCODEDURL )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_setEncodedUrl1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_setEncodedUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setEncodedUrl

$prototype=void setEncodedUserName ( const QByteArray & userName )
$method=|void|setEncodedUserName|const QByteArray &

$prototype=void setFragment ( const QString & fragment )
$method=|void|setFragment|const QString &

$prototype=void setHost ( const QString & host )
$method=|void|setHost|const QString &

$prototype=void setPassword ( const QString & password )
$method=|void|setPassword|const QString &

$prototype=void setPath ( const QString & path )
$method=|void|setPath|const QString &

$prototype=void setPort ( int port )
$method=|void|setPort|int

$prototype=void setQueryDelimiters ( char valueDelimiter, char pairDelimiter )
$method=|void|setQueryDelimiters|char,char

$prototype=void setScheme ( const QString & scheme )
$method=|void|setScheme|const QString &

$prototype=void setUrl ( const QString & url )
$internalMethod=|void|setUrl,setUrl1|const QString &

$prototype=void setUrl ( const QString & url, ParsingMode parsingMode )
$internalMethod=|void|setUrl,setUrl2|const QString &,QUrl::ParsingMode

/*
[1]void setUrl ( const QString & url )
[2]void setUrl ( const QString & url, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_setUrl1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_setUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setUrl

$prototype=void setUserInfo ( const QString & userInfo )
$method=|void|setUserInfo|const QString &

$prototype=void setUserName ( const QString & userName )
$method=|void|setUserName|const QString &

$prototype=void swap ( QUrl & other )
$method=|void|swap|QUrl &

$prototype=QByteArray toEncoded ( FormattingOptions options = None ) const
$method=|QByteArray|toEncoded|QUrl::FormattingOptions=QUrl::None

$prototype=QString toLocalFile () const
$method=|QString|toLocalFile|

$prototype=QString toString ( FormattingOptions options = None ) const
$method=|QString|toString|QUrl::FormattingOptions=QUrl::None

$prototype=QString topLevelDomain () const
$method=|QString|topLevelDomain|

$prototype=QString userInfo () const
$method=|QString|userInfo|

$prototype=QString userName () const
$method=|QString|userName|

$prototype=static QString fromAce ( const QByteArray & domain )
$staticMethod=|QString|fromAce|const QByteArray &

$prototype=static QUrl fromEncoded ( const QByteArray & input )
$internalStaticMethod=|QUrl|fromEncoded,fromEncoded1|const QByteArray &

$prototype=static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
$internalStaticMethod=|QUrl|fromEncoded,fromEncoded2|const QByteArray &,QUrl::ParsingMode

/*
[1]QUrl fromEncoded ( const QByteArray & input )
[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_fromEncoded1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_fromEncoded2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromEncoded

$prototype=static QUrl fromLocalFile ( const QString & localFile )
$staticMethod=|QUrl|fromLocalFile|const QString &

$prototype=static QString fromPercentEncoding ( const QByteArray & input )
$staticMethod=|QString|fromPercentEncoding|const QByteArray &

$prototype=static QUrl fromUserInput ( const QString & userInput )
$staticMethod=|QUrl|fromUserInput|const QString &

$prototype=static QStringList idnWhitelist ()
$staticMethod=|QStringList|idnWhitelist|

$prototype=static void setIdnWhitelist ( const QStringList & list )
$staticMethod=|void|setIdnWhitelist|const QStringList &

$prototype=static QByteArray toAce ( const QString & domain )
$staticMethod=|QByteArray|toAce|const QString &

$prototype=static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
$staticMethod=|QByteArray|toPercentEncoding|const QString &,const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

$extraMethods

#pragma ENDDUMP
