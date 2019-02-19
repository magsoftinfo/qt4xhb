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

CLASS QStyleOptionSpinBox INHERIT QStyleOptionComplex

   METHOD new
   METHOD buttonSymbols
   METHOD setButtonSymbols
   METHOD stepEnabled
   METHOD setStepEnabled
   METHOD frame
   METHOD setFrame

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionSpinBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionSpinBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionSpinBox()
*/
void QStyleOptionSpinBox_new1 ()
{
  QStyleOptionSpinBox * o = new QStyleOptionSpinBox ();
  _qt4xhb_returnNewObject( o, true );
}

/*
QStyleOptionSpinBox(const QStyleOptionSpinBox &other)
*/
void QStyleOptionSpinBox_new2 ()
{
  QStyleOptionSpinBox * o = new QStyleOptionSpinBox ( *PQSTYLEOPTIONSPINBOX(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QStyleOptionSpinBox(int version) (protected)
*/

//[1]QStyleOptionSpinBox()
//[2]QStyleOptionSpinBox(const QStyleOptionSpinBox &other)
//[3]QStyleOptionSpinBox(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionSpinBox_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONSPINBOX(1) )
  {
    QStyleOptionSpinBox_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractSpinBox::ButtonSymbols buttonSymbols
*/
HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_BUTTONSYMBOLS )
{
  QStyleOptionSpinBox * obj = (QStyleOptionSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->buttonSymbols  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_SETBUTTONSYMBOLS )
{
  QStyleOptionSpinBox * obj = (QStyleOptionSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->buttonSymbols = (QAbstractSpinBox::ButtonSymbols) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAbstractSpinBox::StepEnabled stepEnabled
*/
HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_STEPENABLED )
{
  QStyleOptionSpinBox * obj = (QStyleOptionSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->stepEnabled  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_SETSTEPENABLED )
{
  QStyleOptionSpinBox * obj = (QStyleOptionSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->stepEnabled = (QAbstractSpinBox::StepEnabled) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool frame
*/
HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_FRAME )
{
  QStyleOptionSpinBox * obj = (QStyleOptionSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->frame  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONSPINBOX_SETFRAME )
{
  QStyleOptionSpinBox * obj = (QStyleOptionSpinBox *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->frame = PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
