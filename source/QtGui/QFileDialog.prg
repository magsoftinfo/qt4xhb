/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTPROXYMODEL
REQUEST QBYTEARRAY
REQUEST QDIR
REQUEST QFILEICONPROVIDER
REQUEST QURL
#endif

CLASS QFileDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD acceptMode
   METHOD confirmOverwrite
   METHOD defaultSuffix
   METHOD directory
   METHOD fileMode
   METHOD filter
   METHOD history
   METHOD iconProvider
   METHOD isNameFilterDetailsVisible
   METHOD isReadOnly
   METHOD itemDelegate
   METHOD labelText
   METHOD nameFilters
   METHOD open
   METHOD options
   METHOD proxyModel
   METHOD resolveSymlinks
   METHOD restoreState
   METHOD saveState
   METHOD selectFile
   METHOD selectNameFilter
   METHOD selectedFiles
   METHOD selectedNameFilter
   METHOD setAcceptMode
   METHOD setConfirmOverwrite
   METHOD setDefaultSuffix
   METHOD setDirectory
   METHOD setFileMode
   METHOD setFilter
   METHOD setHistory
   METHOD setIconProvider
   METHOD setItemDelegate
   METHOD setLabelText
   METHOD setNameFilter
   METHOD setNameFilterDetailsVisible
   METHOD setNameFilters
   METHOD setOption
   METHOD setOptions
   METHOD setProxyModel
   METHOD setReadOnly
   METHOD setResolveSymlinks
   METHOD setSidebarUrls
   METHOD setViewMode
   METHOD sidebarUrls
   METHOD testOption
   METHOD viewMode
   METHOD setVisible
   METHOD getExistingDirectory
   METHOD getOpenFileName
   METHOD getOpenFileNames
   METHOD getSaveFileName

   METHOD onCurrentChanged
   METHOD onDirectoryEntered
   METHOD onFileSelected
   METHOD onFilesSelected
   METHOD onFilterSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFileDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QFileDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QUrl>
#include <QtGui/QAbstractItemDelegate>
#include <QtGui/QAbstractProxyModel>

