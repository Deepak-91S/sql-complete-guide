CREATE TABLE conversations (
    user_name VARCHAR(100),
    employer_name VARCHAR(200),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE employers (
    company_name VARCHAR(200),
    company_address VARCHAR(250),
    -- yearly_revenue FLOAT(5,2) -- Approx value, Allowed:123.12, Not allowed 12345.456
    yearly_revenue NUMERIC(5,2), -- Exact value, Allowed: 123.12, Not allowed 12345.456
    is_hiring BOOLEAN DEFAULT FALSE
);