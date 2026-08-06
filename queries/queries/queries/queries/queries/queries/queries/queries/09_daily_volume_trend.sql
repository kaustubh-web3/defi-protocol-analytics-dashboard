SELECT
    DATE_TRUNC('day', block_time) AS day,
    project,
    SUM(amount_usd) AS daily_volume
FROM dex.trades
WHERE project IN (
    'uniswap',
    'curve',
    'sushiswap',
    'balancer'
)
GROUP BY 1,2
ORDER BY 1;
