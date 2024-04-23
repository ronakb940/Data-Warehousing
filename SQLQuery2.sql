 
insert into cs7079.[dbo].[FactTransactionAnalysis]
select cd.CustomerDetails1Key,cst.CustomerSalesTransactionKey,cst.TotalRetailPrice as revenue
from cs7079.[dbo].[DimCustomerSalesTransactions] cst
JOIN CustomerDetails1lookup cd on cd.CustomerCode=cst.CustomerCode

select cd.Name,sum(fta.TotalRevenue) as TotalRevenue
from cs7079.[dbo].[FactTransactionAnalysis] fta
JOIN cs7079.[dbo].DimCustomerDetails1 cd on fta.CustomerDetails1Key=cd.CustomerDetails1Key
group by cd.Name;

delete from GeneratedDateTimeLookUp
delete from SellingChannelLookUp