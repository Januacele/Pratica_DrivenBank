-- Criar banco de dados no PgAdmin

Databases >> Creat >> Database >> drivenbank >> save


-- Criar Tabelas 

drivenbank >> Schemas >> public >> Tables >> Query Tool

-- Table states

CREATE TABLE states(
id serial NOT NULL PRIMARY KEY,
name varchar(50) NOT NULL
);

-- Table cities

CREATE TABLE cities(
id serial NOT NULL PRIMARY KEY,
name varchar(50) NOT NULL,
"stateId" INTEGER REFERENCES "states"("id")
);

-- Table customers

CREATE TABLE customers(
id serial NOT NULL PRIMARY KEY,
"fullName" TEXT NOT NULL,
cpf varchar(11) NOT NULL UNIQUE,
email text NOT NULL UNIQUE,
password text NOT NULL
);

-- Table customerPhone

CREATE TABLE "customersPhones"(
id serial NOT NULL PRIMARY KEY,
"customerId" INTEGER REFERENCES "customers"("id"),
number varchar(11) NOT NULL UNIQUE,
type TEXT DEFAULT 'celular'
);

-- Table customersPhones
CREATE TABLE "customersPhones"(
id serial NOT NULL PRIMARY KEY,
"customerId" INTEGER REFERENCES "customers"("id"),
number varchar(11) NOT NULL UNIQUE,
type TEXT DEFAULT 'celular'
);

-- Table BankAccount
CREATE TABLE "bankAccount"(
id serial NOT NULL PRIMARY KEY,
"customerId" INTEGER REFERENCES "customers"("id"),
"accountNumber" integer NOT NULL,
"agency" integer NOT NULL,
"openDate" timestamp NOT NULL DEFAULT NOW(),
"closeDate" timestamp
);
