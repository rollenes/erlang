-module(fib).
-include_lib("eunit/include/eunit.hrl").
-export([fib/1]).

fib (0) ->
    1;
fib (1) ->
    1;
fib (X) ->
    fib(X - 1) + fib(X - 2).


fib_0_test() -> 1 = fib(0).
fib_1_test() -> 1 = fib(1).
fib_2_test() -> 2 = fib(2).
fib_3_test() -> 3 = fib(3).
fib_4_test() -> 5 = fib(4).

