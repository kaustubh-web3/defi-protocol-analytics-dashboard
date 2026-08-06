SELECT
    project,
    COUNT(DISTINCT tx_from) AS active_users
FROM dex.trades
WHERE project IN (
    'uniswap',
    'curve',
    'sushiswap',
    'balancer'
)
GROUP BY project
ORDER BY active_users DESC;
