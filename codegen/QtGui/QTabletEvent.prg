$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QTabletEvent INHERIT QInputEvent

   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD hiResGlobalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD hiResGlobalX
   METHOD hiResGlobalY
   METHOD device
   METHOD pointerType
   METHOD uniqueId
   METHOD pressure
   METHOD z
   METHOD tangentialPressure
   METHOD rotation
   METHOD xTilt
   METHOD yTilt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTabletEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTabletEvent(Type t, const QPoint &pos, const QPoint &globalPos, const QPointF &hiResGlobalPos,int device, int pointerType, qreal pressure, int xTilt, int yTilt,qreal tangentialPressure, qreal rotation, int z,Qt::KeyboardModifiers keyState, qint64 uniqueID)
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &,const QPointF &,int,int,qreal,int,int,qreal,qreal,int,Qt::KeyboardModifiers,qint64

$deleteMethod

$prototype=const QPoint &pos() const
$method=|const QPoint &|pos|

$prototype=const QPoint &globalPos() const
$method=|const QPoint &|globalPos|

$prototype=const QPointF &hiResGlobalPos() const
$method=|const QPointF &|hiResGlobalPos|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=qreal hiResGlobalX() const
$method=|qreal|hiResGlobalX|

$prototype=qreal hiResGlobalY() const
$method=|qreal|hiResGlobalY|

$prototype=TabletDevice device() const
$method=|QTabletEvent::TabletDevice|device|

$prototype=PointerType pointerType() const
$method=|QTabletEvent::PointerType|pointerType|

$prototype=qint64 uniqueId() const
$method=|qint64|uniqueId|

$prototype=qreal pressure() const
$method=|qreal|pressure|

$prototype=int z() const
$method=|int|z|

$prototype=qreal tangentialPressure() const
$method=|qreal|tangentialPressure|

$prototype=qreal rotation() const
$method=|qreal|rotation|

$prototype=int xTilt() const
$method=|int|xTilt|

$prototype=int yTilt() const
$method=|int|yTilt|

#pragma ENDDUMP
