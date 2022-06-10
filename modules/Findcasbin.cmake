#  Copyright 2021 Yash Pandey. All Rights Reserved.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

include(FetchContent)


FetchContent_Declare(
        casbin
        GIT_REPOSITORY https://github.com/casbin/casbin-cpp.git
        GIT_TAG v1.50.1
)

set(CASBIN_BUILD_TEST OFF)            # If you don't need to build tests for casbin
set(CASBIN_BUILD_BENCHMARK OFF)       # If you don't need to build benchmarks for casbin
set(CASBIN_BUILD_BINDINGS OFF)        # If you don't need language bindings provided by casbin
set(CASBIN_BUILD_PYTHON_BINDINGS OFF) # If you don't need python bindings provided by casbin

# Making casbin and its targets accessible to our project
FetchContent_MakeAvailable(casbin)

FetchContent_GetProperties(casbin)

# If casbin wasn't populated, then manually populate it
if(NOT casbin_POPULATED)
    FetchContent_Populate(casbin)
    add_subdirectory(${casbin_SOURCE_DIR} ${casbin_BINARY_DIR})
endif()
