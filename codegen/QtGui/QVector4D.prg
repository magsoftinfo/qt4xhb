$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR4D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR2D
REQUEST QVECTOR3D
#endif

CLASS QVector4D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setW
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD toPoint
   METHOD toPointF
   METHOD toVector2D
   METHOD toVector2DAffine
   METHOD toVector3D
   METHOD toVector3DAffine
   METHOD w
   METHOD x
   METHOD y
   METHOD z
   METHOD dotProduct

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QVector4D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector2D>
#include <QVector3D>

/*
QVector4D ()
*/
$constructor=|new1|

/*
QVector4D ( qreal xpos, qreal ypos, qreal zpos, qreal wpos )
*/
$constructor=|new2|qreal,qreal,qreal,qreal

/*
QVector4D ( const QPoint & point )
*/
$constructor=|new3|const QPoint &

/*
QVector4D ( const QPointF & point )
*/
$constructor=|new4|const QPointF &

/*
QVector4D ( const QVector2D & vector )
*/
$constructor=|new5|const QVector2D &

/*
QVector4D ( const QVector2D & vector, qreal zpos, qreal wpos )
*/
$constructor=|new6|const QVector2D &,qreal,qreal

/*
QVector4D ( const QVector3D & vector )
*/
$constructor=|new7|const QVector3D &

/*
QVector4D ( const QVector3D & vector, qreal wpos )
*/
$constructor=|new8|const QVector3D &,qreal

//[1]QVector4D ()
//[2]QVector4D ( qreal xpos, qreal ypos, qreal zpos, qreal wpos )
//[3]QVector4D ( const QPoint & point )
//[4]QVector4D ( const QPointF & point )
//[5]QVector4D ( const QVector2D & vector )
//[6]QVector4D ( const QVector2D & vector, qreal zpos, qreal wpos )
//[7]QVector4D ( const QVector3D & vector )
//[8]QVector4D ( const QVector3D & vector, qreal wpos )

HB_FUNC_STATIC( QVECTOR4D_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQVECTOR2D(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW7 );
  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
qreal length () const
*/
$method=|qreal|length|

/*
qreal lengthSquared () const
*/
$method=|qreal|lengthSquared|

/*
void normalize ()
*/
$method=|void|normalize|

/*
QVector4D normalized () const
*/
$method=|QVector4D|normalized|

/*
void setW ( qreal w )
*/
$method=|void|setW|qreal

/*
void setX ( qreal x )
*/
$method=|void|setX|qreal

/*
void setY ( qreal y )
*/
$method=|void|setY|qreal

/*
void setZ ( qreal z )
*/
$method=|void|setZ|qreal

/*
QPoint toPoint () const
*/
$method=|QPoint|toPoint|

/*
QPointF toPointF () const
*/
$method=|QPointF|toPointF|

/*
QVector2D toVector2D () const
*/
$method=|QVector2D|toVector2D|

/*
QVector2D toVector2DAffine () const
*/
$method=|QVector2D|toVector2DAffine|

/*
QVector3D toVector3D () const
*/
$method=|QVector3D|toVector3D|

/*
QVector3D toVector3DAffine () const
*/
$method=|QVector3D|toVector3DAffine|

/*
qreal w () const
*/
$method=|qreal|w|

/*
qreal x () const
*/
$method=|qreal|x|

/*
qreal y () const
*/
$method=|qreal|y|

/*
qreal z () const
*/
$method=|qreal|z|

/*
static qreal dotProduct ( const QVector4D & v1, const QVector4D & v2 )
*/
$staticMethod=|qreal|dotProduct|const QVector4D &,const QVector4D &

%% TODO: implementar fun��o
%% bool qFuzzyCompare ( const QVector4D & v1, const QVector4D & v2 )

$extraMethods

#pragma ENDDUMP
