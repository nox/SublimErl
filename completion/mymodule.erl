-module(mymodule).
-export([hello/0, goodbye/0, greetings/1]).

-spec hello() -> string().
hello() ->
	greetings("hello").
 
-spec goodbye() -> string().
goodbye() ->
	greetings("goodbye").

-spec greetings(Text::string()) -> string().
greetings(Text) ->
	lists:flatten(io_lib:format("~s sublimerl", [Text])).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

greetings_test_() ->
	[?_assertEqual("hey sublimerl", greetings("hey"))].

-endif.