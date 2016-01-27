%% @author geeth
%% @doc @todo Add description to general.


-module(general).

%% ====================================================================
%% API functions
%% ====================================================================
-export([beach/1]).


beach(Temperature) ->
	case Temperature of
		{celsius, N} when N >= 20, N =< 45 ->
							'favorable';
		{kelvin, N} when N >= 293, N =< 318 ->
					'scientifically favorable';
		{fahrenheit, N} when N >= 68, N =< 113 ->
				'favorable in the US';
		_ ->
			'avoid beach'
	end.




%% ====================================================================
%% Internal functions
%% ====================================================================


