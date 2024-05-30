<h3>Trades data</h3>
<p>InfluxDB gets the trades data from exchanges using Peatio.</p>

<p>The schema:</p>
<ul>
    <li>Tag key</li>
        <ul>
            <li>market</li>
        </ul>
    <li>Field key</li>
        <ul>
            <li>close</li>
            <li>high</li>
            <li>low</li>
            <li>open</li>
        </ul>
    <li>Timestamp</li>
</ul>

<p>The tag key "market" denoted the cryptocurrencies. Refer to StockCodes.md for the list.</p>

<h3>Query language</h3>
<p>InfluxDB v1.x uses SQL to query buckets and schedule Continuously Query (CQ). Although InfluxDB OSS v2.x supports SQL query in CLI, CQ is managed by "task" function using the Flux functional data scripting language.</p>

<h3>Content</h3>
<ul>
    <li>Flux files for the CQ</li>
    <li>StockCodes.md for the crypto code in trades table</li>
    <li>influxdb.sql for CQ SQL script</li>
</ul>