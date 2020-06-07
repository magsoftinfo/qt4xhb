%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSql

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSql/QSqlQuery>
#include <QtSql/QSqlError>
#include <QtCore/QStringList>
#include <QtSql/QSqlIndex>
#include <QtSql/QSqlRecord>
#include <QtSql/QSqlDriver>

$prototype=QSqlDatabase ()
$internalConstructor=|new1|

$prototype=QSqlDatabase ( const QSqlDatabase & other )
$internalConstructor=|new2|const QSqlDatabase &

/*
[1]QSqlDatabase ()
[2]QSqlDatabase ( const QSqlDatabase & other )
*/

HB_FUNC_STATIC( QSQLDATABASE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSqlDatabase_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLDATABASE(1) )
  {
    QSqlDatabase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void close ()
$method=|void|close|

$prototypeV2=bool commit()

$prototype=QString connectOptions () const
$method=|QString|connectOptions|

$prototype=QString connectionName () const
$method=|QString|connectionName|

$prototype=QString databaseName () const
$method=|QString|databaseName|

$prototype=QSqlDriver * driver () const
$method=|QSqlDriver *|driver|

$prototype=QString driverName () const
$method=|QString|driverName|

$prototype=QSqlQuery exec ( const QString & query = QString() ) const
$method=|QSqlQuery|exec|const QString &=QString()

$prototype=QString hostName () const
$method=|QString|hostName|

$prototypeV2=bool isOpen() const

$prototypeV2=bool isOpenError() const

$prototypeV2=bool isValid() const

$prototype=QSqlError lastError () const
$method=|QSqlError|lastError|

$prototype=QSql::NumericalPrecisionPolicy numericalPrecisionPolicy () const
$method=|QSql::NumericalPrecisionPolicy|numericalPrecisionPolicy|

$prototype=bool open ()
$internalMethod=|bool|open,open1|

$prototype=bool open ( const QString & user, const QString & password )
$internalMethod=|bool|open,open2|const QString &,const QString &

/*
[1]bool open ()
[2]bool open ( const QString & user, const QString & password )
*/

HB_FUNC_STATIC( QSQLDATABASE_OPEN )
{
  if( ISNUMPAR(0) )
  {
    QSqlDatabase_open1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QSqlDatabase_open2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=open

$prototype=QString password () const
$method=|QString|password|

$prototypeV2=int port() const

$prototype=QSqlIndex primaryIndex ( const QString & tablename ) const
$method=|QSqlIndex|primaryIndex|const QString &

$prototype=QSqlRecord record ( const QString & tablename ) const
$method=|QSqlRecord|record|const QString &

$prototypeV2=bool rollback()

$prototype=void setConnectOptions ( const QString & options = QString() )
$method=|void|setConnectOptions|const QString &=QString()

$prototype=void setDatabaseName ( const QString & name )
$method=|void|setDatabaseName|const QString &

$prototype=void setHostName ( const QString & host )
$method=|void|setHostName|const QString &

$prototype=void setNumericalPrecisionPolicy ( QSql::NumericalPrecisionPolicy precisionPolicy )
$method=|void|setNumericalPrecisionPolicy|QSql::NumericalPrecisionPolicy

$prototype=void setPassword ( const QString & password )
$method=|void|setPassword|const QString &

$prototype=void setPort ( int port )
$method=|void|setPort|int

$prototype=void setUserName ( const QString & name )
$method=|void|setUserName|const QString &

$prototype=QStringList tables ( QSql::TableType type = QSql::Tables ) const
$method=|QStringList|tables|QSql::TableType=QSql::Tables

$prototypeV2=bool transaction()

$prototype=QString userName () const
$method=|QString|userName|

$prototype=static QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
$internalStaticMethod=|QSqlDatabase|addDatabase,addDatabase1|const QString &,const QString &=QLatin1String( QSqlDatabase::defaultConnection )
%% void QSqlDatabase_addDatabase1 ()
%% {
%%   QString par2; // TODO: revisar
%%   if( ISNIL(2) )
%%   {
%%     par2 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par2 = hb_parc(2);
%%   }
%%   QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( PQSTRING(1), par2 ) );
%%   PHB_DYNS pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
%%   if( pDynSym )
%%   {
%%     hb_vmPushDynSym( pDynSym );
%%     hb_vmPushNil();
%%     hb_vmDo( 0 );
%%     PHB_ITEM pObject = hb_itemNew( NULL );
%%     hb_itemCopy( pObject, hb_stackReturnItem() );
%%     PHB_ITEM pItem = hb_itemNew( NULL );
%%     hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
%%     hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
%%     hb_itemReturn( pObject );
%%     hb_itemRelease( pObject );
%%     hb_itemRelease( pItem );
%%   }
%% }

$prototype=static QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
$internalStaticMethod=|QSqlDatabase|addDatabase,addDatabase2|QSqlDriver *,const QString &=QLatin1String( QSqlDatabase::defaultConnection )
%% void QSqlDatabase_addDatabase2 ()
%% {
%%   QSqlDriver * par1 = (QSqlDriver *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
%%   QString par2; // TODO: revisar
%%   if( ISNIL(2) )
%%   {
%%     par2 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par2 = hb_parc(2);
%%   }
%%   QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::addDatabase ( par1, par2 ) );
%%   PHB_DYNS pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
%%   if( pDynSym )
%%   {
%%     hb_vmPushDynSym( pDynSym );
%%     hb_vmPushNil();
%%     hb_vmDo( 0 );
%%     PHB_ITEM pObject = hb_itemNew( NULL );
%%     hb_itemCopy( pObject, hb_stackReturnItem() );
%%     PHB_ITEM pItem = hb_itemNew( NULL );
%%     hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
%%     hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
%%     hb_itemReturn( pObject );
%%     hb_itemRelease( pObject );
%%     hb_itemRelease( pItem );
%%   }
%% }

/*
[1]QSqlDatabase addDatabase ( const QString & type, const QString & connectionName = QLatin1String( defaultConnection ) )
[2]QSqlDatabase addDatabase ( QSqlDriver * driver, const QString & connectionName = QLatin1String( defaultConnection ) )
*/

HB_FUNC_STATIC( QSQLDATABASE_ADDDATABASE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QSqlDatabase_addDatabase1();
  }
  else if( ISBETWEEN(1,2) && ISQSQLDRIVER(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    QSqlDatabase_addDatabase2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addDatabase

$prototype=static QSqlDatabase cloneDatabase ( const QSqlDatabase & other, const QString & connectionName )
$staticMethod=|QSqlDatabase|cloneDatabase|const QSqlDatabase &,const QString &

$prototype=static QStringList connectionNames ()
$staticMethod=|QStringList|connectionNames|

$prototype=static bool contains ( const QString & connectionName = QLatin1String( defaultConnection ) )
$staticMethod=|bool|contains|const QString &=QLatin1String( QSqlDatabase::defaultConnection )
%% HB_FUNC_STATIC( QSQLDATABASE_CONTAINS )
%% {
%%   QString par1; // TODO: revisar
%%   if( ISNIL(1) )
%%   {
%%     par1 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par1 = hb_parc(1);
%%   }
%%   RBOOL( QSqlDatabase::contains ( par1 ) );
%% }

$prototype=static QSqlDatabase database ( const QString & connectionName = QLatin1String( defaultConnection ), bool open = true )
$staticMethod=|QSqlDatabase|database|const QString &=QLatin1String( QSqlDatabase::defaultConnection ),bool=true
%% HB_FUNC_STATIC( QSQLDATABASE_DATABASE )
%% {
%%   QString par1; // TODO: revisar
%%   if( ISNIL(1) )
%%   {
%%     par1 = QLatin1String(QSqlDatabase::defaultConnection);
%%   }
%%   else
%%   {
%%     par1 = hb_parc(1);
%%   }
%%   QSqlDatabase * ptr = new QSqlDatabase( QSqlDatabase::database ( par1, OPBOOL(2,true) ) );
%%   PHB_DYNS pDynSym = hb_dynsymFindName( "QSQLDATABASE" );
%%   if( pDynSym )
%%   {
%%     hb_vmPushDynSym( pDynSym );
%%     hb_vmPushNil();
%%     hb_vmDo( 0 );
%%     PHB_ITEM pObject = hb_itemNew( NULL );
%%     hb_itemCopy( pObject, hb_stackReturnItem() );
%%     PHB_ITEM pItem = hb_itemNew( NULL );
%%     hb_itemPutPtr( pItem, (QSqlDatabase *) ptr );
%%     hb_objSendMsg( pObject, "NEWFROMPOINTER", 1, pItem );
%%     hb_itemReturn( pObject );
%%     hb_itemRelease( pObject );
%%     hb_itemRelease( pItem );
%%   }
%% }

$prototype=static QStringList drivers ()
$staticMethod=|QStringList|drivers|

$prototype=static bool isDriverAvailable ( const QString & name )
$staticMethod=|bool|isDriverAvailable|const QString &

$prototype=static void registerSqlDriver ( const QString & name, QSqlDriverCreatorBase * creator )
$staticMethod=|void|registerSqlDriver|const QString &,QSqlDriverCreatorBase *

$prototype=static void removeDatabase ( const QString & connectionName )
$staticMethod=|void|removeDatabase|const QString &

$extraMethods

#pragma ENDDUMP
