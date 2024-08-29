CREATE INDEX partial_index ON users(salary) 
    WHERE salary > 12000; --Partial Index. useful for creating with filtering certain values, in Postgres