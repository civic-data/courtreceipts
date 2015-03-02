#!
bq --project personal-real-estate  query --max_rows 100000 --format csv "SELECT sum(civil_fee_amt) sum_civil_fee,sum( surcharge_amt) sum_surcharge, statute,section,statute_desc,year(disp_date) year1,disp,muni_name  FROM [nys.courtreceipts]  group by statute,section,statute_desc,year1,disp,muni_name order by 1 desc"
