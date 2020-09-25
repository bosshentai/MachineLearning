alter table dbo.trans_v2 alter column trans_amount decimal(18,2)

alter table dbo.account_v2 alter column account_id int
alter table dbo.loan_v2 alter column account_id int
alter table dbo.order_v2 alter column account_id int
alter table dbo.order_v2 alter column order_amount float 
alter table dbo.loan_v2 alter column amount float 
alter table dbo.loan_v2 alter column duration int 
alter table dbo.loan_v2 alter column payments float 
alter table dbo.loan_v2 alter column duration int



alter table dbo.trans_account alter column sum_width decimal(18,2)
alter table dbo.trans_account alter column sum_cred decimal(18,2)
alter table dbo.trans_account alter column balance decimal(18,2)