/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QACTIONSLOTS_H
#define QACTIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QAction>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QActionSlots: public QObject
{
  Q_OBJECT
  public:
  QActionSlots(QObject *parent = 0);
  ~QActionSlots();
  public slots:
  void changed();
  void hovered();
  void toggled( bool checked );
  void triggered( bool checked = false );
};

#endif /* QACTIONSLOTS_H */
