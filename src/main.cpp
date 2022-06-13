/*
 * Copyright 2022 The casbin Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <casbin/casbin.h>
#include <iostream>

int main()
{
    casbin::Enforcer e("../assets/model.conf", "../assets/policy.csv");

    if (e.Enforce({"alice", "/alice_data/hello", "GET"})) {
        std::cout << "Enforce OK" << std::endl;
    } else {
        std::cout << "Enforce NOT Good" << std::endl;
    }

    if (e.Enforce({"alice", "/alice_data/hello", "POST"})) {
        std::cout << "Enforce OK" << std::endl;
    } else {
        std::cout << "Enforce NOT Good" << std::endl;
    }
}
