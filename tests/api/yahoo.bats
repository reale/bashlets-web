#!/usr/bin/env bats

source bashlets web::api::yahoo

@test "web/api/yahoo: search URL for yahoo.com" {
  result="$(bash$$ yahoo search_url bashlets)"
  expected="https://search.yahoo.com/search?p=bashlets"
  [[ $result == $expected ]]
}
