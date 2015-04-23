-module(variables).
-include_lib("eunit/include/eunit.hrl").

immutable() ->
    X = 2,
    X = 3.

variables_test_() ->
    [
        ?_assertEqual(2, X = 2),
        ?_assertError({badmatch, 3}, immutable())
    ].
