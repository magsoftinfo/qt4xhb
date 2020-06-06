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

#include <QtCore/QRect>
#include <QtCore/QVariant>

$deleteMethod

$prototype=virtual bool canRead () const = 0
$virtualMethod=|bool|canRead|

$prototype=virtual int currentImageNumber () const
$virtualMethod=|int|currentImageNumber|

$prototype=virtual QRect currentImageRect () const
$virtualMethod=|QRect|currentImageRect|

$prototype=QIODevice * device () const
$method=|QIODevice *|device|

$prototype=QByteArray format () const
$method=|QByteArray|format|

$prototypeV2=virtual int imageCount() const

$prototype=virtual bool jumpToImage ( int imageNumber )
$virtualMethod=|bool|jumpToImage|int

$prototype=virtual bool jumpToNextImage ()
$virtualMethod=|bool|jumpToNextImage|

$prototypeV2=virtual int loopCount() const

$prototypeV2=virtual int nextImageDelay() const

$prototype=virtual QVariant option ( ImageOption option ) const
$virtualMethod=|QVariant|option|QImageIOHandler::ImageOption

$prototype=virtual bool read ( QImage * image ) = 0
$virtualMethod=|bool|read|QImage *

$prototype=void setDevice ( QIODevice * device )
$method=|void|setDevice|QIODevice *

$prototype=void setFormat ( const QByteArray & format )
$method=|void|setFormat|const QByteArray &

$prototype=virtual void setOption ( ImageOption option, const QVariant & value )
$virtualMethod=|void|setOption|QImageIOHandler::ImageOption,const QVariant &

$prototype=virtual bool supportsOption ( ImageOption option ) const
$virtualMethod=|bool|supportsOption|QImageIOHandler::ImageOption

$prototype=virtual bool write ( const QImage & image )
$virtualMethod=|bool|write|const QImage &

$extraMethods

#pragma ENDDUMP
