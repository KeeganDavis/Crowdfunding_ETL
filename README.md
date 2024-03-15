Riley Taylor, Keegan Davis

UTA Data Analytics Bootcamp

Project 2



## Description

We were tasked with cleaning crowdfunding data, and using a variety of tools to setup and analyze the data. Formatting data into tables, saving the tables to csvs, creating database schema, and querying the database. 

## Requirements

First, you need something to handle the jupyter notebooks (after installing jupyter notebook from conda/pip into your environment) - VSCode has extensions for this, and you can run `jupyter notebook` from the command line to make changes to notebooks in the browser. 

To be able to run the jupyter notebooks, you will need the following libraries (explicit versions given from Riley's dev environment, but most should be valid):


-   Libraries: 
    - numpy (v 1.26.2)
    - pandas (v 2.1.4)
-   Tools:
    - PostgreSQL (v 14.10)
    - pgAdmin4 (v 7.8) (or alternate tool for handling postgres)


The project was run using Python 3.10.13. 

Also, for future reference, a useful way to check your library version in a dev environment if the normal --version isn't working:

```
python -c 'import <library>; print (<library>.__version__)'
```

Thanks to [here](https://stackoverflow.com/questions/32221694/how-to-know-which-version-of-pymongo-is-running-on-my-project) for this command.

## Installation

Install by cloning the repo and using the tool of your choice to handle the jupyter notebooks. 

To set up the database, first run the the `Postgres_and_ERD/crowdfunding_db_schema.sql`, and then import the corresponding `.csv` files for each table, although make sure to import `campaign.csv` last, because it has all of the foreign key constraints. 

## Repo Overview 

Inside the root directory we have the following:

`Resources/` contains the starter, provided `csv` files. We extracted and formatted data from these into table `csv` files in the `Output` directory.

`Outputs/` is a directory containing the output, formatted `csv` files. They were saved from the corresponding cells in the `ETL_Mini_Project_KDavis_RTaylor.ipynb`.

`Postgres_and_ERD/` is a directory containing the related database files to set up the database schema, select queries after the tables have been imported, and `crowdfunding_ERD.png`, the ERD for the database schema. 

`ETL_Mini_Project_KDavis_RTaylor.ipynb` is the jupyter notebook that formatted and cleaned the starter data into the output `csv` files.



## Notes

If you want to investigate individual efforts/folders, check the development branches. 



-----------------------------

## Sources 

### Keegan Sources:

QuickDBD
https://app.quickdatabasediagrams.com/#/

### Riley Sources:

PostgreSQL: Documentation: 16: Chapter 8. Data Types
https://www.postgresql.org/docs/current/datatype.html

QuickDBD
https://app.quickdatabasediagrams.com/#/

ChatGPT 3.5 was also used for documentation review. 
