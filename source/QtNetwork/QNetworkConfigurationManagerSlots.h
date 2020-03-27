/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QNETWORKCONFIGURATIONMANAGERSLOTS_H
#define QNETWORKCONFIGURATIONMANAGERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtNetwork/QNetworkConfigurationManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QNetworkConfigurationManagerSlots: public QObject
{
  Q_OBJECT
  public:
  QNetworkConfigurationManagerSlots(QObject *parent = 0);
  ~QNetworkConfigurationManagerSlots();
  public slots:
  void configurationAdded( const QNetworkConfiguration & config );
  void configurationChanged( const QNetworkConfiguration & config );
  void configurationRemoved( const QNetworkConfiguration & config );
  void onlineStateChanged( bool isOnline );
  void updateCompleted();
};

#endif /* QNETWORKCONFIGURATIONMANAGERSLOTS_H */
