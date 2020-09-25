create table trans_account(
	account_id int ,
	distritct_id int,
	frequency varchar(255),
	account_date date,
	num_trans int,
	num_trans_type_with int ,
	num_trans_type_cred int,
	num_trans_operatition_cred_wd int,
	num_trans_operatition_cred_cash int,
	num_trans_operatition_coll_bank int,
	num_trans_operatition_cash_wd int,
	num_trans_opeatiotion_to_bank int,
	sum_width decimal(18,2) ,
	sum_cred decimal(18,2) , 
	trans_balance decimal(18,2) ,
	sum_order int,
	num_order_bank_to_QR int,
	num_order_bank_to_YZ int,
	num_order_bank_to_AB int,
	num_order_bank_to_WX int,
	num_order_bank_to_ST int,
	num_order_bank_to_KL int,
	num_order_bank_to_UV int,
	num_order_bank_to_IJ int,
	num_order_bank_to_GH int,
	num_order_bank_to_OP int,
	num_order_bank_to_EF int,
	num_order_bank_to_MN int,
	num_order_bank_to_CD int,
	order_amount decimal(18,2),
	num_order_cate_in_pa int,
	num_order_household int ,
	num_order_leasing int ,
	num_order_loan_pay int ,
	num_to_unknow int , 
	Cont_loan int,
	loan_amount decimal(18,2),
	loan_duration int ,
	loan_payments decimal(18,2),
	loan_status char,
	
);






-- mante  qel tabela status 










