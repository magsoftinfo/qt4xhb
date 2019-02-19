/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QACTIONGROUPSLOTS_H
#define QACTIONGROUPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QActionGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QActionGroupSlots: public QObject
{
  Q_OBJECT
  public:
  QActionGroupSlots(QObject *parent = 0);
  ~QActionGroupSlots();
  public slots:
  void hovered( QAction * action );
  void triggered( QAction * action );
};

#endif /* QACTIONGROUPSLOTS_H */
