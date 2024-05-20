--ЗАДАНИЕ 1
SELECT calendar.payment_date AS date, bank_account.number_account AS number_account, SUM(bank_account.amount_account) AS balance
FROM calendar
LEFT JOIN bank_account ON calendar.payment_date BETWEEN bank_account.date_of_start AND COALESCE(bank_account.date_of_stop, '9999-12-31')
GROUP BY calendar.payment_date, bank_account.number_account;

--ЗАДАНИЕ 2
SELECT contrack_number, EXTRACT(YEAR FROM payment_date) AS year, EXTRACT(MONTH FROM payment_date) AS month, AVG(repayment_amount) AS average_monthly_balance
FROM calendar
GROUP BY contrack_number, year, month;


