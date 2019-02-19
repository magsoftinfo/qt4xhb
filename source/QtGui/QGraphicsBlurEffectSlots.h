/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSBLUREFFECTSLOTS_H
#define QGRAPHICSBLUREFFECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGraphicsBlurEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QGraphicsBlurEffectSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsBlurEffectSlots(QObject *parent = 0);
  ~QGraphicsBlurEffectSlots();
  public slots:
  void blurHintsChanged( QGraphicsBlurEffect::BlurHints hints );
  void blurRadiusChanged( qreal radius );
};

#endif /* QGRAPHICSBLUREFFECTSLOTS_H */
