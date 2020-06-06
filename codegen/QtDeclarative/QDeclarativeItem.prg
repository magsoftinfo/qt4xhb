%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject,QDeclarativeParserStatus

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDeclarativeItem ( QDeclarativeItem * parent = 0 )
$constructor=|new|QDeclarativeItem *=0

$deleteMethod

$prototype=qreal baselineOffset () const
$method=|qreal|baselineOffset|

$prototype=QDeclarativeItem * childAt ( qreal x, qreal y ) const
$method=|QDeclarativeItem *|childAt|qreal,qreal

$prototype=QRectF childrenRect ()
$method=|QRectF|childrenRect|

$prototypeV2=bool clip() const

$prototype=void forceActiveFocus ()
$method=|void|forceActiveFocus|

$prototype=qreal implicitHeight () const
$method=|qreal|implicitHeight|

$prototype=qreal implicitWidth () const
$method=|qreal|implicitWidth|

$prototypeV2=bool keepMouseGrab() const

$prototype=QScriptValue mapFromItem ( const QScriptValue & item, qreal x, qreal y ) const
$method=|QScriptValue|mapFromItem|const QScriptValue &,qreal,qreal

$prototype=QScriptValue mapToItem ( const QScriptValue & item, qreal x, qreal y ) const
$method=|QScriptValue|mapToItem|const QScriptValue &,qreal,qreal

$prototype=QDeclarativeItem * parentItem () const
$method=|QDeclarativeItem *|parentItem|

$prototype=void setBaselineOffset ( qreal )
$method=|void|setBaselineOffset|qreal

$prototype=void setClip ( bool )
$method=|void|setClip|bool

$prototype=void setKeepMouseGrab ( bool keep )
$method=|void|setKeepMouseGrab|bool

$prototype=void setParentItem ( QDeclarativeItem * parent )
$method=|void|setParentItem|QDeclarativeItem *

$prototype=void setSmooth ( bool smooth )
$method=|void|setSmooth|bool

$prototype=void setTransformOrigin ( TransformOrigin origin )
$method=|void|setTransformOrigin|QDeclarativeItem::TransformOrigin

$prototypeV2=bool smooth() const

$prototype=TransformOrigin transformOrigin () const
$method=|QDeclarativeItem::TransformOrigin|transformOrigin|

#pragma ENDDUMP
