-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "MacroEconomics" (
    "Country_name" string   NOT NULL,
    "Country_type" string   NOT NULL,
    "Years" Date   NOT NULL,
    "GDP" int   NOT NULL,
    "GDP_per_capita" int   NOT NULL,
    "Inflation" percentage   NOT NULL,
    "Unemployment" percentage   NOT NULL,
    CONSTRAINT "pk_MacroEconomics" PRIMARY KEY (
        "Country_name"
     )
);

CREATE TABLE "CPI_table" (
    "Country_name" string   NOT NULL,
    "CPI" int   NOT NULL,
    "GDP_growth" percentage   NOT NULL,
    CONSTRAINT "pk_CPI_table" PRIMARY KEY (
        "Country_name"
     )
);

CREATE TABLE "CovidCases" (
    "Country_name" string   NOT NULL,
    "Country_type" string   NOT NULL,
    "NumOfCases" int   NOT NULL,
    "health_expenditure" int   NOT NULL,
    CONSTRAINT "pk_CovidCases" PRIMARY KEY (
        "Country_name","Country_type"
     )
);

ALTER TABLE "CPI_table" ADD CONSTRAINT "fk_CPI_table_Country_name" FOREIGN KEY("Country_name")
REFERENCES "MacroEconomics" ("Country_name");

ALTER TABLE "CovidCases" ADD CONSTRAINT "fk_CovidCases_Country_name" FOREIGN KEY("Country_name")
REFERENCES "MacroEconomics" ("Country_name");

