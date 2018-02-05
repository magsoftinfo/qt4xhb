/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTDECLARATIVE_H
#define QT4XHB_MACROS_QTDECLARATIVE_H

#define ISQDECLARATIVECOMPONENT(n)                          _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeComponent")
#define ISQDECLARATIVECONTEXT(n)                            _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeContext")
#define ISQDECLARATIVEENGINE(n)                             _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeEngine")
#define ISQDECLARATIVEERROR(n)                              _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeError")
#define ISQDECLARATIVEEXPRESSION(n)                         _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeExpression")
#define ISQDECLARATIVEEXTENSIONPLUGIN(n)                    _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeExtensionPlugin")
#define ISQDECLARATIVEIMAGEPROVIDER(n)                      _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeImageProvider")
#define ISQDECLARATIVEITEM(n)                               _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeItem")
#define ISQDECLARATIVELISTREFERENCE(n)                      _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeListReference")
#define ISQDECLARATIVENETWORKACCESSMANAGERFACTORY(n)        _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeNetworkAccessManagerFactory")
#define ISQDECLARATIVEPARSERSTATUS(n)                       _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeParserStatus")
#define ISQDECLARATIVEPROPERTY(n)                           _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeProperty")
#define ISQDECLARATIVEPROPERTYMAP(n)                        _qt4xhb_isObjectDerivedFrom(n,"QDeclarativePropertyMap")
#define ISQDECLARATIVEPROPERTYVALUESOURCE(n)                _qt4xhb_isObjectDerivedFrom(n,"QDeclarativePropertyValueSource")
#define ISQDECLARATIVESCRIPTSTRING(n)                       _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeScriptString")
#define ISQDECLARATIVEVIEW(n)                               _qt4xhb_isObjectDerivedFrom(n,"QDeclarativeView")

#define PQDECLARATIVECOMPONENT(n)                           (QDeclarativeComponent *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVECONTEXT(n)                             (QDeclarativeContext *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEENGINE(n)                              (QDeclarativeEngine *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEERROR(n)                               (QDeclarativeError *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEEXPRESSION(n)                          (QDeclarativeExpression *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEEXTENSIONPLUGIN(n)                     (QDeclarativeExtensionPlugin *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEIMAGEPROVIDER(n)                       (QDeclarativeImageProvider *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEITEM(n)                                (QDeclarativeItem *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVELISTREFERENCE(n)                       (QDeclarativeListReference *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVENETWORKACCESSMANAGERFACTORY(n)         (QDeclarativeNetworkAccessManagerFactory *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEPARSERSTATUS(n)                        (QDeclarativeParserStatus *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEPROPERTY(n)                            (QDeclarativeProperty *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEPROPERTYMAP(n)                         (QDeclarativePropertyMap *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEPROPERTYVALUESOURCE(n)                 (QDeclarativePropertyValueSource *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVESCRIPTSTRING(n)                        (QDeclarativeScriptString *) _qt4xhb_itemGetPtr(n)
#define PQDECLARATIVEVIEW(n)                                (QDeclarativeView *) _qt4xhb_itemGetPtr(n)

#define OPQDECLARATIVECOMPONENT(n,v)                        ISNIL(n)? v : (QDeclarativeComponent *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVECONTEXT(n,v)                          ISNIL(n)? v : (QDeclarativeContext *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEENGINE(n,v)                           ISNIL(n)? v : (QDeclarativeEngine *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEERROR(n,v)                            ISNIL(n)? v : (QDeclarativeError *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEEXPRESSION(n,v)                       ISNIL(n)? v : (QDeclarativeExpression *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEEXTENSIONPLUGIN(n,v)                  ISNIL(n)? v : (QDeclarativeExtensionPlugin *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEIMAGEPROVIDER(n,v)                    ISNIL(n)? v : (QDeclarativeImageProvider *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEITEM(n,v)                             ISNIL(n)? v : (QDeclarativeItem *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVELISTREFERENCE(n,v)                    ISNIL(n)? v : (QDeclarativeListReference *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVENETWORKACCESSMANAGERFACTORY(n,v)      ISNIL(n)? v : (QDeclarativeNetworkAccessManagerFactory *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEPARSERSTATUS(n,v)                     ISNIL(n)? v : (QDeclarativeParserStatus *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEPROPERTY(n,v)                         ISNIL(n)? v : (QDeclarativeProperty *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEPROPERTYMAP(n,v)                      ISNIL(n)? v : (QDeclarativePropertyMap *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEPROPERTYVALUESOURCE(n,v)              ISNIL(n)? v : (QDeclarativePropertyValueSource *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVESCRIPTSTRING(n,v)                     ISNIL(n)? v : (QDeclarativeScriptString *) _qt4xhb_itemGetPtr(n)
#define OPQDECLARATIVEVIEW(n,v)                             ISNIL(n)? v : (QDeclarativeView *) _qt4xhb_itemGetPtr(n)

#endif /* QT4XHB_MACROS_QTDECLARATIVE_H */
