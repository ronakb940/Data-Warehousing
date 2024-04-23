
insert into cs7079.[dbo].[FactBestCustomer]
select cd.CustomerDetails1Key,cst.CustomerSalesTransactionKey,gdt.GeneratedDateTimeKey,
(cst.TotalRetailPrice-cst.TotalCost)
from cs7079.[dbo].[DimCustomerSalesTransactions] cst
JOIN CustomerDetails1lookup cd on cd.CustomerCode=cst.CustomerCode
JOIN GeneratedDateTimeLookUp gdt on gdt.FullDate=cst.Date

select cd.Name,fbc.Profit as Profit
from cs7079.[dbo].[FactBestCustomer] fbc
JOIN cs7079.[dbo].DimCustomerDetails1 cd on fbc.CustomerDetails1Key=cd.CustomerDetails1Key
group by cd.Name,fbc.Profit
order by Profit desc;