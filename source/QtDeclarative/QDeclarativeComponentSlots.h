/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDECLARATIVECOMPONENTSLOTS_H
#define QDECLARATIVECOMPONENTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDeclarative/QDeclarativeComponent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QDeclarativeComponentSlots: public QObject
{
  Q_OBJECT
  public:
  QDeclarativeComponentSlots(QObject *parent = 0);
  ~QDeclarativeComponentSlots();
  public slots:
  void progressChanged( qreal progress );
  void statusChanged( QDeclarativeComponent::Status status );
};

#endif /* QDECLARATIVECOMPONENTSLOTS_H */
