#!/usr/bin/env bats

source bashlets web::api::mankier

@test "web/api/mankier: get man page for command" {
  result=$(bash$$ mankier explain bash)
  expected="GNU Bourne-Again SHell"
echo $result
#  [[ $result =~ $expected ]]
}
