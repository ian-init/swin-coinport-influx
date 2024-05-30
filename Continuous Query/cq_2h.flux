// this is a snippet use aaveaud to demostrate candles building. Refer to StockCodes.md for others crypto code and trades_to_cq_1m.flux for full code

option task = {
    name: "cq_2h",
    every: 2h,
}

open =
    from(bucket: "candles_1h")
        |> range(start: -2h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_2h")

max =
    from(bucket: "candles_1h")
        |> range(start: -2h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_2h")

min =
    from(bucket: "candles_1h")
        |> range(start: -2h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_2h")     

close =
    from(bucket: "candles_1h")
        |> range(start: -2h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_2h")