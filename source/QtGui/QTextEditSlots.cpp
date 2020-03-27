/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QTextEditSlots.h"

QTextEditSlots::QTextEditSlots(QObject *parent) : QObject(parent)
{
}

QTextEditSlots::~QTextEditSlots()
{
}
void QTextEditSlots::copyAvailable( bool yes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "copyAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTEDIT" );
    PHB_ITEM pyes = hb_itemPutL( NULL, yes );
    hb_vmEvalBlockV( cb, 2, psender, pyes );
    hb_itemRelease( psender );
    hb_itemRelease( pyes );
  }
}
void QTextEditSlots::currentCharFormatChanged( const QTextCharFormat & f )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentCharFormatChanged(QTextCharFormat)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTEDIT" );
    PHB_ITEM pf = Signals_return_object( (void *) &f, "QTEXTCHARFORMAT" );
    hb_vmEvalBlockV( cb, 2, psender, pf );
    hb_itemRelease( psender );
    hb_itemRelease( pf );
  }
}
void QTextEditSlots::cursorPositionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorPositionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTEDIT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QTextEditSlots::redoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTEDIT" );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}
void QTextEditSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTEDIT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QTextEditSlots::textChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "textChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTEDIT" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QTextEditSlots::undoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QTEXTEDIT" );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void QTextEditSlots_connect_signal( const QString & signal, const QString & slot )
{
  QTextEdit * obj = (QTextEdit *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QTextEditSlots * s = QCoreApplication::instance()->findChild<QTextEditSlots *>();

    if( s == NULL )
    {
      s = new QTextEditSlots();
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
