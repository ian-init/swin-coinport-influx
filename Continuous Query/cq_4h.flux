// this is a snippet use aaveaud to demostrate candles building. Refer to StockCodes.md for others crypto code and trades_to_cq_1m.flux for full code

option task = {
    name: "cq_4h",
    every: 4h,
}

open =
    from(bucket: "candles_2h")
        |> range(start: -4h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_4h")

max =
    from(bucket: "candles_2h")
        |> range(start: -4h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_4h")

min =
    from(bucket: "candles_2h")
        |> range(start: -4h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_4h")     

close =
    from(bucket: "candles_2h")
        |> range(start: -4h)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_4h")