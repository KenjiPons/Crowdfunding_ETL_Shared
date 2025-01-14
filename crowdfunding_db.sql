-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/8ckC2Z
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Category" (
    "category_id" varchar(60)   NOT NULL,
    "category" varchar(60)   NOT NULL,
	CONSTRAINT "pk_Category" PRIMARY KEY ("category_id")
);

CREATE TABLE "Subcategory" (
    "subcategory_id" varchar(60)   NOT NULL,
    "subcategory" varchar(60)   NOT NULL,
	CONSTRAINT "pk_Subcategory" PRIMARY KEY ("subcategory_id")

);

CREATE TABLE "Contacts" (
    "contact_id" varchar(60)   NOT NULL,
    "first_name" varchar(60)   NOT NULL,
    "last_name" varchar(60)   NOT NULL,
    "email" varchar(60)   NOT NULL,
	CONSTRAINT "pk_Contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE "Campaign" (
    "cf_id" varchar(60)   NOT NULL,
    "contact_id" varchar(60)   NOT NULL,
	"company_name" varchar(60) NOT NULL,
    "description" varchar(60)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(60)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(60)   NOT NULL,
    "currency" varchar(60)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE  NOT NULL,
    "staff_pic" boolean   NOT NULL,
    "spotlight" boolean   NOT NULL,
    "category_id" varchar(60)   NOT NULL,
    "subcategory_id" varchar(60)   NOT NULL,
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

SELECT * FROM "Category";
SELECT * FROM "Subcategory";
SELECT * FROM "Contacts";
SELECT * FROM "Campaign";
