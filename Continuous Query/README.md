InfluxDB gets the trades data from exchanges using Peatio. The records are stored in InfluxDB bucket.

Schema sample
| time                | close | high | low  | market | open | volume |
| 1654703700000000000 | 0.01  | 0.01 | 0.01 | chraud | 0.01 | 7799   |

Field key "market" denoted the cryptocurrency. For full list of codes, refer to StockCodes.md


InfluxDB v1.x uses SQL to query buckets and schedule continuously query. 

Although InfluxDB v2.x supports SQL query, Continuously query is managed by "task" function using Flux functional data scripting language.


<p>Reference:</p>
<ul>
    <li>StockCodes.md for the crypto code in trades table</li>
    <li>influxdb.sql for CQ SQL script</li>
    <li></li> 
</ul>