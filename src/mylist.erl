%% @author geeth
%% @doc @todo Add description to mylist.


-module(mylist).

%% ====================================================================
%% API functions
%% ====================================================================
-export([sum/1, evens/1,evens_lc/1]).

sum(List) ->
	lists:foldl(fun(X,Sum) -> X+Sum end,0, List).

evens(List) ->
	Even_Fun=fun(X) -> 
					 X rem 2 == 0 
			 end,
	lists:filter(Even_Fun, List).

evens_lc(List) ->
	[X || X <- List, X rem 2 =:= 0].

%% ====================================================================
%% Internal functions
%% ====================================================================

