/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QScriptSyntaxCheckResult

   DATA pointer
   DATA class_id INIT Class_Id_QScriptSyntaxCheckResult
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD errorColumnNumber
   METHOD errorLineNumber
   METHOD errorMessage
   METHOD state
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QScriptSyntaxCheckResult
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QScriptSyntaxCheckResult
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QScriptSyntaxCheckResult
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QScriptSyntaxCheckResult
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QScriptSyntaxCheckResult
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QScriptSyntaxCheckResult
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QScriptSyntaxCheckResult>

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
QScriptSyntaxCheckResult ( const QScriptSyntaxCheckResult & other )
*/
HB_FUNC( QSCRIPTSYNTAXCHECKRESULT_NEW )
{
  QScriptSyntaxCheckResult * o = NULL;
  QScriptSyntaxCheckResult * par1 = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QScriptSyntaxCheckResult ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QScriptSyntaxCheckResult *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QSCRIPTSYNTAXCHECKRESULT_DELETE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int errorColumnNumber () const
*/
HB_FUNC( QSCRIPTSYNTAXCHECKRESULT_ERRORCOLUMNNUMBER )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->errorColumnNumber (  );
    hb_retni( i );
  }
}


/*
int errorLineNumber () const
*/
HB_FUNC( QSCRIPTSYNTAXCHECKRESULT_ERRORLINENUMBER )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->errorLineNumber (  );
    hb_retni( i );
  }
}


/*
QString errorMessage () const
*/
HB_FUNC( QSCRIPTSYNTAXCHECKRESULT_ERRORMESSAGE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->errorMessage (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
State state () const
*/
HB_FUNC( QSCRIPTSYNTAXCHECKRESULT_STATE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->state (  );
    hb_retni( i );
  }
}





#pragma ENDDUMP
