/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTemporaryFile INHERIT QFile

   DATA class_id INIT Class_Id_QTemporaryFile
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD fileTemplate
   METHOD open
   METHOD setAutoRemove
   METHOD setFileTemplate
   METHOD fileName
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTemporaryFile
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTemporaryFile>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTemporaryFile()
*/
HB_FUNC_STATIC( QTEMPORARYFILE_NEW1 )
{
  QTemporaryFile * o = NULL;
  o = new QTemporaryFile (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTemporaryFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTemporaryFile(const QString & templateName)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_NEW2 )
{
  QTemporaryFile * o = NULL;
  QString par1 = hb_parc(1);
  o = new QTemporaryFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTemporaryFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTemporaryFile(QObject * parent)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_NEW3 )
{
  QTemporaryFile * o = NULL;
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTemporaryFile ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTemporaryFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QTemporaryFile(const QString & templateName, QObject * parent)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_NEW4 )
{
  QTemporaryFile * o = NULL;
  QString par1 = hb_parc(1);
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTemporaryFile ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTemporaryFile *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QTemporaryFile()
//[2]QTemporaryFile(const QString & templateName)
//[3]QTemporaryFile(QObject * parent)
//[4]QTemporaryFile(const QString & templateName, QObject * parent)

HB_FUNC_STATIC( QTEMPORARYFILE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QTEMPORARYFILE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEMPORARYFILE_DELETE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoRemove() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_AUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->autoRemove (  ) );
  }
}


/*
QString fileTemplate() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_FILETEMPLATE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileTemplate (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool open()
*/
HB_FUNC_STATIC( QTEMPORARYFILE_OPEN )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->open (  ) );
  }
}


/*
void setAutoRemove(bool b)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_SETAUTOREMOVE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoRemove ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFileTemplate(const QString & name)
*/
HB_FUNC_STATIC( QTEMPORARYFILE_SETFILETEMPLATE )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    obj->setFileTemplate ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QString fileName() const
*/
HB_FUNC_STATIC( QTEMPORARYFILE_FILENAME )
{
  QTemporaryFile * obj = (QTemporaryFile *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->fileName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}





//[1]QTemporaryFile * createNativeFile(QFile & file)
//[2]QTemporaryFile * createNativeFile(const QString & fileName)

//HB_FUNC_STATIC( QTEMPORARYFILE_CREATENATIVEFILE )
//{
//  if( ISNUMPAR(1) && ISQFILE(1) )
//  {
//    HB_FUNC_EXEC( QTEMPORARYFILE_CREATENATIVEFILE1 );
//  }
//  else if( ISNUMPAR(1) && ISCHAR(1) )
//  {
//    HB_FUNC_EXEC( QTEMPORARYFILE_CREATENATIVEFILE2 );
//  }
//}



#pragma ENDDUMP
