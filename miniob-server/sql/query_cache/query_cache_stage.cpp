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
// Created by Longda on 2021/4/13.
//

#include <string.h>
#include <string>

#include "query_cache_stage.h"

#include "common/conf/ini.h"
#include "common/io/io.h"
#include "common/lang/string.h"
#include "common/log/log.h"
#include "common/seda/timer_stage.h"

using namespace common;

//! Constructor
QueryCacheStage::QueryCacheStage(const char *tag) : Stage(tag)
{}

//! Destructor
QueryCacheStage::~QueryCacheStage()
{}

//! Parse properties, instantiate a stage object
Stage *QueryCacheStage::make_stage(const std::string &tag)
{
  QueryCacheStage *stage = new (std::nothrow) QueryCacheStage(tag.c_str());
  if (stage == nullptr) {
    LOG_ERROR("new QueryCacheStage failed");
    return nullptr;
  }
  stage->set_properties();
  return stage;
}

//! Set properties for this object set in stage specific properties
bool QueryCacheStage::set_properties()
{
  //  std::string stageNameStr(stage_name_);
  //  std::map<std::string, std::string> section = g_properties()->get(
  //    stageNameStr);
  //
  //  std::map<std::string, std::string>::iterator it;
  //
  //  std::string key;

  return true;
}

//! Initialize stage params and validate outputs
bool QueryCacheStage::initialize()
{
  LOG_TRACE("Enter");

  std::list<Stage *>::iterator stgp = next_stage_list_.begin();
  plan_cache_stage = *(stgp++);

  LOG_TRACE("Exit");
  return true;
}

//! Cleanup after disconnection
void QueryCacheStage::cleanup()
{
  LOG_TRACE("Enter");

  LOG_TRACE("Exit");
}

void QueryCacheStage::handle_event(StageEvent *event)
{
  LOG_TRACE("Enter\n");

  // Add callback to update query cache
  /*
  CompletionCallback *cb = new (std::nothrow) CompletionCallback(this, nullptr);
  if (cb == nullptr) {
    LOG_ERROR("Failed to new callback for SQLStageEvent");
    event->done_immediate();
    return;
  }

  event->push_callback(cb);
   */
  // do nothing here, pass the event to the next stage
  plan_cache_stage->handle_event(event);

  LOG_TRACE("Exit\n");
  return;
}

void QueryCacheStage::callback_event(StageEvent *event, CallbackContext *context)
{
  LOG_TRACE("Enter\n");

  // update data to query cache here
  // event->done_immediate();

  LOG_TRACE("Exit\n");
  return;
}
