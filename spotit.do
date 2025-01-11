cd "/Users/giacomo/Nextcloud/Uni magistrale/Data Driven"

use "spotitexercise_data.dta"

heckprob repaid final_avg_int_rate i.provider info_images payback_max1year, select (funded = boostingbid_bythefirm loan_amount_asked i.provider info_images payback_max1year) vce(robust) nolog

// AIC 6744
heckprob repaid final_avg_int_rate loan_amount_asked i.provider info_images payback_max1year borrower_maximum_int info_documents larger_proj, select (funded = boostingbid_bythefirm loan_amount_asked i.provider info_images payback_max1year info_documents) vce(robust) nolog

// AIC 6740

heckprob repaid final_avg_int_rate loan_amount_asked i.provider info_images payback_max1year  larger_proj, select (funded = boostingbid_bythefirm loan_amount_asked i.provider info_images info_documents) vce(robust) nolog

