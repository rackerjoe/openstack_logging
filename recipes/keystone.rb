# Cookbook Name:: openstack_logging
# Recipe:: keystone
#
# Copyright 2013, Rackspace US, Inc.
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

# Keystone rsyslog setup
if node.recipe?("keystone::keystone-api") or node[:recipes].include?("keystone::keystone-api")
  openstack_logging_filemonitor "keystone" do
    monitor_name "keystone"
    action :create
  end
end
