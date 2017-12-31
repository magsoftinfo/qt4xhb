$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPUSHBUTTON
REQUEST QABSTRACTBUTTON
REQUEST QPIXMAP
#endif

CLASS QMessageBox INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD addButton
   METHOD button
   METHOD buttonRole
   METHOD buttons
   METHOD clickedButton
   METHOD defaultButton
   METHOD detailedText
   METHOD escapeButton
   METHOD icon
   METHOD iconPixmap
   METHOD informativeText
   METHOD open
   METHOD removeButton
   METHOD setDefaultButton
   METHOD setDetailedText
   METHOD setEscapeButton
   METHOD setIcon
   METHOD setIconPixmap
   METHOD setInformativeText
   METHOD setStandardButtons
   METHOD setText
   METHOD setTextFormat
   METHOD setWindowModality
   METHOD setWindowTitle
   METHOD standardButton
   METHOD standardButtons
   METHOD text
   METHOD textFormat
   METHOD setVisible
   METHOD exec
   METHOD about
   METHOD aboutQt
   METHOD critical
   METHOD information
   METHOD question
   METHOD warning

   METHOD onButtonClicked

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMessageBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QMessageBox ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )
$internalConstructor=|new2|QMessageBox|QMessageBox::Icon,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::NoButton,QWidget *=0,Qt::WindowFlags=Qt::Dialog OR Qt::MSWindowsFixedSizeDialogHint

//[1]QMessageBox ( QWidget * parent = 0 )
//[2]QMessageBox ( Icon icon, const QString & title, const QString & text, StandardButtons buttons = NoButton, QWidget * parent = 0, Qt::WindowFlags f = Qt::Dialog | Qt::MSWindowsFixedSizeDialogHint )

