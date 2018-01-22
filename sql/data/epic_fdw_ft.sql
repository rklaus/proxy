CREATE FOREIGN TABLE epic_fdw.client
(
id int4  
,firstname varchar (65535)
,middlename varchar (65535)
,lastname varchar (65535)
,ssn varchar (65535)
,ssn4 varchar (65535)
,emailaddress varchar (65535)
,email_marketingoptin int4  
,email_operationaloptin int4  
,gender varchar (65535)
,ismilitary int4  
,isreturning bool  
,birthdate timestamp  
,birthyear int4  
,language varchar (65535)
,address varchar (65535)
,address2 varchar (65535)
,city varchar (65535)
,stateid varchar (65535)
,zip varchar (65535)
,homephone varchar (65535)
,homephonedonotcall int4  
,cellphone varchar (65535)
,cellphonedonotcall int4  
,sms_operationaloptin int4  
,sms_marketingoptin int4  
,workphone varchar (65535)
,workphoneext varchar (65535)
,workphonedonotcall int4  
,fax varchar (65535)
,homerights varchar (65535)
,numbercurrentresidenceyears int4  
,numbercurrentresidencemonths int4  
,driverslicensenumber varchar (65535)
,dlexpdate timestamp  
,bankname varchar (65535)
,bankaccounttype varchar (65535)
,customeraccount varchar (65535)
,aba varchar (65535)
,bankphone varchar (65535)
,employername varchar (65535)
,employmentaddress varchar (65535)
,employmentaddress2 varchar (65535)
,employmentcity varchar (65535)
,employmentstateid varchar (65535)
,employmentzip varchar (65535)
,workfax varchar (65535)
,supervisorname varchar (65535)
,supervisorphone varchar (65535)
,supervisorphoneext varchar (65535)
,position varchar (65535)
,payrollmethod varchar (65535)
,employmentstartdate timestamp  
,employmentyears int4  
,employmentmonths int4  
,datecreated timestamp  
,datechanged timestamp  
,payrollid int4  
,dlstate varchar (65535)
,bankmonths int4  
,bankyears int4  
,incometype varchar (65535)
,contacttime varchar (65535)
,rentorown varchar (65535)
,iscitizen int4  
,workshift varchar (65535)
,homephonedisconnected bool  
,workphonedisconnected bool  
,cellphonedisconnected bool  
)
SERVER epic_server OPTIONS (table $$vw_Client$$);
alter table epic_fdw.client owner to dw_owner;
grant select on epic_fdw.client to dw_proxy_load;
CREATE FOREIGN TABLE epic_fdw.clientflags
(
clientid int4  
,flagname varchar (65535)
,flagdateadded timestamp  
)
SERVER epic_server OPTIONS (table  $$vw_ClientFlags$$);
alter table epic_fdw.clientflags owner to dw_owner;
grant select on epic_fdw.clientflags to dw_proxy_load;
CREATE FOREIGN TABLE epic_fdw.loan
(
id int4  
,displaynumber varchar (65535)
,renewalextensions int4  
,currenthistoryid int4  
,originalloanid int4  
,parentloanid int4  
,debtorclientid int4  
,storename varchar (65535)
,state varchar (65535)
,loanstatus varchar (65535)
,approvedamount float8  
,approvedfinancefee float8  
,annualpercentrate float8  
,originationdate timestamp  
,effectivedate timestamp  
,followupdatetime timestamp  
,duedate timestamp  
,paidoffdate timestamp  
,brokenpromisedate timestamp  
,collectionstartdate timestamp  
,leadprovidername varchar (65535)
,affliateid varchar (65535)
,affiliatesubid varchar (65535)
,iswiretransfer int4  
,isexpressloan int4  
,isbounced int4  
,isreturning int4  
,collectionqueue varchar (65535)
,lastclverifyscore int4  
,lastfactortrustscore int4  
,lastclaritydecision varchar (65535)
,lastdataxdecision varchar (65535)
,lastveritracdecision varchar (65535)
,rejectreason varchar (65535)
,withdrawnreason varchar (65535)
,otherwithdrawnreason varchar (65535)
,signeddate varchar (65535)
,signedtime varchar (65535)
,isesigned int4  
,isesigned20minutes int4  
,minutestosign int4  
,assignedloanmanager varchar (65535)
,assignedcollectionagent varchar (65535)
,dateapplicationreceived timestamp  
,isredirected int4  
,loantype varchar (65535)
,signedip varchar (65535)
,issystemwithdrawn int4  
,program varchar (65535)
,voidreason varchar (65535)
,creditachendpoint varchar (65535)
,debitachendpoint varchar (65535)
,defaultrepayment varchar (65535)
,refurl varchar (65535)
,leadacquiredip varchar (65535)
,otheroffers int4  
,requestedamount int4  
,leadcost float8  
,leademploymenttype varchar (65535)
,chargeoffstartdate timestamp  
,duedatepaymenttype varchar (65535)
,datesentoutsidecollections timestamp  
)
SERVER epic_server OPTIONS (table  $$vw_Loans$$);
alter table epic_fdw.loan owner to dw_owner;
grant select on epic_fdw.loan to dw_proxy_load;
drop FOREIGN TABLE if exists epic_fdw.loanhistory;
CREATE FOREIGN TABLE epic_fdw.loanhistory
(
id integer
,loanid integer 
,loanstatus text
,effectivedate text
,OutstandingPrinciple numeric (12,4)
,OutstandingFinanceFee numeric (12,4)
,OutstandingNsfFee numeric (12,4)
,OutstandingLateFee numeric (12,4)
,OutstandingServiceFee numeric (12,4)
,OutstandingServiceFeeInterest numeric (12,4)
,OutstandingOriginationFee numeric (12,4)
,OutstandingManagementFee numeric (12,4)
,OutstandingMaintenanceFee numeric (12,4)
,PaidOffPrinciple numeric (12,4)
,PaidOffFinanceFee numeric (12,4)
,PaidOffNsfFee numeric (12,4)
,PaidOffLateFee numeric (12,4)
,PaidOffServiceFee numeric (12,4)
,PaidOffServiceFeeInterest numeric (12,4)
,PaidOffOriginationFee numeric (12,4)
,PaidOffManagementFee numeric (12,4)
,PaidOffMaintenanceFee numeric (12,4)
,DiscountPrinciple numeric (12,4)
,DiscountFinanceFee numeric (12,4)
,DiscountNsfFee numeric (12,4)
,DiscountLateFee numeric (12,4)
,DiscountServiceFee numeric (12,4)
,DiscountServiceFeeInterest numeric (12,4)
,DiscountOriginationFee numeric (12,4)
,DiscountManagementFee numeric (12,4)
,DiscountMaintenanceFee numeric (12,4)
,SettlementPrinciple numeric (12,4)
,SettlementFinanceFee numeric (12,4)
,SettlementNsfFee numeric (12,4)
,SettlementLateFee numeric (12,4)
,OutstandingTotal numeric (12,4)
,SettlementServiceFee numeric (12,4)
,SettlementServiceFeeInterest numeric (12,4)
,SettlementOriginationFee numeric (12,4)
,SettlementManagementFee numeric (12,4)
,SettlementMaintenanceFee numeric (12,4)
)
SERVER epic_server OPTIONS (table  $$vw_LoanHistory$$);
alter table epic_fdw.loanhistory owner to dw_owner;
grant select on epic_fdw.loanhistory to dw_proxy_load;

