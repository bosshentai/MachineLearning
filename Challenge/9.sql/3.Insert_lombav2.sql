Insert into dbo.trans_account (account_id,distritct_id,frequency,account_date)
 select account_id,district_id,frequency,account_date 
 from account_v2 
