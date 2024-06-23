CREATE TABLE cve.cves (
    cve_id VARCHAR(255),
    date_updated TIMESTAMP WITH TIME ZONE NOT NULL,
    data JSONB,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT (CURRENT_TIMESTAMP AT TIME ZONE 'UTC'),
    sha1 VARCHAR(40),
    PRIMARY KEY (cve_id, date_updated)
);
