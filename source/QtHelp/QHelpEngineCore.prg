/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QHelpEngineCore INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addCustomFilter
   METHOD autoSaveFilter
   METHOD collectionFile
   METHOD copyCollectionFile
   METHOD currentFilter
   METHOD customFilters
   METHOD customValue
   METHOD documentationFileName
   METHOD error
   METHOD fileData
   METHOD files
   METHOD filterAttributes
   METHOD findFile
   METHOD registerDocumentation
   METHOD registeredDocumentations
   METHOD removeCustomFilter
   METHOD removeCustomValue
   METHOD setAutoSaveFilter
   METHOD setCollectionFile
   METHOD setCurrentFilter
   METHOD setCustomValue
   METHOD setupData
   METHOD unregisterDocumentation
   METHOD metaData
   METHOD namespaceName

   METHOD onCurrentFilterChanged
   METHOD onSetupFinished
   METHOD onSetupStarted
   METHOD onWarning

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QHelpEngineCore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtHelp/QHelpEngineCore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QStringList>

/*
QHelpEngineCore ( const QString & collectionFile, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPENGINECORE_NEW )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QHelpEngineCore * o = new QHelpEngineCore( PQSTRING(1), OPQOBJECT(2,0) );
    Qt4xHb::_qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHELPENGINECORE_DELETE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events(obj, true);
    Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool addCustomFilter ( const QString & filterName, const QStringList & attributes )
*/
HB_FUNC_STATIC( QHELPENGINECORE_ADDCUSTOMFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
    {
#endif
      RBOOL( obj->addCustomFilter( PQSTRING(1), PQSTRINGLIST(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool autoSaveFilter () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_AUTOSAVEFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->autoSaveFilter() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString collectionFile () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_COLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->collectionFile() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool copyCollectionFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_COPYCOLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->copyCollectionFile( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString currentFilter () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CURRENTFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->currentFilter() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList customFilters () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CUSTOMFILTERS )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->customFilters() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant customValue ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->customValue( PQSTRING(1), ISNIL(2)? QVariant() : *(QVariant *) Qt4xHb::_qt4xhb_itemGetPtr(2) ) );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QVARIANT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString documentationFileName ( const QString & namespaceName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_DOCUMENTATIONFILENAME )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQSTRING( obj->documentationFileName( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString error () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_ERROR )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->error() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QByteArray fileData ( const QUrl & url ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILEDATA )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->fileData( *PQURL(1) ) );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QList<QUrl> files ( const QString namespaceName, const QStringList & filterAttributes, const QString & extensionFilter = QString() )
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILES )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISARRAY(2) && ISOPTCHAR(3) )
    {
#endif
      QList<QUrl> list = obj->files( PQSTRING(1), PQSTRINGLIST(2), OPQSTRING(3,QString()) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QURL" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QUrl *) new QUrl( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QURL", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList filterAttributes () const
*/
void QHelpEngineCore_filterAttributes1()
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->filterAttributes() );
  }
}

/*
QStringList filterAttributes ( const QString & filterName ) const
*/
void QHelpEngineCore_filterAttributes2()
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRINGLIST( obj->filterAttributes( PQSTRING(1) ) );
  }
}

//[1]QStringList filterAttributes () const
//[2]QStringList filterAttributes ( const QString & filterName ) const

HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES )
{
  if( ISNUMPAR(0) )
  {
    QHelpEngineCore_filterAttributes1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QHelpEngineCore_filterAttributes2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QUrl findFile ( const QUrl & url ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FINDFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      QUrl * ptr = new QUrl( obj->findFile( *PQURL(1) ) );
      Qt4xHb::_qt4xhb_createReturnClass( ptr, "QURL", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool registerDocumentation ( const QString & documentationFileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REGISTERDOCUMENTATION )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->registerDocumentation( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QStringList registeredDocumentations () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_REGISTEREDDOCUMENTATIONS )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->registeredDocumentations() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool removeCustomFilter ( const QString & filterName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REMOVECUSTOMFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->removeCustomFilter( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool removeCustomValue ( const QString & key )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REMOVECUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->removeCustomValue( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setAutoSaveFilter ( bool save )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETAUTOSAVEFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setAutoSaveFilter( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCollectionFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCOLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setCollectionFile( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentFilter ( const QString & filterName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCURRENTFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setCurrentFilter( PQSTRING(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool setCustomValue ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISQVARIANT(2) )
    {
#endif
      RBOOL( obj->setCustomValue( PQSTRING(1), *PQVARIANT(2) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool setupData ()
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETUPDATA )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->setupData() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool unregisterDocumentation ( const QString & namespaceName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_UNREGISTERDOCUMENTATION )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) Qt4xHb::_qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RBOOL( obj->unregisterDocumentation( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
static QVariant metaData ( const QString & documentationFileName, const QString & name )
*/
HB_FUNC_STATIC( QHELPENGINECORE_METADATA )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
#endif
    QVariant * ptr = new QVariant( QHelpEngineCore::metaData( PQSTRING(1), PQSTRING(2) ) );
    Qt4xHb::_qt4xhb_createReturnClass( ptr, "QVARIANT", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString namespaceName ( const QString & documentationFileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_NAMESPACENAME )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
#endif
    RQSTRING( QHelpEngineCore::namespaceName( PQSTRING(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QHelpEngineCoreSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QHELPENGINECORE_ONCURRENTFILTERCHANGED )
{
  QHelpEngineCoreSlots_connect_signal( "currentFilterChanged(QString)", "currentFilterChanged(QString)" );
}

HB_FUNC_STATIC( QHELPENGINECORE_ONSETUPFINISHED )
{
  QHelpEngineCoreSlots_connect_signal( "setupFinished()", "setupFinished()" );
}

HB_FUNC_STATIC( QHELPENGINECORE_ONSETUPSTARTED )
{
  QHelpEngineCoreSlots_connect_signal( "setupStarted()", "setupStarted()" );
}

HB_FUNC_STATIC( QHELPENGINECORE_ONWARNING )
{
  QHelpEngineCoreSlots_connect_signal( "warning(QString)", "warning(QString)" );
}

#pragma ENDDUMP
