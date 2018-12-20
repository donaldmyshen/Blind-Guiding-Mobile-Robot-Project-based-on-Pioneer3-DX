// =====================================================================================
//
//       Filename:  SendGoal.h
//
//    Description:
//
//        Version:  1.0
//        Created:  13/03/15 17:11:54
//       Revision:  none
//       Compiler:  g++
//
//         Author:  Cheng Zhao (Henrry), IRobotCheng@gmail.com
//        Company:
//
// =====================================================================================
#ifndef ___HENRY__NEOROBOT_LOG__HEADER___
#define ___HENRY__NEOROBOT_LOG__HEADER___

#include <stdio.h>

#define neo_log(clr, tag, fmt, ...) printf("\e[%d;3m%s", clr, tag); \
    printf(fmt, ##__VA_ARGS__); \
    printf("\e[0m\n");

#define neo_log_debug(fmt, ...) neo_log(33, "DEBUG: ", fmt, ##__VA_ARGS__);
#define neo_log_info(fmt, ...)  neo_log(32, " INFO: ", fmt, ##__VA_ARGS__);
#define neo_log_error(fmt, ...) neo_log(31, "ERROR: ", fmt, ##__VA_ARGS__);

#endif
