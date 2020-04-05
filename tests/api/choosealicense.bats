#!/usr/bin/env bats

source bashlets web::api::choosealicense

@test "web/api/choosealicense: fetch a license text" {
  result="$(bash$$ choosealicense get_license | head -1)"
  expected="GNU GENERAL PUBLIC LICENSE"
  [[ $result =~ $expected ]]
}
