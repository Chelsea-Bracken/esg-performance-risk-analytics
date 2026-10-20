
-- ESG Performance & Risk Intelligence
-- SQL analysis using MySQL Workbench
-- Dataset: 245 S&P 500 companies
-- Note: Higher ESG scores are treated as higher risk indicators.
-- Historical snapshot: 3 March 2021.

-- 1. Overall dataset summary
SELECT
    COUNT(*) AS total_companies,
    COUNT(DISTINCT sector) AS total_sectors,
    ROUND(AVG(esg_score_total), 2) AS average_esg_risk
FROM esg_companies;

-- 2. Company ESG risk ranking
SELECT
    company,
    sector,
    esg_rating,
    esg_score_total,
    RANK() OVER (ORDER BY esg_score_total DESC) AS risk_rank
FROM esg_companies
ORDER BY esg_score_total DESC
LIMIT 20;

-- 3. Sector-level ESG risk benchmarking
SELECT
    sector,
    COUNT(*) AS company_count,
    ROUND(AVG(esg_score_total), 2) AS avg_total_risk,
    ROUND(AVG(esg_score_environmental), 2) AS avg_environmental_risk,
    ROUND(AVG(esg_score_social), 2) AS avg_social_risk,
    ROUND(AVG(esg_score_governance), 2) AS avg_governance_risk
FROM esg_companies
GROUP BY sector
ORDER BY avg_total_risk DESC;

-- 4. ESG rating distribution
SELECT
    esg_rating,
    COUNT(*) AS company_count,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM esg_companies), 2)
        AS percentage_of_companies
FROM esg_companies
GROUP BY esg_rating
ORDER BY company_count DESC;

-- 5. Identify companies requiring high-priority review
SELECT
    company,
    sector,
    esg_rating,
    esg_score_total
FROM esg_companies
WHERE esg_rating IN ('Severe', 'High')
ORDER BY esg_score_total DESC;

-- 6. Compare ESG risk with financial indicators
SELECT
    sector,
    COUNT(*) AS company_count,
    ROUND(AVG(esg_score_total), 2) AS avg_esg_risk,
    ROUND(AVG(market_cap), 2) AS avg_market_cap,
    ROUND(AVG(earnings_per_share), 2) AS avg_eps,
    ROUND(AVG(ebitda), 2) AS avg_ebitda
FROM esg_companies
GROUP BY sector
ORDER BY avg_esg_risk DESC;

-- 7. Sector-level risk screening summary
SELECT
    sector,
    COUNT(*) AS company_count,
    SUM(CASE WHEN esg_rating IN ('Severe', 'High')
             THEN 1 ELSE 0 END) AS high_priority_count,
    ROUND(
        100.0 * SUM(CASE WHEN esg_rating IN ('Severe', 'High')
                         THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS high_priority_percentage
FROM esg_companies
GROUP BY sector
ORDER BY high_priority_percentage DESC;