/*
QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
*/
void QFileDialog_new1()
{
  QFileDialog * obj = new QFileDialog( PQWIDGET(1), (Qt::WindowFlags) hb_parni(2) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/
void QFileDialog_new2()
{
  QFileDialog * obj = new QFileDialog( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QFileDialog ( QWidget * parent, Qt::WindowFlags flags )
[2]QFileDialog ( QWidget * parent = 0, const QString & caption = QString(), const QString & directory = QString(), const QString & filter = QString() )
*/

HB_FUNC_STATIC( QFILEDIALOG_NEW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QFileDialog_new1();
  }
  else if( ISBETWEEN(0,4) && (ISQWIDGET(1)||ISNIL(1)) && (ISCHAR(2)||ISNIL(2)) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    QFileDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFILEDIALOG_DELETE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
QFileDialog::AcceptMode acceptMode() const
*/
HB_FUNC_STATIC( QFILEDIALOG_ACCEPTMODE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->acceptMode() );
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
bool confirmOverwrite() const
*/
HB_FUNC_STATIC( QFILEDIALOG_CONFIRMOVERWRITE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->confirmOverwrite() );
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
QString defaultSuffix() const
*/
HB_FUNC_STATIC( QFILEDIALOG_DEFAULTSUFFIX )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->defaultSuffix() );
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
QDir directory() const
*/
HB_FUNC_STATIC( QFILEDIALOG_DIRECTORY )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDir * ptr = new QDir( obj->directory() );
      Qt4xHb::createReturnClass( ptr, "QDIR", true );
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
QFileDialog::FileMode fileMode() const
*/
HB_FUNC_STATIC( QFILEDIALOG_FILEMODE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->fileMode() );
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
QDir::Filters filter() const
*/
HB_FUNC_STATIC( QFILEDIALOG_FILTER )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->filter() );
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
QStringList history() const
*/
HB_FUNC_STATIC( QFILEDIALOG_HISTORY )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->history() );
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
QFileIconProvider * iconProvider() const
*/
HB_FUNC_STATIC( QFILEDIALOG_ICONPROVIDER )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QFileIconProvider * ptr = obj->iconProvider();
      Qt4xHb::createReturnClass( ptr, "QFILEICONPROVIDER", false );
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
bool isNameFilterDetailsVisible() const
*/
HB_FUNC_STATIC( QFILEDIALOG_ISNAMEFILTERDETAILSVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNameFilterDetailsVisible() );
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
bool isReadOnly() const
*/
HB_FUNC_STATIC( QFILEDIALOG_ISREADONLY )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly() );
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
QAbstractItemDelegate * itemDelegate() const
*/
HB_FUNC_STATIC( QFILEDIALOG_ITEMDELEGATE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemDelegate * ptr = obj->itemDelegate();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMDELEGATE" );
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
QString labelText( QFileDialog::DialogLabel label ) const
*/
HB_FUNC_STATIC( QFILEDIALOG_LABELTEXT )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQSTRING( obj->labelText( (QFileDialog::DialogLabel) hb_parni(1) ) );
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
QStringList nameFilters() const
*/
HB_FUNC_STATIC( QFILEDIALOG_NAMEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->nameFilters() );
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
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QFILEDIALOG_OPEN )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
    {
#endif
      obj->open( PQOBJECT(1), PCONSTCHAR(2) );
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
QFileDialog::Options options() const
*/
HB_FUNC_STATIC( QFILEDIALOG_OPTIONS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->options() );
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
QAbstractProxyModel * proxyModel() const
*/
HB_FUNC_STATIC( QFILEDIALOG_PROXYMODEL )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractProxyModel * ptr = obj->proxyModel();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTPROXYMODEL" );
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
bool resolveSymlinks() const
*/
HB_FUNC_STATIC( QFILEDIALOG_RESOLVESYMLINKS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->resolveSymlinks() );
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
bool restoreState( const QByteArray & state )
*/
HB_FUNC_STATIC( QFILEDIALOG_RESTORESTATE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      RBOOL( obj->restoreState( *PQBYTEARRAY(1) ) );
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
QByteArray saveState() const
*/
HB_FUNC_STATIC( QFILEDIALOG_SAVESTATE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->saveState() );
      Qt4xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
void selectFile( const QString & filename )
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTFILE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->selectFile( PQSTRING(1) );
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
void selectNameFilter( const QString & filter )
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->selectNameFilter( PQSTRING(1) );
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
QStringList selectedFiles() const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDFILES )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->selectedFiles() );
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
QString selectedNameFilter() const
*/
HB_FUNC_STATIC( QFILEDIALOG_SELECTEDNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->selectedNameFilter() );
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
void setAcceptMode( QFileDialog::AcceptMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETACCEPTMODE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setAcceptMode( (QFileDialog::AcceptMode) hb_parni(1) );
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
void setConfirmOverwrite( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETCONFIRMOVERWRITE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setConfirmOverwrite( PBOOL(1) );
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
void setDefaultSuffix( const QString & suffix )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETDEFAULTSUFFIX )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setDefaultSuffix( PQSTRING(1) );
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
void setDirectory ( const QString & directory )
*/
void QFileDialog_setDirectory1()
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDirectory( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDirectory ( const QDir & directory )
*/
void QFileDialog_setDirectory2()
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDirectory( *PQDIR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setDirectory ( const QString & directory )
[2]void setDirectory ( const QDir & directory )
*/

HB_FUNC_STATIC( QFILEDIALOG_SETDIRECTORY )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFileDialog_setDirectory1();
  }
  else if( ISNUMPAR(1) && ISQDIR(1) )
  {
    QFileDialog_setDirectory2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFileMode( QFileDialog::FileMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETFILEMODE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFileMode( (QFileDialog::FileMode) hb_parni(1) );
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
void setFilter( QDir::Filters filters )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETFILTER )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFilter( (QDir::Filters) hb_parni(1) );
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
void setHistory( const QStringList & paths )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETHISTORY )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setHistory( PQSTRINGLIST(1) );
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
void setIconProvider( QFileIconProvider * provider )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETICONPROVIDER )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQFILEICONPROVIDER(1) )
    {
#endif
      obj->setIconProvider( PQFILEICONPROVIDER(1) );
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
void setItemDelegate( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETITEMDELEGATE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMDELEGATE(1) )
    {
#endif
      obj->setItemDelegate( PQABSTRACTITEMDELEGATE(1) );
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
void setLabelText( QFileDialog::DialogLabel label, const QString & text )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETLABELTEXT )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
#endif
      obj->setLabelText( (QFileDialog::DialogLabel) hb_parni(1), PQSTRING(2) );
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
void setNameFilter( const QString & filter )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTER )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setNameFilter( PQSTRING(1) );
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
void setNameFilterDetailsVisible( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTERDETAILSVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setNameFilterDetailsVisible( PBOOL(1) );
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
void setNameFilters( const QStringList & filters )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETNAMEFILTERS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setNameFilters( PQSTRINGLIST(1) );
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
void setOption ( Option option, bool on = true )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETOPTION )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTLOG(2) )
    {
#endif
      obj->setOption( (QFileDialog::Option) hb_parni(1), OPBOOL(2,true) );
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
void setOptions( QFileDialog::Options options )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETOPTIONS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOptions( (QFileDialog::Options) hb_parni(1) );
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
void setProxyModel( QAbstractProxyModel * proxyModel )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETPROXYMODEL )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTPROXYMODEL(1) )
    {
#endif
      obj->setProxyModel( PQABSTRACTPROXYMODEL(1) );
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
void setReadOnly( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETREADONLY )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setReadOnly( PBOOL(1) );
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
void setResolveSymlinks( bool enabled )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETRESOLVESYMLINKS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setResolveSymlinks( PBOOL(1) );
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
void setSidebarUrls( const QList<QUrl> & urls )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETSIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QUrl> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->setSidebarUrls( par1 );
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
void setViewMode( QFileDialog::ViewMode mode )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETVIEWMODE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setViewMode( (QFileDialog::ViewMode) hb_parni(1) );
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
QList<QUrl> sidebarUrls() const
*/
HB_FUNC_STATIC( QFILEDIALOG_SIDEBARURLS )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QUrl> list = obj->sidebarUrls();
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
bool testOption( QFileDialog::Option option ) const
*/
HB_FUNC_STATIC( QFILEDIALOG_TESTOPTION )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->testOption( (QFileDialog::Option) hb_parni(1) ) );
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
QFileDialog::ViewMode viewMode() const
*/
HB_FUNC_STATIC( QFILEDIALOG_VIEWMODE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->viewMode() );
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
virtual void setVisible( bool visible )
*/
HB_FUNC_STATIC( QFILEDIALOG_SETVISIBLE )
{
  QFileDialog * obj = (QFileDialog *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setVisible( PBOOL(1) );
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
static QString getExistingDirectory ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), Options options = ShowDirsOnly )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETEXISTINGDIRECTORY )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0,4) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTNUM(4) )
  {
#endif
    RQSTRING( QFileDialog::getExistingDirectory( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), ISNIL(4)? (QFileDialog::Options) QFileDialog::ShowDirsOnly : (QFileDialog::Options) hb_parni(4) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString getOpenFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAME )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0,6) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) )
  {
#endif
    RQSTRING( QFileDialog::getOpenFileName( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), NULL, ISNIL(6)? (QFileDialog::Options) 0 : (QFileDialog::Options) hb_parni(6) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QStringList getOpenFileNames ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETOPENFILENAMES )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0,6) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) )
  {
#endif
    RQSTRINGLIST( QFileDialog::getOpenFileNames( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), NULL, ISNIL(6)? (QFileDialog::Options) 0 : (QFileDialog::Options) hb_parni(6) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString getSaveFileName ( QWidget * parent = 0, const QString & caption = QString(), const QString & dir = QString(), const QString & filter = QString(), QString * selectedFilter = 0, Options options = 0 )
*/
HB_FUNC_STATIC( QFILEDIALOG_GETSAVEFILENAME )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(0,6) && (ISQWIDGET(1)||ISNIL(1)) && ISOPTCHAR(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTCHAR(5) && ISOPTNUM(6) )
  {
#endif
    RQSTRING( QFileDialog::getSaveFileName( OPQWIDGET(1,0), OPQSTRING(2,QString()), OPQSTRING(3,QString()), OPQSTRING(4,QString()), NULL, ISNIL(6)? (QFileDialog::Options) 0 : (QFileDialog::Options) hb_parni(6) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QFileDialogSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QFILEDIALOG_ONCURRENTCHANGED )
{
  QFileDialogSlots_connect_signal( "currentChanged(QString)", "currentChanged(QString)" );
}

HB_FUNC_STATIC( QFILEDIALOG_ONDIRECTORYENTERED )
{
  QFileDialogSlots_connect_signal( "directoryEntered(QString)", "directoryEntered(QString)" );
}

HB_FUNC_STATIC( QFILEDIALOG_ONFILESELECTED )
{
  QFileDialogSlots_connect_signal( "fileSelected(QString)", "fileSelected(QString)" );
}

HB_FUNC_STATIC( QFILEDIALOG_ONFILESSELECTED )
{
  QFileDialogSlots_connect_signal( "filesSelected(QStringList)", "filesSelected(QStringList)" );
}

HB_FUNC_STATIC( QFILEDIALOG_ONFILTERSELECTED )
{
  QFileDialogSlots_connect_signal( "filterSelected(QString)", "filterSelected(QString)" );
}

#pragma ENDDUMP
