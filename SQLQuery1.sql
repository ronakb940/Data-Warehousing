
update DimCustomerDetails1
set AgeGroup=
case when datepart(year,BirthDate) between 1947 and 1956 then 'A' 
	 when datepart(year,BirthDate) between 1957 and 1966 then 'B' 
	 when datepart(year,BirthDate) between 1967 and 1976 then 'C' 
	 when datepart(year,BirthDate) between 1977 and 1986 then 'D'
	 else 'E'
end
from DimCustomerDetails1;

update DimCustomerDetails1
set Income=
30000 where Name='Adriana Ocampo'
update DimCustomerDetails1
set Income=
45000 where Name='Albert Einstein'
update DimCustomerDetails1
set Income=
23000 where Name='Anna Behrensmeyer'
update DimCustomerDetails1
set Income=
34000 where Name='Blaise Pascal'
update DimCustomerDetails1
set Income=35000 where Name='Caroline Herschel'
update DimCustomerDetails1
set Income=23000 where Name='Cecilia Payne-Gaposchkin'
update DimCustomerDetails1
set Income=45000 where Name='Chien-Shiung Wu'
update DimCustomerDetails1
set Income=50000 where Name='Dorothy Hodgkin'
update DimCustomerDetails1
set Income=23000 where Name='Edmond Halley'
update DimCustomerDetails1
set Income=34000 where Name='Edwin Hubble'
update DimCustomerDetails1
set Income=45000 where Name='Elizabeth Blackburn'
update DimCustomerDetails1
set Income=34000 where Name='Enrico Fermi'
update DimCustomerDetails1
set Income=26000 where Name='Erwin Schroedinger'
update DimCustomerDetails1
set Income=27888 where Name='Flossie Wong-Staal'
update DimCustomerDetails1
set Income=46000 where Name='Frieda Robscheit-Robbins'
update DimCustomerDetails1
set Income=26777 where Name='Geraldine Seydoux'
update DimCustomerDetails1
set Income=24000 where Name='Gertrude Elion'
update DimCustomerDetails1
set Income=45999 where Name='Ingrid Daubechies'
update DimCustomerDetails1
set Income=26000 where Name='Jacqueline Barton'
update DimCustomerDetails1
set Income=25000 where Name='Marie Curie'




update DimCustomerDetails1
set IncomeGroup=
case when Income between 20000 and 30000  then 'A' 
	 when Income between 30001 and 40000  then 'B'
	 when Income between 40001 and 50000  then 'C'
end
from DimCustomerDetails1;



select * from Generated DateTime;