/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDomEntity INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomEntity
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD nodeType
   METHOD notationName
   METHOD publicId
   METHOD systemId
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomEntity
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDomEntity>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDomEntity ()
*/
HB_FUNC_STATIC( QDOMENTITY_NEW1 )
{
  QDomEntity * o = NULL;
  o = new QDomEntity (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomEntity *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDomEntity ( const QDomEntity & x )
*/
HB_FUNC_STATIC( QDOMENTITY_NEW2 )
{
  QDomEntity * o = NULL;
  QDomEntity * par1 = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDomEntity ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDomEntity *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDomEntity ()
//[2]QDomEntity ( const QDomEntity & x )

HB_FUNC_STATIC( QDOMENTITY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMENTITY_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMENTITY(1) )
  {
    HB_FUNC_EXEC( QDOMENTITY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMENTITY_NODETYPE )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->nodeType (  ) );
  }
}


/*
QString notationName () const
*/
HB_FUNC_STATIC( QDOMENTITY_NOTATIONNAME )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->notationName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString publicId () const
*/
HB_FUNC_STATIC( QDOMENTITY_PUBLICID )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->publicId (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString systemId () const
*/
HB_FUNC_STATIC( QDOMENTITY_SYSTEMID )
{
  QDomEntity * obj = (QDomEntity *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->systemId (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}




#pragma ENDDUMP
