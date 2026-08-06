SELECT
    DATE_TRUNC('day', block_time) AS day,
    project,
    COUNT(DISTINCT tx_from) AS active_users
FROM dex.trades
WHERE project IN ('uniswap', 'curve')
GROUP BY 1,2
ORDER BY 1;
