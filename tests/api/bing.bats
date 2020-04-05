#!/usr/bin/env bats

source bashlets web::api::bing

@test "web/api/bing: search URL for bing.com" {
  result="$(bash$$ bing search_url bashlets)"
  expected="https://www.bing.com/search?q=bashlets"
  [[ $result == $expected ]]
}
