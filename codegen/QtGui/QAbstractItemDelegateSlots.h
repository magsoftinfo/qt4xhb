%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractItemDelegate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAbstractItemDelegate_release_codeblocks ();

class SlotsQAbstractItemDelegate: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractItemDelegate(QObject *parent = 0);
  ~SlotsQAbstractItemDelegate();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void closeEditor ( QWidget * editor, QAbstractItemDelegate::EndEditHint hint = QAbstractItemDelegate::NoHint );
  void commitData ( QWidget * editor );
  void sizeHintChanged ( const QModelIndex & index );
};