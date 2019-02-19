/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QPRINTPREVIEWWIDGETSLOTS_H
#define QPRINTPREVIEWWIDGETSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QPrintPreviewWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_signals.h"

class QPrintPreviewWidgetSlots: public QObject
{
  Q_OBJECT
  public:
  QPrintPreviewWidgetSlots(QObject *parent = 0);
  ~QPrintPreviewWidgetSlots();
  public slots:
  void paintRequested( QPrinter * printer );
  void previewChanged();
};

#endif /* QPRINTPREVIEWWIDGETSLOTS_H */
