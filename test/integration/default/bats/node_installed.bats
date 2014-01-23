#!/usr/bin/env bats

export PATH="/usr/local/bin:$PATH"

@test "node binary is found in PATH" {
  run which node
  [ "$status" -eq 0 ]
}

@test "npm binary is found in PATH" {
  run which npm
  [ "$status" -eq 0 ]
}
