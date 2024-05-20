create table if not EXISTS bank_account (
id SERIAL primary key,
number_account VARCHAR(60) not null,
date_of_start DATE NOT NULL,
date_of_stop DATE,
amount_account integer NOT NULL
);

CREATE TABLE IF NOT EXISTS calendar (
ID SERIAL PRIMARY KEY,
contrack_number integer NOT NULL,
payment_date DATE NOT NULL,
repayment_amount integer NOT NULL
);

CREATE TABLE IF NOT EXISTS income(
ID SERIAL PRIMARY KEY,
amount integer NOT NULL,
date_on DATE NOT NULL,
date_off DATE NOT NULL,
commission integer NOT NULL
);