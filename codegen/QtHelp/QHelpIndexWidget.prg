/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QHelpIndexWidget INHERIT QListView

   DATA self_destruction INIT .F.

   METHOD activateCurrentItem
   METHOD filterIndices
   METHOD onLinkActivated
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpIndexWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QHelpIndexWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"



/*
void activateCurrentItem ()
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_ACTIVATECURRENTITEM )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->activateCurrentItem ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void filterIndices ( const QString & filter, const QString & wildcard = QString() )
*/
HB_FUNC_STATIC( QHELPINDEXWIDGET_FILTERINDICES )
{
  QHelpIndexWidget * obj = (QHelpIndexWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->filterIndices ( PQSTRING(1), OPQSTRING(2,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP