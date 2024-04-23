insert into cs7079.[dbo].[FactCustomerPreferences]
select cd.CustomerDetails1Key,cst.CustomerSalesTransactionKey,pd.PaymentsDataKey,
sc.SellingChannelKey,count(cst.PaymentTypeID),count(cst.SellingChannel)
from cs7079.[dbo].[DimCustomerSalesTransactions] cst
JOIN CustomerDetails1lookup cd on cd.CustomerCode=cst.CustomerCode
JOIN PaymentsDataLookUp pd on pd.RetailerPaymentTypeID=cst.PaymentTypeID
JOIN SellingChannelLookUp sc on sc.Code=cst.SellingChannel
group by cd.CustomerDetails1Key,cst.CustomerSalesTransactionKey,pd.PaymentsDataKey,
sc.SellingChannelKey

select cd.Name,count(fcp.PreferredPaymentTypeCount)as PreferredPaymentTypeCount,
count(fcp.PreferredSellingChannelCount) as PreferredSellingChannelCount
from cs7079.[dbo].[FactCustomerPreferences] fcp
JOIN cs7079.[dbo].DimCustomerDetails1 cd on fcp.CustomerDetails1Key=cd.CustomerDetails1Key
group by cd.Name;
