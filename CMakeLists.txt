cmake_minimum_required(VERSION 3.10)

set(CMAKE_GENERATOR "Unix Makefiles" CACHE INTERNAL "" FORCE)


execute_process(
    COMMAND "date" "+%Y-%m-%d"
    OUTPUT_VARIABLE build_date_
    OUTPUT_STRIP_TRAILING_WHITESPACE)
message(STATUS "build date: ${build_date_}")

message(STATUS "sde EPOCH: $ENV{SOURCE_DATE_EPOCH}")
unset(ENV{SOURCE_DATE_EPOCH})
string(TIMESTAMP time_stamp_ UTC)
message(STATUS "BUILD TimeStamp: ${time_stamp_}")

set(PROJECT_NAME "test")

project(${PROJECT_NAME})

add_executable(${PROJECT_NAME} test.c)


