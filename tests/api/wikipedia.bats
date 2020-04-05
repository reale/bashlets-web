#!/usr/bin/env bats

source bashlets web::api::wikipedia

@test "web/api/wikipedia: search URL for wikipedia.org" {
  result="$(bash$$ wikipedia search_url bashlets)"
  expected="https://en.wikipedia.org/w/index.php?search=bashlets"
  [[ $result == $expected ]]
}
