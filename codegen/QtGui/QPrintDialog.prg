%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractPrintDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
$internalConstructor=|new1|QPrinter *,QWidget *=0

$prototype=QPrintDialog ( QWidget * parent = 0 )
$internalConstructor=|new2|QWidget *=0

/*
[1]QPrintDialog ( QPrinter * printer, QWidget * parent = 0 )
[2]QPrintDialog ( QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QPRINTDIALOG_NEW )
{
  if( ISBETWEEN(1,2) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPrintDialog_new1();
  }
  else if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPrintDialog_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=PrintDialogOptions options () const
$method=|QPrintDialog::PrintDialogOptions|options|

$prototype=QPrinter * printer ()
$method=|QPrinter *|printer|

$prototype=void setOption ( PrintDialogOption option, bool on = true )
$method=|void|setOption|QPrintDialog::PrintDialogOption,bool=true

$prototype=void setOptions ( PrintDialogOptions options )
$method=|void|setOptions|QPrintDialog::PrintDialogOptions

$prototype=bool testOption ( PrintDialogOption option ) const
$method=|bool|testOption|QPrintDialog::PrintDialogOption

$prototype=virtual void done ( int result )
$virtualMethod=|void|done|int

$prototype=virtual int exec ()
$virtualMethod=|int|exec|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$beginSignals
$signal=|accepted(QPrinter*)
$endSignals

#pragma ENDDUMP
