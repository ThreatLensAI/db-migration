CREATE INDEX idx_id_date ON cve.cves (cve_id, date_updated DESC);
CREATE INDEX idx_data_cveId_dateUpdated ON cve.cves ((data #>> '{cveMetadata,cveId}'), (data #>> '{cveMetadata,dateUpdated}') DESC);
