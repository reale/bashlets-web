#!/usr/bin/env bats

source bashlets web::api::google

@test "web/api/google: search URL for google.com" {
  result="$(bash$$ google search_url bashlets)"
  expected="https://www.google.com/search?hl=en#q=bashlets"
  [[ $result == $expected ]]
}
