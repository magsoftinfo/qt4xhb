%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QVector2D>
#include <QtGui/QVector3D>

$prototype=QVector4D ()
$internalConstructor=|new1|

$prototype=QVector4D ( qreal xpos, qreal ypos, qreal zpos, qreal wpos )
$internalConstructor=|new2|qreal,qreal,qreal,qreal

$prototype=QVector4D ( const QPoint & point )
$internalConstructor=|new3|const QPoint &

$prototype=QVector4D ( const QPointF & point )
$internalConstructor=|new4|const QPointF &

$prototype=QVector4D ( const QVector2D & vector )
$internalConstructor=|new5|const QVector2D &

$prototype=QVector4D ( const QVector2D & vector, qreal zpos, qreal wpos )
$internalConstructor=|new6|const QVector2D &,qreal,qreal

$prototype=QVector4D ( const QVector3D & vector )
$internalConstructor=|new7|const QVector3D &

$prototype=QVector4D ( const QVector3D & vector, qreal wpos )
$internalConstructor=|new8|const QVector3D &,qreal

/*
[1]QVector4D ()
[2]QVector4D ( qreal xpos, qreal ypos, qreal zpos, qreal wpos )
[3]QVector4D ( const QPoint & point )
[4]QVector4D ( const QPointF & point )
[5]QVector4D ( const QVector2D & vector )
[6]QVector4D ( const QVector2D & vector, qreal zpos, qreal wpos )
[7]QVector4D ( const QVector3D & vector )
[8]QVector4D ( const QVector3D & vector, qreal wpos )
*/

HB_FUNC_STATIC( QVECTOR4D_NEW )
{
  if( ISNUMPAR(0) )
  {
    QVector4D_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QVector4D_new2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QVector4D_new3();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QVector4D_new4();
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    QVector4D_new5();
  }
  else if( ISNUMPAR(3) && ISQVECTOR2D(1) && ISNUM(2) && ISNUM(3) )
  {
    QVector4D_new6();
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    QVector4D_new7();
  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    QVector4D_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=qreal length () const
$method=|qreal|length|

$prototype=qreal lengthSquared () const
$method=|qreal|lengthSquared|

$prototype=void normalize ()
$method=|void|normalize|

$prototype=QVector4D normalized () const
$method=|QVector4D|normalized|

$prototype=void setW ( qreal w )
$method=|void|setW|qreal

$prototype=void setX ( qreal x )
$method=|void|setX|qreal

$prototype=void setY ( qreal y )
$method=|void|setY|qreal

$prototype=void setZ ( qreal z )
$method=|void|setZ|qreal

$prototype=QPoint toPoint () const
$method=|QPoint|toPoint|

$prototype=QPointF toPointF () const
$method=|QPointF|toPointF|

$prototype=QVector2D toVector2D () const
$method=|QVector2D|toVector2D|

$prototype=QVector2D toVector2DAffine () const
$method=|QVector2D|toVector2DAffine|

$prototype=QVector3D toVector3D () const
$method=|QVector3D|toVector3D|

$prototype=QVector3D toVector3DAffine () const
$method=|QVector3D|toVector3DAffine|

$prototype=qreal w () const
$method=|qreal|w|

$prototype=qreal x () const
$method=|qreal|x|

$prototype=qreal y () const
$method=|qreal|y|

$prototype=qreal z () const
$method=|qreal|z|

$prototype=static qreal dotProduct ( const QVector4D & v1, const QVector4D & v2 )
$staticMethod=|qreal|dotProduct|const QVector4D &,const QVector4D &

%% TODO: implementar fun��o
%% bool qFuzzyCompare ( const QVector4D & v1, const QVector4D & v2 )

$extraMethods

#pragma ENDDUMP
