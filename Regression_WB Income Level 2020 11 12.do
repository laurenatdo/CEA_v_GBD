clear all

log using "G:\Projects\CEA vs. GBD\4. Results\WB Income Levels\WB Income Level Results", text

import excel "G:\Projects\CEA vs. GBD\3. Analysis\2. Cleaned Datasets\Dataset 3. Regional and Disease Level Stratified Dataset_2020.xlsx", sheet("WB Income") firstrow

*Divide DALY values by 10,000 to scale down values
gen burden_scaled = Burden/10000

*Regress disase burden (2017 DALYs) on total number of studies found in CEA registry. 
bysort Region: reg burden_scaled TotalStudies

log close

*Graph regression line on scatter plot
generate pos = 3
replace pos = 1 if (Disease2=="Other communicable diseases")
replace pos = 12 if (Disease2 == "Diabetes, urogenital, blood, & endocrine diseases")
graph twoway (lfitci TotalStudies burden_scaled if Region=="WB High Income", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="WB High Income" & Disease2==""), ///
xline(2810.011632,lp(dash)) yline(372,lp(dash)) ms(oh) mlcolor(dknavy) title(High-Income Countries) ytitle(Total Number of CEAs) xlabel(,format(%9.0fc)) ylabel(,format(%9.0fc)) xtitle("Disease Burden (DALY by 10,000s)") legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB High Income" & (Disease2=="Other communicable diseases"|Disease2=="Diabetes, urogenital, blood, & endocrine diseases"|Disease2=="Mental & behavioral disorders"|Disease2=="Other non-communicable diseases")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WB Income Levels\WBIncome_High_results.png", replace

replace pos = 9 if (Disease2 == "HIV/AIDS & tuberculosis")
replace pos = 12 if (Disease2 == "Diarrhea, lower respiratory infections, meningitis, & other common infectious diseases")
graph twoway (lfitci TotalStudies burden_scaled if Region=="WB Low Income", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Low Income" & Disease2==""), ///
xline(3589.3922,lp(dash)) yline(11.5,lp(dash)) ms(oh) mlcolor(dknavy) title(Low-Income Countries) xtitle("Disease Burden (DALY by 10,000s)") ytitle(Total Number of CEAs) xlabel(,format(%9.0fc)) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Low Income" & (Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Neonatal disorders")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Low Income" & (Disease2=="Cardiovascular diseases"|Disease2=="Neglected tropical diseases & malaria"|Disease2=="Other communicable diseases"|Disease2=="Diarrhea, lower respiratory infections, meningitis, & other common infectious diseases")), ///
ms(o) mcolor(navy) mlabel(Disease2) mlabsize(vsmall) mlabcolor(navy) mlabv(pos) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WB Income Levels\WBIncome_Low_results.png", replace

replace pos = 12 if (Disease2 == "Neonatal disorders")
replace pos = 6 if (Disease2 == "Cardiovascular diseases")
graph twoway (lfitci TotalStudies burden_scaled if Region=="WB Lower Middle Income", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Lower Middle Income" & Disease2==""), ///
xline(8074.9606,lp(dash)) yline(10.75,lp(dash)) ms(oh) mlcolor(dknavy) title(Lower-Middle-Income Countries) xtitle("Disease Burden (DALY by 10,000s)") ytitle(Total Number of CEAs) xlabel(,format(%9.0fc)) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Lower Middle Income" & (Disease2=="Cardiovascular diseases"|Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Neonatal disorders"|Disease2=="Other communicable diseases")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Lower Middle Income" & (Disease2=="Neglected tropical diseases & malaria"|Disease2=="Maternal disorders")), ///
ms(o) mcolor(navy) mlabel(Disease2) mlabsize(vsmall) mlabcolor(navy) mlabv(pos) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WB Income Levels\WBIncome_LowerMiddle_results.png", replace

replace pos = 3 if (Disease2 == "HIV/AIDS & tuberculosis")
replace pos = 5 if (Disease2 == "Mental & behavioral disorders")
replace pos = 1 if (Disease2 == "Other non-communicable diseases")
replace pos = 3 if (Disease2 == "Diabetes, urogenital, blood, & endocrine diseases")
replace pos = 9 if (Disease2 == "Cardiovascular diseases")
graph twoway (lfitci TotalStudies burden_scaled if Region=="WB Upper Middle Income", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Upper Middle Income" & Disease2==""), ///
xline(7405.5774,lp(dash)) yline(40,lp(dash)) ms(oh) mlcolor(dknavy)  mlabel(Disease2) title(Upper-Middle-Income Countries) xtitle("Disease Burden (DALY by 10,000s)") ytitle(Total Number of CEAs) xlabel(,format(%9.0fc)) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Upper Middle Income" & (Disease2=="Diabetes, urogenital, blood, & endocrine diseases"|Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Other communicable diseases")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Upper Middle Income" & (Disease2=="Mental & behavioral disorders"|Disease2=="Other non-communicable diseases"|Disease2=="Cardiovascular diseases"|Disease2=="Neoplasms")), ///
ms(o) mcolor(navy) mlabel(Disease2) mlabsize(vsmall) mlabcolor(navy) mlabv(pos) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WB Income Levels\WBIncome_UpperMiddle_results.png", replace

replace pos = 2 if (Disease2 == "Other communicable diseases")
replace pos = 12 if (Disease2 == "Diabetes, urogenital, blood, & endocrine diseases")
replace pos = 3 if (Disease2 == "Mental & behavioral disorders")
replace pos = 3 if (Disease2 == "Other non-communicable diseases")
graph twoway (lfitci TotalStudies burden_scaled if Region=="WB High & Upper Middle Income", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="WB High & Upper Middle Income" & Disease2==""), ///
xline(7740.6419,lp(dash)) yline(360,lp(dash)) ms(oh) mlcolor(dknavy) title(High- & Upper-Middle-Income Countries) xtitle("Disease Burden (DALY by 10,000s)") ytitle(Total Number of CEAs) xlabel(,format(%9.0fc)) ylabel(,format(%9.0fc)) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB High & Upper Middle Income" & (Disease2=="Diabetes, urogenital, blood, & endocrine diseases"|Disease2=="Other communicable diseases"|Disease2=="Other non-communicable diseases"|Disease2=="Mental & behavioral disorders")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB High & Upper Middle Income" & (Disease2=="Cardiovascular diseases"|Disease2=="Neoplasms")), ///
ms(o) mcolor(navy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WB Income Levels\WBIncome_BothHigh_results.png", replace

replace pos = 9 if (Disease2 == "HIV/AIDS & tuberculosis")
replace pos = 1 if (Disease2 == "Neglected tropical diseases & malaria")
replace pos = 1 if (Disease2 == "Other communicable diseases")
replace pos = 3 if (Disease2 == "Neonatal disorders")
replace pos = 3 if (Disease2 == "Cardiovascular diseases")
graph twoway (lfitci TotalStudies burden_scaled if Region=="WB Low & Lower Middle Income", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Low & Lower Middle Income" & Disease2==""), ///
xline(11689.2111,lp(dash)) yline(22,lp(dash)) ms(oh) mlcolor(dknavy) title(Low- & Lower-Middle-Income Countries) xtitle("Disease Burden (DALY by 10,000s)") ytitle(Total Number of CEAs) xlabel(,format(%9.0fc)) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="WB Low & Lower Middle Income" & (Disease2=="Cardiovascular diseases"|Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Neglected tropical diseases & malaria"|Disease2=="Neonatal disorders"|Disease2=="Other communicabl diseases")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WB Income Levels\WBIncome_BothLow_results.png", replace
