/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QFTPSLOTS_H
#define QFTPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QFtp>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QFtpSlots: public QObject
{
  Q_OBJECT
  public:
  QFtpSlots( QObject *parent = 0 );
  ~QFtpSlots();
  public slots:
  void commandFinished( int id, bool error );
  void commandStarted( int id );
  void dataTransferProgress( qint64 done, qint64 total );
  void done( bool error );
  void listInfo( const QUrlInfo & i );
  void rawCommandReply( int replyCode, const QString & detail );
  void readyRead();
  void stateChanged( int state );
};

#endif /* QFTPSLOTS_H */
