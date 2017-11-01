/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QScriptEngineDebugger::DebuggerAction
*/
#define QScriptEngineDebugger_InterruptAction                        0
#define QScriptEngineDebugger_ContinueAction                         1
#define QScriptEngineDebugger_StepIntoAction                         2
#define QScriptEngineDebugger_StepOverAction                         3
#define QScriptEngineDebugger_StepOutAction                          4
#define QScriptEngineDebugger_RunToCursorAction                      5
#define QScriptEngineDebugger_RunToNewScriptAction                   6
#define QScriptEngineDebugger_ToggleBreakpointAction                 7
#define QScriptEngineDebugger_ClearDebugOutputAction                 8
#define QScriptEngineDebugger_ClearErrorLogAction                    9
#define QScriptEngineDebugger_ClearConsoleAction                     10
#define QScriptEngineDebugger_FindInScriptAction                     11
#define QScriptEngineDebugger_FindNextInScriptAction                 12
#define QScriptEngineDebugger_FindPreviousInScriptAction             13
#define QScriptEngineDebugger_GoToLineAction                         14

/*
enum QScriptEngineDebugger::DebuggerState
*/
#define QScriptEngineDebugger_RunningState                           0
#define QScriptEngineDebugger_SuspendedState                         1

/*
enum QScriptEngineDebugger::DebuggerWidget
*/
#define QScriptEngineDebugger_ConsoleWidget                          0
#define QScriptEngineDebugger_StackWidget                            1
#define QScriptEngineDebugger_ScriptsWidget                          2
#define QScriptEngineDebugger_LocalsWidget                           3
#define QScriptEngineDebugger_CodeWidget                             4
#define QScriptEngineDebugger_CodeFinderWidget                       5
#define QScriptEngineDebugger_BreakpointsWidget                      6
#define QScriptEngineDebugger_DebugOutputWidget                      7
#define QScriptEngineDebugger_ErrorLogWidget                         8