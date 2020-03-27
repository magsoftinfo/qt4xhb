/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTEXTDOCUMENTSLOTS_H
#define QTEXTDOCUMENTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QTextDocument>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QTextDocumentSlots: public QObject
{
  Q_OBJECT
  public:
  QTextDocumentSlots(QObject *parent = 0);
  ~QTextDocumentSlots();
  public slots:
  void blockCountChanged( int newBlockCount );
  void contentsChange( int position, int charsRemoved, int charsAdded );
  void contentsChanged();
  void cursorPositionChanged( const QTextCursor & cursor );
  void documentLayoutChanged();
  void modificationChanged( bool changed );
  void redoAvailable( bool available );
  void undoAvailable( bool available );
  void undoCommandAdded();
};

#endif /* QTEXTDOCUMENTSLOTS_H */
