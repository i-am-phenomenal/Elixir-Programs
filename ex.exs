module(powerset).
export([generate/1]).

generate([]) -> [[]];
generate([H|T]) ->
 PT = generate(T),
 [ [H|X] || X <- PT ] ++ PT.
