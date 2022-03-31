/* Copyright (c) 2021 Xie Meiyi(xiemeiyi@hust.edu.cn) and OceanBase and/or its
affiliates. All rights reserved. miniob is licensed under Mulan PSL v2. You can
use this software according to the terms and conditions of the Mulan PSL v2. You
may obtain a copy of Mulan PSL v2 at: http://license.coscl.org.cn/MulanPSL2 THIS
SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
See the Mulan PSL v2 for more details. */

#include "sql/executor/value.h"

RC deserialize_date(char* out, size_t len_out, uint16_t in) {
  const time_t ONE_DAY = 24 * 60 * 60;
  tm timeinfo{};
  // 1970-01-01
  timeinfo.tm_year = 70;
  timeinfo.tm_mon = 0;
  timeinfo.tm_mday = 1;
  time_t t = mktime(&timeinfo) + in * ONE_DAY;
  strftime(out, len_out, "%F", localtime(&t));
  return RC::SUCCESS;
}

RC serialize_date(uint16_t* out, const char* in) {
  int year = 0, month = 0, day = 0;
  enum State { YEAR = 0, MONTH, DAY };
  State s = YEAR;
  for (int i = 0; in[i] != '\0'; i++) {
    if (isdigit(in[i])) {
      switch (s) {
        case YEAR:
          year *= 10;
          year += in[i] - '0';
          break;
        case MONTH:
          month *= 10;
          month += in[i] - '0';
          break;
        case DAY:
          day *= 10;
          day += in[i] - '0';
          break;
      }
    } else if (in[i] == '-') {
      s = (State)(s + 1);
    } else {
      return RC::INVALID_ARGUMENT;
    }
  }

  if (s != DAY || year < 1970 || year > 2038) {
    return RC::INVALID_ARGUMENT;
  }

  tm input_date{};
  year -= 1900;
  input_date.tm_year = year;
  month -= 1;
  input_date.tm_mon = month;
  input_date.tm_mday = day;
  time_t input_time = mktime(&input_date);
  if (input_time == -1 || input_date.tm_year != year ||
      input_date.tm_mon != month || input_date.tm_mday != day) {
    return RC::INVALID_ARGUMENT;
  }

  tm origin{};
  // 1970-01-01
  origin.tm_year = 70;
  origin.tm_mon = 0;
  origin.tm_mday = 1;
  time_t origin_time = mktime(&origin);

  const time_t ONE_DAY = 24 * 60 * 60;
  *out = (uint16_t)((input_time - origin_time) / ONE_DAY);
  return RC::SUCCESS;
}
