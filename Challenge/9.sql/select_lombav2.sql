--SELECT * 
--FROM client_v2

-- trabalha nivel de loan order transactions e account 
-- primer 


select account_v2.account_id,count(trans_v2.trans_type)as Num_credit_used,sum(trans_v2.trans_amount) as trans_amount_credit
from trans_v2, account_v2
where trans_v2.trans_type = 'credit' and trans_v2.account_id = account_v2.account_id
group by account_v2.account_id 
order by account_id desc


select account_v2.account_id,count(trans_v2.trans_type)as Num_width_used,sum(trans_v2.trans_amount) as trans_amount_with
from trans_v2, account_v2
where trans_v2.trans_type = 'withdrawal' and trans_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_id desc

select account_v2.account_id,count(trans_v2.trans_type) as Num_trans
from trans_v2,account_v2
where trans_v2.account_id = account_v2.account_id
group by account_v2.account_id 
order by account_id desc




select count(trans_v2.trans_type)
from trans_v2, trans_account
where trans_v2.trans_type = 'credit' and trans_v2.account_id = trans_account.account_id
group by trans_account.account_id


select account_v2.account_id,count(trans_v2.trans_type)as Num_credit_used
from trans_v2, account_v2
where  trans_v2.account_id = account_v2.account_id
group by account_v2.account_id 
order by account_id desc
-- decima ja t cool



select count(trans_v2.operation)
from trans_v2, account_v2
where trans_v2.account_id = account_v2.account_id and trans_v2.operation ='creditcard_wd'
group by account_v2.account_id 
order by account_id desc

select count(trans_V2.operation)
from trans_v2, account_v2
where trans_v2.account_id = account_v2.account_id and trans_v2.operation ='credit_in_cash'
group by account_v2.account_id 
order by account_id desc

select count(trans_V2.operation)
from trans_v2, account_v2
where trans_v2.account_id = account_v2.account_id and trans_v2.operation ='coll_from_bank'
group by account_v2.account_id 
order by account_id desc

select count(trans_V2.operation)
from trans_v2, account_v2
where trans_v2.account_id = account_v2.account_id and trans_v2.operation ='cash_wd'
group by account_v2.account_id 
order by account_id desc

select count(trans_V2.operation)
from trans_v2, account_v2
where trans_v2.account_id = account_v2.account_id and trans_v2.operation ='remi_to_bank'
group by account_v2.account_id 
order by account_id desc

select sum(trans_v2.trans_amount) 
from trans_v2, account_v2
where trans_v2.trans_type = 'credit' and trans_v2.account_id = account_v2.account_id

-- implmenta da li pa frent 

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'QR' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'YZ' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc


select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'AB' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'WX' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'ST' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'KL' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'UV' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'GH' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc


select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'OP' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc


select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'EF' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc


select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'MN' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count(order_v2.bank_to)
from order_v2,account_v2
where order_v2.bank_to = 'CD' and order_v2.account_id = account_v2.account_id 
group by account_v2.account_id
order by account_v2.account_id desc

select count (order_v2.bank_to)
from order_v2,account_v2 
where order_v2.account_id = account_v2.account_id 
group by order_v2.account_id
order by order_v2.account_id desc


-- order_category
select count(order_v2.order_category)
from order_v2.account_v2
where order_v2.order_category = 'ins_payment' and order_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc 

select count(order_v2.order_category)
from order_v2.account_v2
where order_v2.order_category = 'household' and order_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc 


select count(order_v2.order_category)
from order_v2.account_v2
where order_v2.order_category = 'leasing' and order_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc 

select count(order_v2.order_category)
from order_v2.account_v2
where order_v2.order_category = 'loan_payt' and order_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc 

select count(order_v2.order_category)
from order_v2.account_v2
where order_v2.order_category = 'unknow' and order_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc 


select sum(order_v2.order_amount)
from order_v2,account_v2 
where order_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc

-- loan 
select count(loan_v2.loan_id)
from loan_v2 , account_v2
where loan_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc


select sum(loan_v2.amount)
from loan_v2 , account_v2
where loan_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc
--

select trans_account.sum_cred - trans_account.sum_width
from trans_account

select count(loan_v2.status)
from loan_v2,account_v2
where loan_v2.status = 'A' and loan_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc 


select loan_v2.status
from loan_v2,account_v2
where loan_v2.account_id = account_v2.account_id
group by account_v2.account_id
order by account_v2.account_id desc


