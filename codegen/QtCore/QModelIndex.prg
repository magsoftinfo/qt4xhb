%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QModelIndex ()
$internalConstructor=|new1|

$prototype=QModelIndex ( const QModelIndex & other )
$internalConstructor=|new2|const QModelIndex &

/*
[1]QModelIndex ()
[2]QModelIndex ( const QModelIndex & other )
*/

HB_FUNC_STATIC( QMODELINDEX_NEW )
{
  if( ISNUMPAR(0) )
  {
    QModelIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QModelIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QModelIndex child ( int row, int column ) const
$method=|QModelIndex|child|int,int

$prototypeV2=int column() const

$prototype=QVariant data ( int role = Qt::DisplayRole ) const
$method=|QVariant|data|int=Qt::DisplayRole

$prototypeV2=Qt::ItemFlags flags() const

$prototypeV2=qint64 internalId() const

$prototypeV2=void * internalPointer() const

$prototypeV2=bool isValid() const

$prototypeV2=const QAbstractItemModel * model() const

$prototypeV2=QModelIndex parent() const

$prototypeV2=int row() const

$prototype=QModelIndex sibling ( int row, int column ) const
$method=|QModelIndex|sibling|int,int

$extraMethods

#pragma ENDDUMP
