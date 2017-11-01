/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QPlatformWindowFormat::FormatOption
flags QPlatformWindowFormat::FormatOptions
*/
#define QPlatformWindowFormat_DoubleBuffer                           0x0001
#define QPlatformWindowFormat_DepthBuffer                            0x0002
#define QPlatformWindowFormat_Rgba                                   0x0004
#define QPlatformWindowFormat_AlphaChannel                           0x0008
#define QPlatformWindowFormat_AccumBuffer                            0x0010
#define QPlatformWindowFormat_StencilBuffer                          0x0020
#define QPlatformWindowFormat_StereoBuffers                          0x0040
#define QPlatformWindowFormat_DirectRendering                        0x0080
#define QPlatformWindowFormat_HasOverlay                             0x0100
#define QPlatformWindowFormat_SampleBuffers                          0x0200
#define QPlatformWindowFormat_DeprecatedFunctions                    0x0400
#define QPlatformWindowFormat_HasWindowSurface                       0x0800
#define QPlatformWindowFormat_SingleBuffer                           QPlatformWindowFormat_DoubleBuffer        << 16
#define QPlatformWindowFormat_NoDepthBuffer                          QPlatformWindowFormat_DepthBuffer         << 16
#define QPlatformWindowFormat_ColorIndex                             QPlatformWindowFormat_Rgba                << 16
#define QPlatformWindowFormat_NoAlphaChannel                         QPlatformWindowFormat_AlphaChannel        << 16
#define QPlatformWindowFormat_NoAccumBuffer                          QPlatformWindowFormat_AccumBuffer         << 16
#define QPlatformWindowFormat_NoStencilBuffer                        QPlatformWindowFormat_StencilBuffer       << 16
#define QPlatformWindowFormat_NoStereoBuffers                        QPlatformWindowFormat_StereoBuffers       << 16
#define QPlatformWindowFormat_IndirectRendering                      QPlatformWindowFormat_DirectRendering     << 16
#define QPlatformWindowFormat_NoOverlay                              QPlatformWindowFormat_HasOverlay          << 16
#define QPlatformWindowFormat_NoSampleBuffers                        QPlatformWindowFormat_SampleBuffers       << 16
#define QPlatformWindowFormat_NoDeprecatedFunctions                  QPlatformWindowFormat_DeprecatedFunctions << 16
#define QPlatformWindowFormat_NoWindowSurface                        QPlatformWindowFormat_HasWindowSurface    << 16

/*
enum QPlatformWindowFormat::WindowApi
*/
#define QPlatformWindowFormat_Raster                                 0
#define QPlatformWindowFormat_OpenGL                                 1
#define QPlatformWindowFormat_OpenVG                                 2
