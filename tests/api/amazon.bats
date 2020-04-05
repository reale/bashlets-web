#!/usr/bin/env bats

source bashlets web::api::amazon

@test "web/api/amazon: search URL for amazon.com" {
  result="$(bash$$ amazon search_url bashlets)"
  expected="https://www.amazon.com/s/ref=nb_ss?field-keywords=bashlets"
  [[ $result == $expected ]]
}
