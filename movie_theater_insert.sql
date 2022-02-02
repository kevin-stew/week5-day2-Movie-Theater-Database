--Concession Items
INSERT INTO concessions(
    concession_id,
    concession_type,
    concerssion_price     
)VALUES(
    1,
    'Coke',
    '10.00'
);

INSERT INTO concessions(
    concession_id,
    concession_type,
    concerssion_price     
)VALUES(
    2,
    'Popcorn',
    '15.50'
);

INSERT INTO concessions(
    concession_id,
    concession_type,
    concerssion_price     
)VALUES(
    3,
    'Junior Mints',
    '12.75'
);

--Customer Info
INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    billing_info
)VALUES(
    1,
    'John',
    'Smith',
    '4242-4242-4242-4242 623 05/20'
);

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    billing_info
)VALUES(
    2,
    'Suzie',
    'Schwartz',
    '4242-4242-4242-4242 623 03/12'
);

INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    billing_info
)VALUES(
    3,
    'Bill',
    'Budman',
    '4242-4242-4242-4242 623 06/17'
);

--Movie Company data
INSERT INTO movie_company(
    company_id,
    company_name
)VALUES(
    1,
    'Sony'
);

INSERT INTO movie_company(
    company_id,
    company_name
)VALUES(
    2,
    'Paramount'
);

--Actor Data
INSERT INTO actors(
    actor_id,
    actor_name,
    company_id
)VALUES(
    1,
    'Chvey Chase',
    2
);

INSERT INTO actors(
    actor_id,
    actor_name,
    company_id
)VALUES(
    2,
    'Norm McDonald',
    1
);

INSERT INTO actors(
    actor_id,
    actor_name,
    company_id
)VALUES(
    3,
    'Chris Katan',
    1
);

--Movies
INSERT INTO movies(
    movie_id,
    movie_title,
    movie_hall,
    rating,
    show_time,
    show_date,
    company_id
)VALUES(
    1,
    'One flew over the birds nest',
    13,
    'R',
    '171500',
    '20220203',
    1
);

INSERT INTO movies(
    movie_id,
    movie_title,
    movie_hall,
    rating,
    show_time,
    show_date,
    company_id
)VALUES(
    2,
    'Theres Something about Marty',
    7,
    'PG-13',
    '193000',
    '20220129',
    2
);

--Ticket data
INSERT INTO tickets(
    ticket_id,
    ticket_price,
    payment_type,
    customer_id,
    movie_id
)VALUES(
    1,
    22.00,
    'Credit Card',
    1,
    1
);

INSERT INTO tickets(
    ticket_id,
    ticket_price,
    payment_type,
    customer_id,
    movie_id
)VALUES(
    2,
    22.00,
    'Credit Card',
    2,
    1
);

INSERT INTO tickets(
    ticket_id,
    ticket_price,
    payment_type,
    customer_id,
    movie_id
)VALUES(
    3,
    11.00,
    'Credit Card',
    3,
    2
);

--Test displays-----
SELECT *
FROM actors;

SELECT *
FROM concessions;

SELECT *
FROM customer;

SELECT *
FROM movie_company;

SELECT *
FROM movies;

SELECT *
FROM tickets;






