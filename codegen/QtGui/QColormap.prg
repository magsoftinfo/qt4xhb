$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QCOLORMAP
#endif

CLASS QColormap

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD colorAt
   METHOD colormap
   METHOD depth
   METHOD mode
   METHOD pixel
   METHOD size
   METHOD instance

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QColormap>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QColor>

$prototype=QColormap ( const QColormap & colormap )
$constructor=|new|const QColormap &

$deleteMethod

$prototype=const QColor colorAt ( uint pixel ) const
$method=|const QColor|colorAt|uint

$prototype=const QVector<QColor> colormap () const
HB_FUNC_STATIC( QCOLORMAP_COLORMAP )
{
  QColormap * obj = (QColormap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVector<QColor> list = obj->colormap ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QCOLOR" );
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
        hb_itemPutPtr( pItem, (QColor *) new QColor ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=int depth () const
$method=|int|depth|

$prototype=Mode mode () const
$method=|QColormap::Mode|mode|

$prototype=uint pixel ( const QColor & color ) const
$method=|uint|pixel|const QColor &

$prototype=int size () const
$method=|int|size|

$prototype=static QColormap instance ( int screen = -1 )
$staticMethod=|QColormap|instance|int=-1

$extraMethods

#pragma ENDDUMP
