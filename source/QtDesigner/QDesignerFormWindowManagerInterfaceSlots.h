/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QDESIGNERFORMWINDOWMANAGERINTERFACESLOTS_H
#define QDESIGNERFORMWINDOWMANAGERINTERFACESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtDesigner/QDesignerFormWindowManagerInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QDesignerFormWindowManagerInterfaceSlots: public QObject
{
  Q_OBJECT
  public:
  QDesignerFormWindowManagerInterfaceSlots( QObject * parent = 0 );
  ~QDesignerFormWindowManagerInterfaceSlots();
  public slots:
  void activeFormWindowChanged( QDesignerFormWindowInterface * formWindow );
  void formWindowAdded( QDesignerFormWindowInterface * formWindow );
  void formWindowRemoved( QDesignerFormWindowInterface * formWindow );
};

#endif /* QDESIGNERFORMWINDOWMANAGERINTERFACESLOTS_H */
