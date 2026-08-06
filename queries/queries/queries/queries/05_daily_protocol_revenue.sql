SELECT
    DATE_TRUNC('day', block_time) AS day,
    project,
    SUM(amount_usd) * 0.003 AS estimated_fee_usd
FROM dex.trades
WHERE project IN ('uniswap', 'curve')
GROUP BY 1,2
ORDER BY 1;
