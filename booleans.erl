-module(booleans).
-include_lib("eunit/include/eunit.hrl").

compare_test_() ->
    [
        ?_assert(1 =:= 1),
        ?_assertNot(1 =/= 1),
        ?_assertNot(1 =:= 1.0),

        ?_assert(1 == 1.0),
        ?_assertNot(1 /= 1.0),

        ?_assertNot(true == 1),
        ?_assertNot(false == 1),

        ?_assert(1 > 0),
        ?_assertNot(1.0 > 1),
        ?_assert(1 >= 1),

        ?_assert(true > 1),
        ?_assert(false > 1)
    ].

boolean_operators_test_() ->
    [
        ?_assert(true),
        ?_assert(false or true),
        ?_assertNot(true and false),
        ?_assertNot(true xor true),
        ?_assert(not false)
    ].
