%% @author geeth
%% @doc @todo Add description to recursive.


-module(recursive).

%% ====================================================================
%% API functions
%% ====================================================================
-export([fac/1,tail_fac/1]).
-export([len/1,tail_len/1]).

% factorial
fac(0) -> 1;
fac(N) when N > 0 -> N*fac(N-1).


% tail recursive factorial
tail_fac(N) -> tail_fac(N,1).
 

% list length
len([]) -> 0;
len([_|T]) -> 1 + len(T).


% tail recursion array length
tail_len(L) -> tail_len(L,0).

%% ====================================================================
%% Internal functions
%% ====================================================================

% tail recursion factorial
tail_fac(0,Acc) -> Acc;
tail_fac(N,Acc) when N > 0 -> tail_fac(N-1,N*Acc).


% tail recursion length of list
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T,Acc+1).