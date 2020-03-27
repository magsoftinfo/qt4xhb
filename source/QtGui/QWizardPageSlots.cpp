/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWizardPageSlots.h"

QWizardPageSlots::QWizardPageSlots(QObject *parent) : QObject(parent)
{
}

QWizardPageSlots::~QWizardPageSlots()
{
}
void QWizardPageSlots::completeChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "completeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QWIZARDPAGE" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QWizardPageSlots_connect_signal( const QString & signal, const QString & slot )
{
  QWizardPage * obj = (QWizardPage *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWizardPageSlots * s = QCoreApplication::instance()->findChild<QWizardPageSlots *>();

    if( s == NULL )
    {
      s = new QWizardPageSlots();
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
