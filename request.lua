function query(variables, query)
	local body = string.format(
		[[{"query": "%s"}]],
		query:gsub("\n", "\\n"):gsub("\t", " ")
	)

    return wrk.format('POST', "/", {['content-type'] = 'application/json'}, body)
end

request = function()
	return query("{}", string.format([[
query test%d {
    z%d: hello(who: \"foo\")
    a0: hello(who: \"foo\")
    a1: hello(who: \"foo\")
    a2: hello(who: \"foo\")
    a3: hello(who: \"foo\")
    a4: hello(who: \"foo\")
    a5: hello(who: \"foo\")
    a6: hello(who: \"foo\")
    a7: hello(who: \"foo\")
    a8: hello(who: \"foo\")
    a9: hello(who: \"foo\")
    b0: hello(who: \"foo\")
    b1: hello(who: \"foo\")
    b2: hello(who: \"foo\")
    b3: hello(who: \"foo\")
    b4: hello(who: \"foo\")
    b5: hello(who: \"foo\")
    b6: hello(who: \"foo\")
    b7: hello(who: \"foo\")
    b8: hello(who: \"foo\")
    b9: hello(who: \"foo\")
}
]], math.random(1000000), math.random(1000000)))
end
