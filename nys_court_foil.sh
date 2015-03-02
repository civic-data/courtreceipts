#!
# bq --project personal-real-estate load --skip_leading_rows 1 nys.courtreceipts ~/Downloads/2015-011\ JCF\ data.csv  muni_name:string,rp_ty_rmth:string,statute:string,section:string,statute_desc:string,tsled:string,arrest_date:string,disp_date:string,disp:string,fine_amt:float,civil_fee_amt:float,surcharge_amt:float,pmt_ind:string
bq  --project personal-real-estate load --replace --skip_leading_rows 1 nys.courtreceipts 2015-011\ JCF\ data-output.csv statute:string,section:string,statute_desc:string,pmt_ind:string,rp_ty_rmth:string,disp_date:timestamp,disp:string,tsled:string,civil_fee_amt:float,arrest_date:timestamp,muni_name:string,fine_amt:float,surcharge_amt:float

# # muni_name
# rp ty rmth
# statute
# section
# statute desc
# tsled
# arrest date
# disp date
# disp
# fine amt
# civil fee amt
# surcharge amt
# pmt ind
# 
