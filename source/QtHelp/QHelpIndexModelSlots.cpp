/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpIndexModelSlots.h"

static QHelpIndexModelSlots * s = NULL;

QHelpIndexModelSlots::QHelpIndexModelSlots(QObject *parent) : QObject(parent)
{
}

QHelpIndexModelSlots::~QHelpIndexModelSlots()
{
}
void QHelpIndexModelSlots::indexCreated()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexCreated()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QHelpIndexModelSlots::indexCreationStarted()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "indexCreationStarted()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QHELPINDEXMODEL_ONINDEXCREATED )
{
  if( s == NULL )
  {
    s = new QHelpIndexModelSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "indexCreated()", "indexCreated()" ) );
}

HB_FUNC( QHELPINDEXMODEL_ONINDEXCREATIONSTARTED )
{
  if( s == NULL )
  {
    s = new QHelpIndexModelSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, "indexCreationStarted()", "indexCreationStarted()" ) );
}

