-- INSERT INTO users(full_name, current_status) VALUES('Jimmy V','self-employed');



-- Use this after no.17 -Primary key

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) VALUES ('TCS', '16 York St, Toronto', 12.3, TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) VALUES ('Google', '100 Mississauga Rd, Toronto', 30.01, TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue) VALUES ('IBM', '2764 Guy St, Montreal', 10.84);


INSERT INTO conversations (user_id, company_id, message) VALUES (1, 2, 'Hi, Im using Google Search Engine');