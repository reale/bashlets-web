#!/usr/bin/env bats

source bashlets web::api::dyndns

@test "web/api/dyndns: displays our IP address as seen by the Internet" {
  result="$(bash$$ dyndns checkip)"
  expected="^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"
  [[ $result =~ $expected ]]
}
