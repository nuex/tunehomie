-module(tune_homie).
-export([play/2, play/3]).
-define(TUNEDIR, "tunebank").

play(Node, Tune) ->
  play(Node, Tune, 8).

play(Node, Tune, Khz) ->
  Path = filename:join(?TUNEDIR, Tune ++ ".awk"),
  FormattedKhz = erlang:integer_to_list(Khz) ++ "k",
  Cmd = "awk -f bitwise.awk -f " ++ Path ++
        " | sox -t raw -r " ++ FormattedKhz ++ " -c 1 -e unsigned -b 8 - -d",
  rpc:cast(Node, os, cmd, [Cmd]).
