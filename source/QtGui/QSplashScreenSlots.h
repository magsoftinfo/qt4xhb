/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSPLASHSCREENSLOTS_H
#define QSPLASHSCREENSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QSplashScreen>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QSplashScreenSlots: public QObject
{
  Q_OBJECT
  public:
  QSplashScreenSlots(QObject *parent = 0);
  ~QSplashScreenSlots();
  public slots:
  void messageChanged( const QString & message );
};

#endif /* QSPLASHSCREENSLOTS_H */
