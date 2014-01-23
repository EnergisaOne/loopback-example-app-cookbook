#
# Cookbook Name:: sls-sample-app
# Recipe:: default
#
# Copyright (C) 2014 StrongLoop, Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

application "sls-sample-app-memory" do
  path "/srv/sls-sample-app-memory"
  packages ["git"]
  repository "git://github.com/strongloop/sls-sample-app.git"
  nodejs do
    environment "DB" => 'memory', "PORT" => "3000",
      "LD_LIBRARY_PATH" => "$LD_LIBRARY_PATH:/srv/sls-sample-app-memory/current/node_modules/loopback-connector-oracle/node_modules/instantclient"
    entry_point "."
  end
end

application "sls-sample-app-mongodb" do
  path "/srv/sls-sample-app-mongodb"
  packages ["git"]
  repository "git://github.com/strongloop/sls-sample-app.git"
  nodejs do
    environment "DB" => 'mongodb', "PORT" => "3001",
      "LD_LIBRARY_PATH" => "$LD_LIBRARY_PATH:/srv/sls-sample-app-mongodb/current/node_modules/loopback-connector-oracle/node_modules/instantclient"
    entry_point "."
  end
end

application "sls-sample-app-oracle" do
  path "/srv/sls-sample-app-oracle"
  packages ["git"]
  repository "git://github.com/strongloop/sls-sample-app.git"
  nodejs do
    environment "DB" => 'oracle', "PORT" => "3002",
      "LD_LIBRARY_PATH" => "$LD_LIBRARY_PATH:/srv/sls-sample-app-oracle/current/node_modules/loopback-connector-oracle/node_modules/instantclient"
    entry_point "."
  end
end
