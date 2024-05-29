option task = {
    name: "trade_to_cq_1m",
    every: 1m,
}

max =
    from{bucket: "trades}
    |> filter(fn: (r) => r["market"] == "")    