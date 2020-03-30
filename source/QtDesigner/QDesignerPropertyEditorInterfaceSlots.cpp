/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDesignerPropertyEditorInterfaceSlots.h"

QDesignerPropertyEditorInterfaceSlots::QDesignerPropertyEditorInterfaceSlots(QObject *parent) : QObject(parent)
{
}

QDesignerPropertyEditorInterfaceSlots::~QDesignerPropertyEditorInterfaceSlots()
{
}
void QDesignerPropertyEditorInterfaceSlots::propertyChanged( const QString & name, const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertyChanged(QString,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QDESIGNERPROPERTYEDITORINTERFACE" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM pvalue = Signals_return_object( (void *) &value, "QVARIANT" );
    hb_vmEvalBlockV( cb, 3, psender, pname, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pvalue );
  }
}

void QDesignerPropertyEditorInterfaceSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDesignerPropertyEditorInterface * obj = (QDesignerPropertyEditorInterface *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QDesignerPropertyEditorInterfaceSlots * s = QCoreApplication::instance()->findChild<QDesignerPropertyEditorInterfaceSlots *>();

    if( s == NULL )
    {
      s = new QDesignerPropertyEditorInterfaceSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
