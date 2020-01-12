/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFtpSlots.h"

QFtpSlots::QFtpSlots(QObject *parent) : QObject(parent)
{
}

QFtpSlots::~QFtpSlots()
{
}
void QFtpSlots::commandFinished( int id, bool error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commandFinished(int,bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    PHB_ITEM perror = hb_itemPutL( NULL, error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pid, perror );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
    hb_itemRelease( perror );
  }
}
void QFtpSlots::commandStarted( int id )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commandStarted(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    PHB_ITEM pid = hb_itemPutNI( NULL, id );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pid );
    hb_itemRelease( psender );
    hb_itemRelease( pid );
  }
}
void QFtpSlots::dataTransferProgress( qint64 done, qint64 total )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataTransferProgress(qint64,qint64)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    PHB_ITEM pdone = hb_itemPutNLL( NULL, done );
    PHB_ITEM ptotal = hb_itemPutNLL( NULL, total );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pdone, ptotal );
    hb_itemRelease( psender );
    hb_itemRelease( pdone );
    hb_itemRelease( ptotal );
  }
}
void QFtpSlots::done( bool error )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "done(bool)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    PHB_ITEM perror = hb_itemPutL( NULL, error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}
void QFtpSlots::listInfo( const QUrlInfo & i )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "listInfo(QUrlInfo)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    PHB_ITEM pi = Signals_return_object( (void *) &i, "QURLINFO" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pi );
    hb_itemRelease( psender );
    hb_itemRelease( pi );
  }
}
void QFtpSlots::rawCommandReply( int replyCode, const QString & detail )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rawCommandReply(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    PHB_ITEM preplyCode = hb_itemPutNI( NULL, replyCode );
    PHB_ITEM pdetail = hb_itemPutC( NULL, QSTRINGTOSTRING(detail) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, preplyCode, pdetail );
    hb_itemRelease( psender );
    hb_itemRelease( preplyCode );
    hb_itemRelease( pdetail );
  }
}
void QFtpSlots::readyRead()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "readyRead()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
void QFtpSlots::stateChanged( int state )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFTP" );
    PHB_ITEM pstate = hb_itemPutNI( NULL, state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void QFtpSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QFtp * obj = (QFtp *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QFtpSlots * s = QCoreApplication::instance()->findChild<QFtpSlots *>();

    if( s == NULL )
    {
      s = new QFtpSlots();
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
