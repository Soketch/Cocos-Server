#include <iostream>
#include "log/log.h"
#include "utils/util.h"

int main(int argc, char **argv)
{
    cero::Logger::ptr logger(new cero::Logger);

    logger->addAppender(cero::LogAppender::ptr(new cero::StdoutLogAppender));

    cero::FileLogAppender::ptr file_appender(new cero::FileLogAppender("./log.txt"));
    cero::LogFormatter::ptr fmt(new cero::LogFormatter("%d%T%p%T%m%n"));
    file_appender->setFormatter(fmt);
    file_appender->setLevel(cero::LogLevel::ERROR);

    logger->addAppender(file_appender);

    std::cout << "hello cero log" << std::endl;

    LOG_INFO(logger) << "test macro";
    LOG_ERROR(logger) << "test macro error";

    LOG_FMT_ERROR(logger, "test macro fmt error %s", "aa");

    auto l = cero::LoggerMgr::GetInstance()->getLogger("xx");
    LOG_INFO(l) << "xxx";

    std::cout << "==================" << std::endl;

    LOG_SUCCESS(l) << "  success log";

    LOG_DEBUG(l) << "  debug log";

    LOG_INFO(l) << "  info log";

    LOG_WARN(l) << "  warn log";

    LOG_ERROR(l) << "  error log";

    LOG_FATAL(l) << "  fatal log";

    return 0;
}