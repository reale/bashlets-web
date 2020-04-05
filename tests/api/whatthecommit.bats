#!/usr/bin/env bats

source bashlets web::api::whatthecommit

@test "web/api/whatthecommit: get a random commit message" {
  result="$(bash$$ whatthecommit get)"
  [[ -n $result ]]
}
