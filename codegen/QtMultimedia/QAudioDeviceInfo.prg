$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIODEVICEINFO
#endif

CLASS QAudioDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD deviceName
   METHOD isFormatSupported
   METHOD isNull
   METHOD nearestFormat
   METHOD preferredFormat
   METHOD supportedFrequencies
   METHOD supportedSampleRates
   METHOD supportedChannels
   METHOD supportedChannelCounts
   METHOD supportedSampleSizes
   METHOD supportedByteOrders
   METHOD supportedSampleTypes
   METHOD supportedCodecs
   METHOD availableDevices
   METHOD defaultInputDevice
   METHOD defaultOutputDevice

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAudioDeviceInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAudioDeviceInfo ()
*/
$constructor=|new1|

/*
QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/
$constructor=|new2|const QAudioDeviceInfo &

//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString deviceName () const
*/
$method=|QString|deviceName|

/*
bool isFormatSupported ( const QAudioFormat & settings ) const
*/
$method=|bool|isFormatSupported|const QAudioFormat &

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
QAudioFormat nearestFormat ( const QAudioFormat & settings ) const
*/
$method=|QAudioFormat|nearestFormat|const QAudioFormat &

/*
QAudioFormat preferredFormat () const
*/
$method=|QAudioFormat|preferredFormat|

/*
QList<int> supportedFrequencies() const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDFREQUENCIES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->supportedFrequencies ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<int> supportedSampleRates () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLERATES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->supportedSampleRates ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<int> supportedChannels() const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCHANNELS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->supportedChannels ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<int> supportedChannelCounts () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCHANNELCOUNTS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->supportedChannelCounts ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<int> supportedSampleSizes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLESIZES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<int> list = obj->supportedSampleSizes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QAudioFormat::Endian> supportedByteOrders () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDBYTEORDERS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAudioFormat::Endian> list = obj->supportedByteOrders ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QAudioFormat::SampleType> supportedSampleTypes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLETYPES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAudioFormat::SampleType> list = obj->supportedSampleTypes ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QStringList supportedCodecs () const
*/
$method=|QStringList|supportedCodecs|

/*
static QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_AVAILABLEDEVICES )
{
  QList<QAudioDeviceInfo> list = QAudioDeviceInfo::availableDevices ( (QAudio::Mode) hb_parni(1) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QAUDIODEVICEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QAUDIODEVICEINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QAudioDeviceInfo *) new QAudioDeviceInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QAudioDeviceInfo defaultInputDevice ()
*/
$staticMethod=|QAudioDeviceInfo|defaultInputDevice|

/*
static QAudioDeviceInfo defaultOutputDevice ()
*/
$staticMethod=|QAudioDeviceInfo|defaultOutputDevice|

$extraMethods

#pragma ENDDUMP
