/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QTestEventList

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addDelay
   METHOD addKeyClick1
   METHOD addKeyClick2
   METHOD addKeyClick
   METHOD addKeyClicks
   METHOD addKeyPress1
   METHOD addKeyPress2
   METHOD addKeyPress
   METHOD addKeyRelease1
   METHOD addKeyRelease2
   METHOD addKeyRelease
   METHOD addMouseClick
   METHOD addMouseDClick
   METHOD addMouseMove
   METHOD addMousePress
   METHOD addMouseRelease
   METHOD clear
   METHOD simulate

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTestEventList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTestEventList>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTestEventList ()
*/
void QTestEventList_new1 ()
{
  QTestEventList * o = new QTestEventList ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QTestEventList ( const QTestEventList & other )
*/
void QTestEventList_new2 ()
{
  QTestEventList * o = new QTestEventList ( *PQTESTEVENTLIST(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QTestEventList ()
//[2]QTestEventList ( const QTestEventList & other )

HB_FUNC_STATIC( QTESTEVENTLIST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTestEventList_new1();
  }
  else if( ISNUMPAR(1) && ISQTESTEVENTLIST(1) )
  {
    QTestEventList_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTESTEVENTLIST_DELETE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
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
void addDelay ( int msecs )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDDELAY )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->addDelay ( PINT(1) );
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
void addKeyClick ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICK1 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addKeyClick ( (Qt::Key) hb_parni(1), ISNIL(2)? (Qt::KeyboardModifiers) Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
void addKeyClick ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICK2 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addKeyClick ( PCHAR(1), ISNIL(2)? (Qt::KeyboardModifiers) Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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

//[1]void addKeyClick ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
//[2]void addKeyClick ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )

HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICK )
{
  if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYCLICK1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYCLICK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addKeyClicks ( const QString & keys, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYCLICKS )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addKeyClicks ( PQSTRING(1), ISNIL(2)? (Qt::KeyboardModifiers) Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
void addKeyPress ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYPRESS1 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addKeyPress ( (Qt::Key) hb_parni(1), ISNIL(2)? (Qt::KeyboardModifiers) Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
void addKeyPress ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYPRESS2 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addKeyPress ( PCHAR(1), ISNIL(2)? (Qt::KeyboardModifiers) Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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

//[1]void addKeyPress ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
//[2]void addKeyPress ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )

HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYPRESS )
{
  if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYPRESS1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYPRESS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addKeyRelease ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYRELEASE1 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addKeyRelease ( (Qt::Key) hb_parni(1), ISNIL(2)? (Qt::KeyboardModifiers) Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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
void addKeyRelease ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYRELEASE2 )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->addKeyRelease ( PCHAR(1), ISNIL(2)? (Qt::KeyboardModifiers) Qt::NoModifier : (Qt::KeyboardModifiers) hb_parni(2), OPINT(3,-1) );
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

//[1]void addKeyRelease ( Qt::Key qtKey, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )
//[2]void addKeyRelease ( char ascii, Qt::KeyboardModifiers modifiers = Qt::NoModifier, int msecs = -1 )

HB_FUNC_STATIC( QTESTEVENTLIST_ADDKEYRELEASE )
{
  if( ISBETWEEN(1,3) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYRELEASE1 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTESTEVENTLIST_ADDKEYRELEASE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addMouseClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSECLICK )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && ISOPTNUM(2) && (ISQPOINT(3)||ISNIL(3)) && ISOPTNUM(4) )
    {
#endif
      obj->addMouseClick ( (Qt::MouseButton) hb_parni(1), ISNIL(2)? (Qt::KeyboardModifiers) 0 : (Qt::KeyboardModifiers) hb_parni(2), ISNIL(3)? QPoint() : *(QPoint *) _qt4xhb_itemGetPtr(3), OPINT(4,-1) );
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
void addMouseDClick ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEDCLICK )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && ISOPTNUM(2) && (ISQPOINT(3)||ISNIL(3)) && ISOPTNUM(4) )
    {
#endif
      obj->addMouseDClick ( (Qt::MouseButton) hb_parni(1), ISNIL(2)? (Qt::KeyboardModifiers) 0 : (Qt::KeyboardModifiers) hb_parni(2), ISNIL(3)? QPoint() : *(QPoint *) _qt4xhb_itemGetPtr(3), OPINT(4,-1) );
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
void addMouseMove ( QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEMOVE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,2) && (ISQPOINT(1)||ISNIL(1)) && ISOPTNUM(2) )
    {
#endif
      obj->addMouseMove ( ISNIL(1)? QPoint() : *(QPoint *) _qt4xhb_itemGetPtr(1), OPINT(2,-1) );
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
void addMousePress ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSEPRESS )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && ISOPTNUM(2) && (ISQPOINT(3)||ISNIL(3)) && ISOPTNUM(4) )
    {
#endif
      obj->addMousePress ( (Qt::MouseButton) hb_parni(1), ISNIL(2)? (Qt::KeyboardModifiers) 0 : (Qt::KeyboardModifiers) hb_parni(2), ISNIL(3)? QPoint() : *(QPoint *) _qt4xhb_itemGetPtr(3), OPINT(4,-1) );
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
void addMouseRelease ( Qt::MouseButton button, Qt::KeyboardModifiers modifiers = 0, QPoint pos = QPoint(), int delay = -1 )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_ADDMOUSERELEASE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,4) && ISNUM(1) && ISOPTNUM(2) && (ISQPOINT(3)||ISNIL(3)) && ISOPTNUM(4) )
    {
#endif
      obj->addMouseRelease ( (Qt::MouseButton) hb_parni(1), ISNIL(2)? (Qt::KeyboardModifiers) 0 : (Qt::KeyboardModifiers) hb_parni(2), ISNIL(3)? QPoint() : *(QPoint *) _qt4xhb_itemGetPtr(3), OPINT(4,-1) );
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
void clear ()
*/
HB_FUNC_STATIC( QTESTEVENTLIST_CLEAR )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
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
void simulate ( QWidget * w )
*/
HB_FUNC_STATIC( QTESTEVENTLIST_SIMULATE )
{
  QTestEventList * obj = (QTestEventList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->simulate ( PQWIDGET(1) );
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

HB_FUNC_STATIC( QTESTEVENTLIST_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTESTEVENTLIST_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTESTEVENTLIST_NEWFROM );
}

HB_FUNC_STATIC( QTESTEVENTLIST_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTESTEVENTLIST_NEWFROM );
}

HB_FUNC_STATIC( QTESTEVENTLIST_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTESTEVENTLIST_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
