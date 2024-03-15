-- when importing, import everything that doesn't have a FK dependency first 

CREATE TABLE category (
    category_id VARCHAR(35) PRIMARY KEY,
    category VARCHAR(35) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(35) PRIMARY KEY,
    subcategory VARCHAR(35) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(35) NOT NULL,
    last_name VARCHAR(35) NOT NULL,
    email VARCHAR(55) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR(75) NOT NULL,
    description VARCHAR(75) NOT NULL,
    goal REAL NOT NULL,
    pledged REAL NOT NULL,
    outcome VARCHAR(35) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(35) NOT NULL,
    currency VARCHAR(35) NOT NULL,
    launched_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR(35) NOT NULL,
    subcategory_id VARCHAR(35) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);