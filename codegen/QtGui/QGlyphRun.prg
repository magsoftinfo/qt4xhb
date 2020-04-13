%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGlyphRun ()
$internalConstructor=|new1|

$prototype=QGlyphRun ( const QGlyphRun & other )
$internalConstructor=|new2|const QGlyphRun &

/*
[1]QGlyphRun ()
[2]QGlyphRun ( const QGlyphRun & other )
*/

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGlyphRun_new1();
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    QGlyphRun_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void clear ()
$method=|void|clear|

$prototype=QVector<quint32> glyphIndexes () const
$method=|QVector<quint32>|glyphIndexes|

$prototype=bool overline () const
$method=|bool|overline|

$prototype=QVector<QPointF> positions () const
$method=|QVector<QPointF>|positions|

$prototype=QRawFont rawFont () const
$method=|QRawFont|rawFont|

$prototype=void setGlyphIndexes ( const QVector<quint32> & glyphIndexes )
$method=|void|setGlyphIndexes|const QVector<quint32> &

$prototype=void setOverline ( bool overline )
$method=|void|setOverline|bool

$prototype=void setPositions ( const QVector<QPointF> & positions )
$method=|void|setPositions|const QVector<QPointF> &

$prototype=void setRawFont ( const QRawFont & rawFont )
$method=|void|setRawFont|const QRawFont &

$prototype=void setStrikeOut ( bool strikeOut )
$method=|void|setStrikeOut|bool

$prototype=void setUnderline ( bool underline )
$method=|void|setUnderline|bool

$prototype=bool strikeOut () const
$method=|bool|strikeOut|

$prototype=bool underline () const
$method=|bool|underline|

$extraMethods

#pragma ENDDUMP
