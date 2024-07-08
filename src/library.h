/**
 * @file library.h
 * @author {soketch} ({skgfwb@gmail.com})
 * @brief 添加Module支持动态库加载，完善application模块加载,创建项目脚本
 * @version 0.1
 * @date 2024-07-08
 */
#ifndef __LIBRARY_H__
#define __LIBRARY_H__

#include <memory>
#include "module.h"

namespace cero
{

    class Library
    {
    public:
        static Module::ptr GetModule(const std::string &path);
    };

}

#endif