#
# Cookbook Name:: megaraidcli
# Recipe:: default
#
# Copyright 2012, LivingSocial
# Author: Paul Thomas <paul.thomas@livingsocial.com>
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

# These are all prerequisites of the packages I am going to install
package "lib32gcc1" do
  action :install
end

package "lib32ncurses5" do
  action :install
end

package "libc6-i386" do
  action :install
end

package "lib32stdc++6" do
  action :install
end

package "lib32tinfo5" do
  action :install
end

cookbook_file "/tmp/lib-utils_1.00-10_all.deb" do
  source "lib-utils_1.00-10_all.deb"
  owner "root"
  group "root"
  mode "0600"
  action :create_if_missing
end

cookbook_file "/tmp/megacli_8.04.07-2_all.deb" do
  source "megacli_8.04.07-2_all.deb"
  owner "root"
  group "root"
  mode "0600"
  action :create_if_missing
end

cookbook_file "/usr/bin/MegaCli64" do
  owner "root"
  group "root"
  mode "0755"
  action :create_if_missing
end

package "lib-utils" do
  action :install
  source "/tmp/lib-utils_1.00-10_all.deb"
  subscribes :create_if_missing, resources("cookbook_file[/tmp/lib-utils_1.00-10_all.deb]")
end

package "megacli" do
  action :install
  source "/tmp/megacli_8.04.07-2_all.deb"
  subscribes :create_if_missing, resources("cookbook_file[/tmp/megacli_8.04.07-2_all.deb]")
end
