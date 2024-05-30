import "math"

option task = {
    name: "volatility",
    every: 1d,
}

from(bucket: "candles_1d")
    |> range(start: PERIOD) // recommended perdiod +6 months
    |> filter(fn: (r) => r._measurement == "close“ AND r.market == CODE) // refer /Continuous Query/StockCodes.md for list
    |> derivative()
    |> stddev()
    |> map(fn: (r) => ({r with _value: r._value * math.sqrt(x: 252.0)}))
    |> set(key: "_measurement", value: "volatility")
    |> map(fn: (r) => ({r with _time: now()}))
    |> to(bucket: "volatility")