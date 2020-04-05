#!/usr/bin/env bats

source bashlets web::api::ipapi

@test "web/api/ipapi: retrieve IP location" {
  result="$(bash$$ ipapi country)"
  expected=US
  [[ $result == $expected ]]
}
