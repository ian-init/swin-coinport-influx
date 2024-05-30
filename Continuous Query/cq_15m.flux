// this is a snippet using aaveaud to demostrate candles building. Refer to StockCodes.md for others crypto code and trades_to_cq_1m.flux for full code

option task = {
    name: "cq_15m",
    every: 15m,
}

open =
    from(bucket: "candles_5m")
        |> range(start: -15m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_15m")

max =
    from(bucket: "candles_5m")
        |> range(start: -15m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_15m")

min =
    from(bucket: "candles_5m")
        |> range(start: -15m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_15m")     

close =
    from(bucket: "candles_5m")
        |> range(start: -15m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_15m")