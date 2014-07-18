--[[


Dienofail Baseult v0.04


Now with autoupdater and improvements

-Added slider for delay adjustment

-Added slider for health adjustment (% of R lethal health)

-Added print options to see when a baseult opportunity is available

--]]
assert(load(Base64Decode("G0x1YVIAAQQEBAgAGZMNChoKAAAAAAAAAAAAAReOAAAABgBAAAdAQABYgEAAFwAEgAYAQAAHQEAAWMBAABcAA4AGAEAAB0BAAFgAQQAXAAKABgBAAAdAQABYQEEAFwABgAYAQAAHQEAAWIBBABcAAIAfAIAACwAAAEsAAACEAAAAywAAAAMBAABEAQABBsJBAApCQoQDAgAAQYICAIbCQgCHAkMFxkJDAMeCwwXdgoAABsNDAB2DgADNAoMFBgNEAB2DgADNAoMFnUIAAYMCgADBQgQAAYMEAEHDBACBAwUAxsNCAMdDxQcBhAUAQcQFAN2DgAFWw4MGhgNGAMFDBgCWwwMHxoNGAMfDxgcABAAHQQQHAIFEBwDdgwACAYQHAEEEBQCGxEIAh0RFCcGEBQABxQcAnYSAARaEBAhlBAAACEAEkJsCAAAXQAuARkRIAIAEAAbABIAGXYSAAVsEAAAXAAmAhoRGAIeESAnABIAIAcUIAJ2EgAGbBAAAFwAIgMYESQAABQAJ3YQAAYAEgAnGBEkAAAWABN2EAAEZgIQJF0ADgMZESQABhQkAQAUACYHFCQAWhQUK3UQAAcZESQABBQoA3UQAAcZESgAGBUgAQYUKAN1EgAEXQAKAxkRJAAHFCgBABQAJgQULABaFBQrdRAABF4AAgIZESQDBRAsAnUQAAWVEAAAIQASXZYQAAAhAhJdlxAAACEAEmGUEAQAIQISYZUQBAAhABJllhAEACECEmWXEAQAIQASaZQQCAAhAhJplRAIACEAEm2WEAgAIQISbHwCAADgAAAAEBwAAAG15SGVybwAECQAAAGNoYXJOYW1lAAQFAAAASmlueAAEBwAAAEV6cmVhbAAEBwAAAERyYXZlbgAEBQAAAEFzaGUABAQAAABMdXgABAMAAABfRwAECgAAAFNwYXduS2lsbAAABAUAAAAwLjA0AAQFAAAAbWF0aAAECwAAAHJhbmRvbXNlZWQABAMAAABvcwAEBQAAAHRpbWUABA8AAABHZXRJbkdhbWVUaW1lcgAEDQAAAEdldFRpY2tDb3VudAAECAAAAEJhc2VVbHQABA8AAAByYXcuZ2l0aHViLmNvbQAELwAAAC9EaWVub2ZhaWwvQm9ML21hc3Rlci92ZXJzaW9ucy9CYXNlVWx0LnZlcnNpb24ABAcAAAA/cmFuZD0ABAcAAAByYW5kb20AAwAAAAAAAPA/AwAAAAAAiMNABAwAAABTQ1JJUFRfUEFUSAAEDAAAAEJhc2VVbHQubHVhAAQHAAAAc3RyaW5nAAQFAAAAZ3N1YgAEAgAAAFwABAIAAAAvAAQlAAAAaHR0cDovL3d3dy5kaWVub2ZhaWwuY29tL0Jhc2VVbHQubHVhAAMAAAAAAGr4QAQJAAAARG93bmxvYWQABA0AAABHZXRXZWJSZXN1bHQABAYAAABtYXRjaAAECAAAACVkKy4lZCsABAkAAAB0b251bWJlcgAEBgAAAHByaW50AAQtAAAAPGZvbnQgY29sb3I9IiNGRjAwMDAiPk5ldyB2ZXJzaW9uIGF2YWlsYWJsZSAABAgAAAA8L2ZvbnQ+AAQ9AAAAPGZvbnQgY29sb3I9IiNGRjAwMDAiPlVwZGF0aW5nLCBwbGVhc2UgZG9uJ3QgcHJlc3MgRjk8L2ZvbnQ+AAQMAAAARGVsYXlBY3Rpb24AAwAAAAAAAABABDgAAAA8Zm9udCBjb2xvcj0iI0ZGMDAwMCI+WW91IGhhdmUgZ290IHRoZSBsYXRlc3QgdmVyc2lvbiAoAAQJAAAAKTwvZm9udD4ABDwAAAA8Zm9udCBjb2xvcj0iI0ZGMDAwMCI+RXJyb3IgZG93bmxvYWRpbmcgdmVyc2lvbiBpbmZvPC9mb250PgAEBwAAAE9uTG9hZAAEBQAAAE1lbnUABAcAAABPblRpY2sABA0AAABPblJlY3ZQYWNrZXQABA0AAABPblNlbmRQYWNrZXQABBAAAABSZXN0b3JlTW92ZW1lbnQABAcAAABJc0FsbHkABA0AAABHZXRFbmVteVVuaXQABA4AAABHZXRUcmF2ZWxUaW1lAAQJAAAAR2V0U3BlZWQACwAAAA0AAAAPAAAAAAAEBgAAAAYAQABFAIAAhQAAAeUAAAAdQAACHwCAAAEAAAAEDQAAAERvd25sb2FkRmlsZQABAAAADgAAAA8AAAAAAAIEAAAABgBAAEFAAAAdQAABHwCAAAIAAAAEBgAAAHByaW50AARaAAAAPGZvbnQgY29sb3I9IiNGRjAwMDAiPkRpZW5vIEJhc2VVbHQgRG93bmxvYWQgRmluaXNoZWQsIFBsZWFzZSBEb3VibGUgRjkgYWZ0ZXIgYXV0aDwvZm9udD4AAAAAAAEAAAAAABAA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"), nil, "bt", _ENV))()