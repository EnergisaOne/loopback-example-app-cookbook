#!/usr/bin/env bats

@test "sls-sample-app-memory_nodejs is running" {
  run /sbin/initctl status sls-sample-app-memory_nodejs
  [ "$status" -eq 0 ]
}

@test "sls-sample-app-mongodb_nodejs is running" {
  run /sbin/initctl status sls-sample-app-mongodb_nodejs
  [ "$status" -eq 0 ]
}

@test "sls-sample-app-oracle_nodejs is running" {
  run /sbin/initctl status sls-sample-app-oracle_nodejs
  [ "$status" -eq 0 ]
}
