/* Copyright (c) 2021 Xie Meiyi(xiemeiyi@hust.edu.cn) and OceanBase and/or its
affiliates. All rights reserved. miniob is licensed under Mulan PSL v2. You can
use this software according to the terms and conditions of the Mulan PSL v2. You
may obtain a copy of Mulan PSL v2 at: http://license.coscl.org.cn/MulanPSL2 THIS
SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
See the Mulan PSL v2 for more details. */

//
// Created by Wangyunlai on 2021/5/14.
//

#ifndef __OBSERVER_SQL_EXECUTOR_VALUE_H_
#define __OBSERVER_SQL_EXECUTOR_VALUE_H_

#include <string.h>

#include <ostream>
#include <sstream>
#include <string>
#include <iomanip>

#include "execute_stage.h"
#include "rc.h"

class TupleValue {
 public:
  TupleValue() = default;

  virtual ~TupleValue() = default;

  virtual void to_string(std::ostream &os) const = 0;

  virtual int compare(const TupleValue &other) const = 0;

  virtual AttrType get_type() const = 0;

 private:
};

class IntValue : public TupleValue {
 public:
  explicit IntValue(int value) : value_(value) {}

  void to_string(std::ostream &os) const override { os << value_; }

  int compare(const TupleValue &other) const override {
    const IntValue &int_other = (const IntValue &)other;
    return value_ - int_other.value_;
  }
  AttrType get_type() const override { return AttrType::INTS; }
  int get_value() { return value_; }

 private:
  int value_;
};

RC deserialize_date(char *out, size_t len_out, uint16_t in);

RC serialize_date(uint16_t *out, const char *in);

class DateValue : public TupleValue {
 public:
  explicit DateValue(uint16_t value) : value_(value) {}

  void to_string(std::ostream &os) const override {
    char buf[11];
    deserialize_date(buf, sizeof(buf), value_);
    os << buf;
  }

  int compare(const TupleValue &other) const override {
    const DateValue &date_other = (const DateValue &)other;
    return value_ - date_other.value_;
  }
  AttrType get_type() const override { return AttrType::DATES; }
  uint16_t get_value() { return value_; }

 private:
  uint16_t value_;
};

class FloatValue : public TupleValue {
 public:
  explicit FloatValue(float value) : value_(value) {}

  void to_string(std::ostream &os) const override { 
    int n=2;
    //保留两位小数，含零
    std::stringstream temp_ss;
    temp_ss.setf(std::ios::fixed);
    temp_ss << std::setprecision(n)<<value_;
    std::string out;
    temp_ss >> out;
    //此时只有三种情况 X.00 X.X0 X.XX
    for(;n>=0;n--)
    {
      if(out.back()=='0' || out.back()=='.') out.pop_back();
      else break;
    }
    os<<out;
  }

  int compare(const TupleValue &other) const override {
    const FloatValue &float_other = (const FloatValue &)other;
    float result = value_ - float_other.value_;
    if (result > 0) {  // 浮点数没有考虑精度问题
      return 1;
    }
    if (result < 0) {
      return -1;
    }
    return 0;
  }
  AttrType get_type() const override { return AttrType::FLOATS; }
  float get_value() { return value_; }

 private:
  float value_;
};

class StringValue : public TupleValue {
 public:
  StringValue(const char *value, int len) : value_(value, len) {}

  explicit StringValue(const char *value) : value_(value) {}

  void to_string(std::ostream &os) const override { os << value_; }

  int compare(const TupleValue &other) const override {
    const StringValue &string_other = (const StringValue &)other;
    return strcmp(value_.c_str(), string_other.value_.c_str());
  }
  AttrType get_type() const override { return AttrType::CHARS; }
  std::string get_value() { return value_; }

 private:
  std::string value_;
};

#endif  //__OBSERVER_SQL_EXECUTOR_VALUE_H_
