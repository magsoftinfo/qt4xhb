$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHELPSEARCHQUERY
#endif

CLASS QHelpSearchQueryWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD query
   METHOD onSearch
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QHelpSearchQueryWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QHelpSearchQueryWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_NEW )
{
  QHelpSearchQueryWidget * o = new QHelpSearchQueryWidget ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QList<QHelpSearchQuery> query () const
*/
HB_FUNC_STATIC( QHELPSEARCHQUERYWIDGET_QUERY )
{
  QHelpSearchQueryWidget * obj = (QHelpSearchQueryWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QHelpSearchQuery> list = obj->query ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QHELPSEARCHQUERY" );
    #else
    pDynSym = hb_dynsymFindName( "QHELPSEARCHQUERY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QHelpSearchQuery *) new QHelpSearchQuery ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}





#pragma ENDDUMP
