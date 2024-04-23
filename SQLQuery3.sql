CREATE TABLE [dbo].[CustomerDetails1keylookup]([Name] varchar(50) NOT NULL PRIMARY KEY,[CustomerDetails1Key] int NOT NULL )

CREATE TABLE [dbo].[GeneratedDateTimeKeyLookUp]([FullDate] date NOT NULL PRIMARY KEY,[DateKey] int NOT NULL)

CREATE TABLE [dbo].[CustomerSalesTransactionsLookUp]([InvoiceNumber] varchar(20) NOT NULL PRIMARY KEY,[CustomerCode] varchar(20))

CREATE TABLE [dbo].[PaymentsDataLookUp]([Name] varchar(50) NOT NULL PRIMARY KEY,[RetailerPaymentTypeID] int NOT NULL)

alter table SellingChannelLookUp
alter column Code varchar(10)