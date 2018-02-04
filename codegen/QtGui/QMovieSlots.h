/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMOVIE_H
#define SLOTSQMOVIE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMovie>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QMovie_release_codeblocks ();

class SlotsQMovie: public QObject
{
  Q_OBJECT

  public:
  SlotsQMovie(QObject *parent = 0);
  ~SlotsQMovie();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void updated ( const QRect & rect );
};

#endif
