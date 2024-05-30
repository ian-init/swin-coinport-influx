<p>InfluxDB gets the trades data from exchanges using Peatio. The records are stored in InfluxDB bucket.</p>

<p>Schema sample</p>
<p>| time                | close | high | low  | market | open | volume |</p>
<p>| 1654703700000000000 | 0.01  | 0.01 | 0.01 | chraud | 0.01 | 7799   |</p>

<p>Field key "market" denoted the cryptocurrency. For full list of codes, refer to StockCodes.md</p>

<p>InfluxDB v1.x uses SQL to query buckets and schedule continuously query.</p>

<p>Although InfluxDB v2.x supports SQL query, Continuously query is managed by "task" function using Flux functional data scripting language.</p>


<p>Reference:</p>
<ul>
    <li>StockCodes.md for the crypto code in trades table</li>
    <li>influxdb.sql for CQ SQL script</li>
    <li></li> 
</ul>