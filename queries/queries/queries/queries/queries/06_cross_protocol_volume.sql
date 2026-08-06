SELECT
    project,
    SUM(amount_usd) AS total_volume_usd
FROM dex.trades
WHERE project IN (
    'uniswap',
    'curve',
    'sushiswap',
    'balancer'
)
GROUP BY project
ORDER BY total_volume_usd DESC;
