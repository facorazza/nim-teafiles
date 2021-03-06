# Copyright 2017 UniCredit S.p.A.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

mode = ScriptMode.Verbose

packageName   = "teafiles"
version       = "0.1.5"
author        = "Andrea Ferretti"
description   = "TeaFiles for Nim"
license       = "Apache2"
skipFiles     = @["test.nim", "acme.tea"]

requires "nim >= 0.18.0"

--forceBuild

task test, "run tests":
  --hints: off
  --linedir: on
  --stacktrace: on
  --linetrace: on
  --debuginfo
  --run
  setCommand "c", "test.nim"

task gendoc, "generate documentation":
  --docSeeSrcUrl: https://github.com/unicredit/nim-teafiles/blob/master
  setCommand "doc2", "teafiles.nim"