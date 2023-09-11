-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)  NOT NULL ,
    "subcategory" varchar(40)  NOT NULL ,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
    )
)

GO

CREATE TABLE "category" (
    "category_id" varchar(10)  NOT NULL ,
    "category" varchar(40)  NOT NULL ,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
    )
)

GO

CREATE TABLE "contacts" (
    "contact_id" int  NOT NULL ,
    "first_name" varchar(40)  NOT NULL ,
    "last_name" varchar(40)  NOT NULL ,
    "email" varchar(50)  NOT NULL ,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
    )
)

GO

CREATE TABLE "campaign" (
    "cf_id" int  NOT NULL ,
    "contact_id" int  NOT NULL ,
    "company_name" varchar(100)  NOT NULL ,
    "description" varchar(256)  NOT NULL ,
    "goal" float  NOT NULL ,
    "pledged" float  NOT NULL ,
    "outcome" varchar(40)  NOT NULL ,
    "backers_count" int  NOT NULL ,
    "country" varchar(10)  NOT NULL ,
    "currency" varchar(10)  NOT NULL ,
    "launched_date" DATE  NOT NULL ,
    "end_date" DATE  NOT NULL ,
    "category_id" varchar(40)  NOT NULL ,
    "subcategory_id" varchar(40)  NOT NULL ,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
    )
)

GO

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id")
GO

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id")
GO

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id")
GO

