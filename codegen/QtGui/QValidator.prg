/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

CLASS QValidator INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD fixup
   METHOD locale
   METHOD setLocale
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QValidator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QVALIDATOR_DELETE )
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QVALIDATOR_FIXUP ) // TODO: revisar a implementacao e corrigir
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QLocale locale () const
*/
HB_FUNC_STATIC( QVALIDATOR_LOCALE )
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC_STATIC( QVALIDATOR_SETLOCALE )
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual State validate ( QString & input, int & pos ) const = 0
*/
HB_FUNC_STATIC( QVALIDATOR_VALIDATE ) // TODO: revisar a implementacao e corrigir
{
  QValidator * obj = (QValidator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2;
    hb_retni( (int) obj->validate ( par1, par2 ) );
  }
}

#pragma ENDDUMP