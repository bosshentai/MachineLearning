

--with pri (trans_type) as
--(
--select count(trans_v2.trans_type)
--from trans_v2, trans_account
--where trans_v2.trans_type LIKE 'credit' and trans_v2.account_id = trans_account.account_id
--group by trans_account.account_id
--)


--update trans_account 
--set trans_account.num_trans_type_cred = pri
--from trans_v2, trans_account
--where trans_v2.account_id = trans_account.account_id

--order by account_id desc

-- feito corretamente 
declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 
	
	set trans_account.num_trans_type_cred  = (select count(trans_v2.trans_type)
	from trans_v2, trans_account
	where trans_v2.trans_type = 'credit' and trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 


--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 


set trans_account.num_trans = (select count(trans_v2.trans_type)
	from trans_v2, trans_account
	where  trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 	
	
	set trans_account.num_trans_type_with =( select count(trans_v2.trans_type)
	from trans_v2, trans_account
	where trans_v2.trans_type = 'withdrawal' and trans_v2.account_id = trans_account.account_id and trans_v2.account_id =@contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 
	
	set trans_account.num_trans_operatition_cred_wd=( select count(trans_V2.operation)
	from trans_v2, trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.operation ='creditcard_wd' and trans_v2.account_id = @contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 
	
	set trans_account.num_trans_operatition_cred_cash=( select count(trans_V2.operation)
	from trans_v2, trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.operation ='credit_in_cash' and trans_v2.account_id = @contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 
	
	set trans_account.num_trans_operatition_coll_bank=( select count(trans_V2.operation)
	from trans_v2, trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.operation ='coll_from_bank' and trans_v2.account_id = @contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 
	
	set trans_account.num_trans_operatition_cash_wd=( select count(trans_V2.operation)
	from trans_v2, trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.operation ='cash_wd' and trans_v2.account_id = @contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--	
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 	
	
	set trans_account.num_trans_opeatiotion_to_bank=( select count(trans_V2.operation)
	from trans_v2, trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.operation ='remi_to_bank' and trans_v2.account_id = @contador)
	from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--	
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 
	
	set trans_account.sum_cred =(select sum(trans_v2.trans_amount) 
	from trans_v2, trans_account
	where trans_v2.trans_type = 'credit' and trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador)
		from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--
--declare @contador int 
set @contador = 1
while @contador <= 11382
begin 
	update  dbo.trans_account 
	
	set trans_account.sum_width =(select sum(trans_v2.trans_amount) 
	from trans_v2, trans_account
	where trans_v2.trans_type = 'withdrawal' and trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador)
		from trans_v2 , trans_account
	where trans_v2.account_id = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador + 1
end 
--
set @contador = 1
while @contador <= 11382
begin 
	update dbo.trans_account
	set trans_account.trans_balance = (select trans_account.sum_cred - trans_account.sum_width
		from trans_account
		where trans_account = @contador)
	from trans_account
	where trans_account.account_id = @contador

set @contador = @contador + 1 

end 

-- teste 
--
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.num_order_bank_to_QR =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'QR' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
	
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end

--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.num_order_bank_to_YZ =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'YZ' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end	

--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_AB =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'AB' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end

--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_WX =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'WX' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_ST =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'ST' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end

--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_KL =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'KL' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_UV =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'UV' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	
	set trans_account.num_order_bank_to_IJ =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'IJ' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_GH =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'GH' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_OP =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'OP' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_EF =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'EF' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_MN =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'MN' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.num_order_bank_to_CD =(select count(order_v2.bank_to)
	from order_v2,trans_account
	where order_v2.bank_to = 'CD' and order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end
--declare @contador int 
set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account	
	set trans_account.sum_order =(select count (order_v2.bank_to)
	from order_v2,trans_account 
	where order_v2.account_id = trans_account.account_id and order_v2.account_id = @contador )
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end

set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.num_order_cate_in_pa = (select count(order_v2.order_category)
	from order_v2,trans_account
	where order_v2.order_category = 'ins_payment' and order_v2.account_id = trans_account.account_id and order_v2.account_id =@contador)
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end


set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.num_order_household = (select count(order_v2.order_category)
	from order_v2,trans_account
	where order_v2.order_category = 'household' and order_v2.account_id = trans_account.account_id and order_v2.account_id =@contador)
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end


set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
set trans_account.num_order_leasing =  (select count(order_v2.order_category)
from order_v2,trans_account
where order_v2.order_category = 'leasing' and order_v2.account_id = trans_account.account_id and order_v2.account_id =@contador)
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador

set @contador = @contador +1
end

set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
set trans_account.num_to_unknow =(select count(order_v2.order_category)
from order_v2,trans_account
where order_v2.order_category = 'loan_payt' and order_v2.account_id = trans_account.account_id and order_v2.account_id =@contador)
from order_v2, trans_account
where order_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador
set @contador = @contador +1
end


set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.cont_loan (select count(loan_v2.loan_id)
	from loan_v2 , trans_account
	where loan_v2.account_id = trans_account.account_id and loan_v2.account_id = @contador)
from loan_v2, trans_account
where loan_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador
set @contador = @contador +1
end

set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.loan_amount = (select sum(loan_v2.amount)
from loan_v2 , trans_account
where loan_v2.account_id = trans_account.account_id and loan_v2.account_id = @contador)
from loan_v2, trans_account
where loan_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador
set @contador = @contador +1
end

set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.loan_duration = (select sum(loan_v2.duration)
	from loan_v2 , trans_account
	where loan_v2.account_id = trans_account.account_id and loan_v2.account_id = @contador)
		from loan_v2, trans_account
where loan_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador
set @contador = @contador +1
end

set @contador = 1
while @contador <= 11382 
begin
update dbo.trans_account
	set trans_account.loan_payments = (select sum(loan_v2.payments)
	from loan_v2 , trans_account
	where loan_v2.account_id = trans_account.account_id and loan_v2.account_id = @contador)
		from loan_v2, trans_account
where loan_v2.account_id  = trans_account.account_id and trans_v2.account_id = @contador
set @contador = @contador +1
end




set @contador = 1
while @contador <= 11382
begin 
update dbo.trans_account
    set trans_account.loan_status =	(select loan_v2.status
	from loan_v2,trans_account
	where loan_v2.account_id = trans_account.account_id and loan_v2.account_id = @contador)
	from loan_v2, trans_account
	where loan_v2.account_id = trans_account.account_id and trans_account.account_id = @contador 
	set @contador = @contador +1 
end































-- final



-- tud emplementod 