CREATE FOREIGN TABLE epic_fdw.payments
(
id int4  
,effectivedate timestamp  
,paymenttype varchar (65535)
,principle float8  
,latefee float8  
,nsffee float8  
,returncode varchar (65535)
,returndate timestamp  
,paymentstatus varchar (65535)
,isdebit int4  
,successdate timestamp  
,isorigination int4  
,creditreason int4  
,loanid int4  
,financefee float8  
,feesamount float8  
,paymentamount float8  
,achendpoint varchar (65535)
,assignedagent varchar (65535)
,paymentagent varchar (65535)
)
SERVER epic_server OPTIONS (table  $$vw_Payments$$);
alter table epic_fdw.payments owner to dw_owner;
grant select on epic_fdw.payments to dw_proxy_load;
CREATE FOREIGN TABLE epic_fdw.payroll
(
id int4  
,clientid int4  
,payrolltype varchar (65535)
,frequencytype varchar (65535)
,totalperpaycheck float8  
,grosspayroll float8  
,netmonthlyincome float8  
,grossmonthlyincome float8  
,payrolldatecreated timestamp  
,nextpaydate1 timestamp  
,nextpaydate2 timestamp  
,lastpaydate timestamp  
,movetonextbusinessdayonholidayorweekend int4  
)
SERVER epic_server OPTIONS (table  $$vw_Payroll$$);
alter table epic_fdw.payroll owner to dw_owner;
grant select on epic_fdw.payroll to dw_proxy_load;
CREATE FOREIGN TABLE epic_fdw.references
(
id int4  
,relationship varchar (65535)
,clientid int4  
,referencefirstname varchar (65535)
,referencelastname varchar (65535)
,referencephone varchar (65535)
,referenceaddress varchar (65535)
,referencecity varchar (65535)
,referencezip varchar (65535)
,referencephonedonotcall bool  
,referencephonedisconnect bool  
,primaryreference int4  
,referencestate varchar (65535)
)
SERVER epic_server OPTIONS (table  $$vw_References$$);
alter table epic_fdw.references owner to dw_owner;
grant select on epic_fdw.references to dw_proxy_load;

