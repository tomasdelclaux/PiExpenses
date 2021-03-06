BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Users" (
	"user_id"	INTEGER,
	"user_name"	TEXT UNIQUE,
	PRIMARY KEY("user_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Families" (
	"family_id"	INTEGER,
	"family_name"	TEXT UNIQUE,
	PRIMARY KEY("family_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Membership" (
	"id"	INTEGER,
	"user"	INTEGER,
	"family"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Expenses" (
	"id"	INTEGER,
	"cost"	NUMERIC,
	"date"	INTEGER,
	"family_id"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Split" (
	"expense_id"	INTEGER,
	"user1"	INTEGER,
	"user2"	INTEGER
);
COMMIT;
