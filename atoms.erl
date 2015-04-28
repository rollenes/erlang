-module(atoms).
-include_lib("eunit/include/eunit.hrl").

upper_case_atom() ->
    X = 'Upper case Atom',
    Y = 'Upper case Atom',
    X = Y.

atoms_test_() ->
    [
        ?_assertEqual('atom', atom = 'atom'),
        ?_assert(atom > 200),
        ?_assertNot(atom =< 1),
        ?_assertEqual('Upper case Atom', upper_case_atom())
    ].