/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSEQUENTIALANIMATIONGROUPSLOTS_H
#define QSEQUENTIALANIMATIONGROUPSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QSequentialAnimationGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QSequentialAnimationGroupSlots: public QObject
{
  Q_OBJECT
  public:
  QSequentialAnimationGroupSlots( QObject * parent = 0 );
  ~QSequentialAnimationGroupSlots();
  public slots:
  void currentAnimationChanged( QAbstractAnimation * current );
};

#endif /* QSEQUENTIALANIMATIONGROUPSLOTS_H */
