--Movie Theater Tables here--
--Concession Table Creation
CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	concession_type VARCHAR(100),
	concerssion_price NUMERIC(4,2)
);

--Customer Table Creation
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

--Movie Company Table Creation
CREATE TABLE movie_company(
	company_id SERIAL PRIMARY KEY,
	company_name VARCHAR(100)
);

--Actor Table Creation
CREATE TABLE actors(
	actor_id SERIAL PRIMARY KEY,
	actor_name VARCHAR(100),
	company_id INTEGER NOT NULL,
	FOREIGN KEY(company_id) REFERENCES movie_company(company_id)
);

--Movie Table Creation
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(100),
	movie_hall NUMERIC(2),
	rating VARCHAR(10),
	show_time TIME,
	show_date DATE,
	company_id INTEGER NOT NULL,
	FOREIGN KEY(company_id) REFERENCES movie_company(company_id)
);

--Ticket Table Creation
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(4,2),
	payment_type VARCHAR(30),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);



