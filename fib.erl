-module(fib).
-include_lib("eunit/include/eunit.hrl").

fib (0) ->
    1;
fib (1) ->
    1;
fib (X) when X > 1 ->
    fib(X - 1) + fib(X - 2).


fib_test_() ->
    [
        ?_assertError(function_clause, fib(-1)),
        ?_assertEqual(1, fib(0)),
        ?_assertEqual(1, fib(1)),
        ?_assertEqual(2, fib(2)),
        ?_assertEqual(3, fib(3)),
        ?_assertEqual(5, fib(4))
    ].
