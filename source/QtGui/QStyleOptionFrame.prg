/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QStyleOptionFrame INHERIT QStyleOption

   METHOD new
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QStyleOptionFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleOptionFrame()
*/
void QStyleOptionFrame_new1()
{
  QStyleOptionFrame * obj = new QStyleOptionFrame();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QStyleOptionFrame( const QStyleOptionFrame & other )
*/
void QStyleOptionFrame_new2()
{
  QStyleOptionFrame * obj = new QStyleOptionFrame( *PQSTYLEOPTIONFRAME( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONFRAME_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QStyleOptionFrame_new1();
  }
  else if( ISNUMPAR( 1 ) && ISQSTYLEOPTIONFRAME( 1 ) )
  {
    QStyleOptionFrame_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_LINEWIDTH )
{
  QStyleOptionFrame * obj = static_cast< QStyleOptionFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RINT( obj->lineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETLINEWIDTH )
{
  QStyleOptionFrame * obj = static_cast< QStyleOptionFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->lineWidth= PINT( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_MIDLINEWIDTH )
{
  QStyleOptionFrame * obj = static_cast< QStyleOptionFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 0 ) )
    {
      RINT( obj->midLineWidth );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONFRAME_SETMIDLINEWIDTH )
{
  QStyleOptionFrame * obj = static_cast< QStyleOptionFrame * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
      obj->midLineWidth= PINT( 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
