-module(numbers).
-include_lib("eunit/include/eunit.hrl").

arithmetic_test_() ->
    [
        ?_assert(not(2 =:= 2.0)),
        ?_assert(2 == 2.0),

        ?_assert(1 + 1 =:= 2),
        ?_assertEqual(2.3, 1.1 + 1.2),

        ?_assertEqual(-1, 0 - 1),

        ?_assert(2*4 =:= 8),
        ?_assertNot(3*7 =:= 20),

        ?_assertEqual(4.0, 4/1),
        ?_assert(2.0 =:= 4/2),

        ?_assertException(error, badarith, 5/0),

        ?_assertEqual(2, 5 div 2),
        ?_assertEqual(1, 5 rem 2),

        % floating point precision test
        ?_assert(not(1960 =:= 19.6*100)),
        ?_assert(not(1960 == 19.6*100))
    ].

base_notation_test_() ->
    [
        ?_assertEqual(8, 2#1000),
        ?_assertEqual(8, 5#13),
        ?_assertEqual(8, 8#10),
        ?_assertEqual(26, 16#1A)
    ].