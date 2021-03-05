/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QPageSetupDialog INHERIT QDialog

   METHOD new
   METHOD open
   METHOD options
   METHOD printer
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPageSetupDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPageSetupDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QPageSetupDialog( QPrinter * printer, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_NEW )
{
  if( ISBETWEEN( 1, 2 ) && ISQPRINTER( 1 ) && ( ISQWIDGET( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QPageSetupDialog * obj = new QPageSetupDialog( PQPRINTER( 1 ), OPQWIDGET( 2, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void open( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_OPEN )
{
  QPageSetupDialog * obj = static_cast< QPageSetupDialog * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISQOBJECT( 1 ) && HB_ISCHAR( 2 ) )
    {
#endif
      obj->open( PQOBJECT( 1 ), PCONSTCHAR( 2 ) );
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
QPageSetupDialog::PageSetupDialogOptions options() const
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_OPTIONS )
{
  QPageSetupDialog * obj = static_cast< QPageSetupDialog * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
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
QPrinter * printer()
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_PRINTER )
{
  QPageSetupDialog * obj = static_cast< QPageSetupDialog * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPrinter * ptr = obj->printer();
      Qt4xHb::createReturnClass( ptr, "QPRINTER", false );
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
void setOption( QPageSetupDialog::PageSetupDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_SETOPTION )
{
  QPageSetupDialog * obj = static_cast< QPageSetupDialog * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 1, 2 ) && HB_ISNUM( 1 ) && ( HB_ISLOG( 2 ) || HB_ISNIL( 2 ) ) )
    {
#endif
      obj->setOption( ( QPageSetupDialog::PageSetupDialogOption ) hb_parni( 1 ), OPBOOL( 2, true ) );
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
void setOptions( QPageSetupDialog::PageSetupDialogOptions options )
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_SETOPTIONS )
{
  QPageSetupDialog * obj = static_cast< QPageSetupDialog * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setOptions( ( QPageSetupDialog::PageSetupDialogOptions ) hb_parni( 1 ) );
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
bool testOption( QPageSetupDialog::PageSetupDialogOption option ) const
*/
HB_FUNC_STATIC( QPAGESETUPDIALOG_TESTOPTION )
{
  QPageSetupDialog * obj = static_cast< QPageSetupDialog * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->testOption( ( QPageSetupDialog::PageSetupDialogOption ) hb_parni( 1 ) ) );
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
HB_FUNC_STATIC( QPAGESETUPDIALOG_SETVISIBLE )
{
  QPageSetupDialog * obj = static_cast< QPageSetupDialog * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setVisible( PBOOL( 1 ) );
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

#pragma ENDDUMP
