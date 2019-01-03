/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTIMERSLOTS_H
#define QTIMERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QTimerSlots: public QObject
{
  Q_OBJECT
  public:
  QTimerSlots(QObject *parent = 0);
  ~QTimerSlots();
  public slots:
  void timeout();
};

#endif /* QTIMERSLOTS_H */