HB_FUNC_STATIC( QMESSAGEBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QMessageBox_new1();
  }
  else if( ISBETWEEN(3,6) && ISNUM(1) && ISCHAR(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISQWIDGET(5)||ISNIL(5)) && (ISNUM(6)||ISNIL(6)) )
  {
    QMessageBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addButton ( QAbstractButton * button, ButtonRole role )
$internalMethod=|void|addButton,addButton1|QAbstractButton *,QMessageBox::ButtonRole

$prototype=QPushButton * addButton ( const QString & text, ButtonRole role )
$internalMethod=|QPushButton *|addButton,addButton2|const QString &,QMessageBox::ButtonRole

$prototype=QPushButton * addButton ( StandardButton button )
$internalMethod=|QPushButton *|addButton,addButton3|QMessageBox::StandardButton

//[1]void addButton ( QAbstractButton * button, ButtonRole role )
//[2]QPushButton * addButton ( const QString & text, ButtonRole role )
//[3]QPushButton * addButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_ADDBUTTON )
{
  if( ISNUMPAR(2) && ISQABSTRACTBUTTON(1) && ISNUM(2) )
  {
    QMessageBox_addButton1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QMessageBox_addButton2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_addButton3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QAbstractButton * button ( StandardButton which ) const
$method=|QAbstractButton *|button|QMessageBox::StandardButton

$prototype=ButtonRole buttonRole ( QAbstractButton * button ) const
$method=|QMessageBox::ButtonRole|buttonRole|QAbstractButton *

$prototype=QList<QAbstractButton *> buttons () const
HB_FUNC_STATIC( QMESSAGEBOX_BUTTONS )
{
  QMessageBox * obj = (QMessageBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAbstractButton *> list = obj->buttons ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTBUTTON" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractButton *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QAbstractButton * clickedButton () const
$method=|QAbstractButton *|clickedButton|

$prototype=QPushButton * defaultButton () const
$method=|QPushButton *|defaultButton|

$prototype=QString detailedText () const
$method=|QString|detailedText|

$prototype=QAbstractButton * escapeButton () const
$method=|QAbstractButton *|escapeButton|

$prototype=Icon icon () const
$method=|QMessageBox::Icon|icon|

$prototype=QPixmap iconPixmap () const
$method=|QPixmap|iconPixmap|

$prototype=QString informativeText () const
$method=|QString|informativeText|

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=void removeButton ( QAbstractButton * button )
$method=|void|removeButton|QAbstractButton *

$prototype=void setDefaultButton ( QPushButton * button )
$internalMethod=|void|setDefaultButton,setDefaultButton1|QPushButton *

$prototype=void setDefaultButton ( StandardButton button )
$internalMethod=|void|setDefaultButton,setDefaultButton2|QMessageBox::StandardButton

//[1]void setDefaultButton ( QPushButton * button )
//[2]void setDefaultButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETDEFAULTBUTTON )
{
  if( ISNUMPAR(1) && ISQPUSHBUTTON(1) )
  {
    QMessageBox_setDefaultButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setDefaultButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setDetailedText ( const QString & text )
$method=|void|setDetailedText|const QString &

$prototype=void setEscapeButton ( QAbstractButton * button )
$internalMethod=|void|setEscapeButton,setEscapeButton1|QAbstractButton *

$prototype=void setEscapeButton ( StandardButton button )
$internalMethod=|void|setEscapeButton,setEscapeButton2|QMessageBox::StandardButton

//[1]void setEscapeButton ( QAbstractButton * button )
//[2]void setEscapeButton ( StandardButton button )

HB_FUNC_STATIC( QMESSAGEBOX_SETESCAPEBUTTON )
{
  if( ISNUMPAR(1) && ISQABSTRACTBUTTON(1) )
  {
    QMessageBox_setEscapeButton1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMessageBox_setEscapeButton2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setIcon ( Icon )
$method=|void|setIcon|QMessageBox::Icon

$prototype=void setIconPixmap ( const QPixmap & pixmap )
$method=|void|setIconPixmap|const QPixmap &

$prototype=void setInformativeText ( const QString & text )
$method=|void|setInformativeText|const QString &

$prototype=void setStandardButtons ( StandardButtons buttons )
$method=|void|setStandardButtons|QMessageBox::StandardButtons

$prototype=void setText ( const QString & text )
$method=|void|setText|const QString &

$prototype=void setTextFormat ( Qt::TextFormat format )
$method=|void|setTextFormat|Qt::TextFormat

$prototype=void setWindowModality ( Qt::WindowModality windowModality )
$method=|void|setWindowModality|Qt::WindowModality

$prototype=void setWindowTitle ( const QString & title )
$method=|void|setWindowTitle|const QString &

$prototype=StandardButton standardButton ( QAbstractButton * button ) const
$method=|QMessageBox::StandardButton|standardButton|QAbstractButton *

$prototype=StandardButtons standardButtons () const
$method=|QMessageBox::StandardButtons|standardButtons|

$prototype=QString text () const
$method=|QString|text|

$prototype=Qt::TextFormat textFormat () const
$method=|Qt::TextFormat|textFormat|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=int exec ()
$method=|int|exec|

$prototype=static void about ( QWidget * parent, const QString & title, const QString & text )
$staticMethod=|void|about|QWidget *,const QString &,const QString &

$prototype=static void aboutQt ( QWidget * parent, const QString & title = QString() )
$staticMethod=|void|aboutQt|QWidget *,const QString &=QString()

$prototype=static StandardButton critical ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|critical|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

$prototype=static StandardButton information ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|information|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

$prototype=static StandardButton question ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|question|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

$prototype=static StandardButton warning ( QWidget * parent, const QString & title, const QString & text, StandardButtons buttons = Ok, StandardButton defaultButton = NoButton )
$staticMethod=|QMessageBox::StandardButton|warning|QWidget *,const QString &,const QString &,QMessageBox::StandardButtons=QMessageBox::Ok,QMessageBox::StandardButton=QMessageBox::NoButton

#pragma ENDDUMP
