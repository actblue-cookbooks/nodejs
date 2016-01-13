#
# Author:: Nathan L Smith (nlloyds@gmail.com)
# Author:: Marius Ducea (marius@promethost.com)
# Cookbook Name:: nodejs
# Recipe:: package
#
# Copyright 2012, Cramer Development, Inc.
# Copyright 2013, Opscale
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

case node['platform_family']
  when 'debian'
    apt_repository 'node.js' do
      uri "https://deb.nodesource.com/node_#{node['nodejs']['major_version']}"
      distribution node['lsb']['codename']
      components ['main']
      key 'https://deb.nodesource.com/gpgkey/nodesource.gpg.key'
      action :add
    end
    packages = %w{ nodejs }
  when 'rhel'
    include_recipe 'yum::epel'
    packages = %w{ nodejs nodejs-devel npm }
  when 'smartos'
    packages = %w{ nodejs }
  else
    Chef::Log.error "There are no nodejs packages for this platform; please use the source or binary method to install node"
    return
end

packages.each do |node_pkg|
  package node_pkg do
    version node['nodejs']['package_versions'][node_pkg]
  end
end
