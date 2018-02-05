%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QCompleter>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QCompleter_release_codeblocks ();

class SlotsQCompleter: public QObject
{
  Q_OBJECT

  public:
  SlotsQCompleter(QObject *parent = 0);
  ~SlotsQCompleter();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void activated ( const QString & text );
  void activated ( const QModelIndex & index );
  void highlighted ( const QString & text );
  void highlighted ( const QModelIndex & index );
};