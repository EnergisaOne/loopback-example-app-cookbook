# sls-sample-app cookbook

# Requirements

 - Ruby
 - Chef
 - Vagrant

# Usage

Once the major dependencies above have been installed, use bundler to install
the Ruby Gem dependencies for the cookbook:

> bundle install

This cookbook makes use of a vagrant plugin:

> vagrant plugin install vagrant-berkshelf

Converge two test nodes and run the tests against them:

> bundle exec kitchen test

# Attributes

# Recipes

# Author

Author:: StrongLoop, Inc. (<callback@strongloop.com>)
