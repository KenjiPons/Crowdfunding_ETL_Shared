-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/8ckC2Z
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Category" (
    "category_id" varchar(30)   NOT NULL,
    "category" varchar(30)   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(30)   NOT NULL,
    "subcategory" varchar(30)   NOT NULL
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "email" varchar(30)   NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" int,   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" string   NOT NULL,
    "description" varchar(30),   NOT NULL,
    "goal" float,   NOT NULL,
    "pledged" float,   NOT NULL,
    "outcome" varchar(30),   NOT NULL,
    "backers_count" int,   NOT NULL,
    "country" varchar(30),   NOT NULL,
    "currency" varchar(30),   NOT NULL,
    "launched_date" varchar(30),   NOT NULL,
    "end_date" varchar(30),   NOT NULL,
    "staff_pic" boolean,   NOT NULL,
    "spotlight" boolean,   NOT NULL,
    "category_id" varchar(30)   NOT NULL,
    "subcategory_id" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "Category" ("category_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategory" ("subcategory_id");

