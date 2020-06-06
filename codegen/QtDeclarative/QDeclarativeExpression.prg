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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeContext>
#include <QtDeclarative/QDeclarativeEngine>

$prototype=QDeclarativeExpression ()
$internalConstructor=|new1|

$prototype=QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
$internalConstructor=|new2|QDeclarativeContext *,QObject *,const QString &,QObject *=0

/*
[1]QDeclarativeExpression ()
[2]QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
*/

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeExpression_new1();
  }
  else if( ISBETWEEN(3,4) && ISQDECLARATIVECONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QDeclarativeExpression_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void clearError ()
$method=|void|clearError|

$prototype=QDeclarativeContext * context () const
$method=|QDeclarativeContext *|context|

$prototype=QDeclarativeEngine * engine () const
$method=|QDeclarativeEngine *|engine|

$prototype=QDeclarativeError error () const
$method=|QDeclarativeError|error|

$prototype=QVariant evaluate ( bool * valueIsUndefined = 0 )
$method=|QVariant|evaluate|bool *=0

$prototype=QString expression () const
$method=|QString|expression|

$prototypeV2=bool hasError() const

$prototypeV2=int lineNumber() const

$prototypeV2=bool notifyOnValueChanged() const

$prototype=QObject * scopeObject () const
$method=|QObject *|scopeObject|

$prototype=void setExpression ( const QString & expression )
$method=|void|setExpression|const QString &

$prototype=void setNotifyOnValueChanged ( bool notifyOnChange )
$method=|void|setNotifyOnValueChanged|bool

$prototype=void setSourceLocation ( const QString & url, int line )
$method=|void|setSourceLocation|const QString &,int

$prototype=QString sourceFile () const
$method=|QString|sourceFile|

$beginSignals
$signal=|valueChanged()
$endSignals

#pragma ENDDUMP
