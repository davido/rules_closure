# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# deps.bzl loads definitions for use in WORKSPACE files. It's important
# to keep this file and the .bzl files it loads separate from the files
# loaded by def.bzl. def.bzl and its dependencies may depend on repositories
# declared here, but at the time this file is loaded, we can't assume
# anything has been declared.

load(
    "@io_bazel_rules_closure//closure/private:repositories.bzl",
    _closure_rules_dependencies = "closure_rules_dependencies",
)
load(
    "//closure/private:java_import_external.bzl",
     _java_import_external = "java_import_external",
)

closure_rules_dependencies = _closure_rules_dependencies
java_import_external = _java_import_external
