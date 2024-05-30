option task = {
    name: "trade_to_cq_1m",
    every: 1m,
}

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "aaveusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "apeusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "axsusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bataud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bataud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bataud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bataud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "batusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "batusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "batusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "batusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bchaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bchaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bchaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bchaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicoaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicoaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicoaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicoaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicousdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicousdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicousdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bicousdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bnbusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bntusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "bsvusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "btcusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chraud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chraud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chraud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chraud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chrusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chrusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chrusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "chrusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "compaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "compaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "compaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "compaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "daiusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dashusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dmfusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dogeusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dotaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dotaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dotaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "dotaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "eosusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "etcaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "etcaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "etcaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "etcaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ethusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ftmusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "htusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leoaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leoaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leoaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leoaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leousdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leousdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leousdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "leousdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "linkusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "looksusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "lrcusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "ltcusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkraud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkraud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkraud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkraud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkrusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkrusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkrusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "mkrusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "nahusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powraud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powraud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powraud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powraud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powrusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powrusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powrusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "powrusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shibusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shraud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shraud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shraud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shraud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shrusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shrusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shrusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "shrusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "solusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "sxpusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "trstusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniusdt")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniusdt")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniusdt")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "uniusdt")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "usdtaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "usdtaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "usdtaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "usdtaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "yfiaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "yfiaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "yfiaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "yfiaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")
open =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "zrxaud")
        |> first()
        |> set(key: "_measurement", value: "open")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

max =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "zrxaud")
        |> max()
        |> set(key: "_measurement", value: "max")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")

min =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "zrxaud")
        |> min()
        |> set(key: "_measurement", value: "min")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")     

close =
    from(bucket: "trades")
        |> range(start: -1m)
        |> filter(fn: (r) => r["market"] == "zrxaud")
        |> last()
        |> set(key: "_measurement", value: "close")
        |> map(fn: (r) => ({r with _time: now()}))
        |> to(bucket: "candles_1m")
        