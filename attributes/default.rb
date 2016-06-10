#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This is now the only installation method
default['nodejs']['install_method'] = 'package'

# Used to select a nodesource apt repo for installing from packages
default['nodejs']['major_version'] = '4.x'

# If installing from packages, set attributes here to install specific versions. legacy packages have separate nodejs and npm packages, current just has nodejs.
default['nodejs']['package_versions'] = {}
