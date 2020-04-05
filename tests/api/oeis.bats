#!/usr/bin/env bats

source bashlets web::api::oeis

@test "web/api/oeis: validate a sequence id" {
  $(bash$$ oeis validate_sequence_id A000040)
  [[ $status -eq 0 ]]
}

@test "web/api/oeis: get a sequence by id" {
  result="$(bash$$ oeis get_sequence_by_id | head)"
  expected="The prime numbers."
  [[ $result =~ $expected ]]
}

@test "web/api/oeis: describe a sequence by id" {
  result="$(bash$$ oeis describe_sequence_by_id | head)"
  expected="The prime numbers."
  [[ $result =~ $expected ]]
}

@test "web/api/oeis: find sequences by data points" {
  result="$(bash$$ oeis get_sequences_by_points 2 3 5 7 | head)"
  expected="The prime numbers."
  [[ $result =~ $expected ]]
}

@test "web/api/oeis: find and describe sequences by data points" {
  result="$(bash$$ oeis describe_sequences_by_points 2 3 5 7 | head)"
  expected="The prime numbers."
  [[ $result =~ $expected ]]
}

@test "web/api/oeis: grab the images used to graph the data points" {
  result="$(bash$$ oeis get_graph A000041 | od -A n -N 8 -t x1)"
  expected="89 50 4e 47 0d 0a 1a 0a"  # PNG signature
  [[ $result =~ $expected ]]
}

@test "web/api/oeis: get the recent additions" {
  result="$(bash$$ oeis get_recent | head)"
  expected="OEIS Recent Additions"
  [[ $result =~ $expected ]]
}
