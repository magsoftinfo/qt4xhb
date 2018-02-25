/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QAXBASESLOTS_H
#define QAXBASESLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAxBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QAxBaseSlots: public QObject
{
  Q_OBJECT
  public:
  QAxBaseSlots(QObject *parent = 0);
  ~QAxBaseSlots();
  public slots:
  void exception( int code, const QString & source, const QString & desc, const QString & help );
  void propertyChanged( const QString & name );
  void signal( const QString & name, int argc, void * argv );
};

#endif /* QAXBASESLOTS_H */
