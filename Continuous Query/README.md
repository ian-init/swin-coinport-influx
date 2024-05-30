<h3>Trades data</h3>
<p>InfluxDB gets the trades data from exchanges using Peatio. Records are stored in InfluxDB bucket.</p>

<p>The schema:</p>
<p>| time&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;| close | high | low  | market | open | volume |</p>
<p>| 1654703700000000000&nbsp;&nbsp;&nbsp;| 0.01&nbsp;&nbsp;| 0.01 | 0.01 | chraud | 0.01&nbsp;| 7799&emsp;&emsp;|</p>

<p>The field key "market" denoted the cryptocurrencies. Refer to StockCodes.md for the list.</p>

<h3>Query language</h3>
<p>InfluxDB v1.x uses SQL to query buckets and schedule Continuously Query (CQ). Although InfluxDB OSS v2.x supports SQL query in CLI, CQ is managed by "task" function using the Flux functional data scripting language.</p>


<h3>Content</h3>
<ul>
    <li>Flux files for the CQ</li>
    <li>StockCodes.md for the crypto code in trades table</li>
    <li>influxdb.sql for CQ SQL script</li>
</ul>