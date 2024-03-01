/* Copyright (c) 2021 Xie Meiyi(xiemeiyi@hust.edu.cn) and OceanBase and/or its affiliates. All rights reserved.
miniob is licensed under Mulan PSL v2.
You can use this software according to the terms and conditions of the Mulan PSL v2.
You may obtain a copy of Mulan PSL v2 at:
         http://license.coscl.org.cn/MulanPSL2
THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
See the Mulan PSL v2 for more details. */

//
// Created by Longda on 2010
//

#ifndef __COMMON_OS_SIGNAL_H__
#define __COMMON_OS_SIGNAL_H__

#include <signal.h>

namespace common {

//! Default function that blocks signals.
/**
 * Now it blocks SIGINT, SIGTERM, and SIGUSR1
 */
void blockDefaultSignals(sigset_t *signal_set, sigset_t *old_set);
//! Default function that unblocks signals.
/**
 * It unblocks SIGINT, SIGTERM,and SIGUSR1.
 */
void unBlockDefaultSignals(sigset_t *signal_set, sigset_t *old_set);

void *waitForSignals(sigset_t *signal_set);
void startWaitForSignals(sigset_t *signal_set);

// Set signal handling function
/**
 * handler function
 */
typedef void (*sighandler_t)(int);
void setSignalHandler(sighandler_t func);
void setSignalHandler(int sig, sighandler_t func);

}  // namespace common
#endif /* __COMMON_OS_SIGNAL_H__ */
