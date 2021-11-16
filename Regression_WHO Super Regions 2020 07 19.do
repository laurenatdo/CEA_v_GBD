clear all

log using "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHO Super Regions", text

import excel "G:\Projects\CEA vs. GBD\3. Analysis\2. Cleaned Datasets\Dataset 3. Regional and Disease Level Stratified Dataset_2020.xlsx", sheet("WHO SuperRegions") firstrow

*Divide DALY values by 10,000 to scale down values
gen burden_scaled = Burden/10000

*Regress disase burden (2017 DALYs) on total number of studies found in CEA registry. 
bysort Region: reg Burden TotalStudies

log close

*Graph regression line on scatter plot
generate pos = 3
replace pos = 12 if (Disease2 == "Diabetes, urogenital, blood, & endocrine diseases")
replace pos = 12 if (Disease2 == "Common diarrheal, respiratory and infectious diseases")
replace pos = 12 if (Disease2 == "Musculoskeletal disorders")
replace pos = 1 if (Disease2 == "Other communicable disease")
graph twoway (lfitci TotalStudies burden_scaled if Region=="Global", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="Global" & Disease2==""), ///
xline(18869.469,lp(dash)) yline(430,lp(dash)) ms(oh) mlcolor(dknavy) title(Global) ytitle(Total Number of CEAs) xtitle("Disease Burden (DALY by 10,000s)") xlabel(,format(%9.0fc)) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="Global" & (Disease2=="Diabetes, urogenital, blood, & endocrine diseases"|Disease2=="Common diarrheal, respiratory and infectious diseases"|Disease2=="Musculoskeletal disorders"|Disease2=="Neonatal disorders"|Disease2=="Other communicable disease"|Disease2=="Other non-communicable diseases")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(vsmall) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHOregions_global.png", replace

replace pos = 12 if (Disease2 == "Cardiovascular & circulatory diseases")
replace pos = 1 if (Disease2 == "Diabetes, urogenital, blood, & endocrine diseases")
replace pos = 5 if (Disease2 == "Common diarrheal, respiratory and infectious diseases")
replace pos = 3 if (Disease2 == "Other communicable disease")
graph twoway (lfitci TotalStudies burden_scaled if Region=="Southeast Asia, East Asia, & Oceania", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="Southeast Asia, East Asia, & Oceania" & Disease2==""), /// 
xline(6176.368,lp(dash)) yline(39,lp(dash)) ms(oh) mlcolor(dknavy) title("Southeast Asia, East Asia, & Oceania") xtitle("Disease Burden (DALY by 10,000s)") xlabel(,format(%9.0fc)) ytitle(Total Number of CEAs) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="Southeast Asia, East Asia, & Oceania" & (Disease2=="Cardiovascular & circulatory diseases"|Disease2=="Diabetes, urogenital, blood, & endocrine diseases"|Disease2=="Common diarrheal, respiratory and infectious diseases"|Disease2=="Neoplasms"|Disease2=="Other communicable disease")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(vsmall) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHOregions_Southeast Asia, East Asia, and Oceania.png", replace

replace pos = 12 if (Disease2 == "Common diarrheal, respiratory and infectious diseases")
replace pos = 9 if (Disease2 == "Neglected tropical diseases & malaria")
graph twoway (lfitci TotalStudies burden_scaled if Region=="SubSaharanAfrica", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="SubSaharanAfrica" & Disease2==""), ///
xline(5893.548,lp(dash)) yline(29,lp(dash)) ms(oh) mlcolor(dknavy) title(Sub-Saharan Africa) xtitle("Disease Burden (DALY by 10,000s)") xlabel(,format(%9.0fc)) ytitle(Total Number of CEAs) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="SubSaharanAfrica" & (Disease2=="Common diarrheal, respiratory and infectious diseases"|Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Neglected tropical diseases & malaria")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(vsmall) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="SubSaharanAfrica" & Disease2=="Neonatal disorders"), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(small) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHOregions_SubSaharanAfrica.png", replace

replace pos = 3 if (Disease2 == "Neglected tropical diseases & malaria")
graph twoway (lfitci TotalStudies burden_scaled if Region=="LatinAmerica_Caribbean", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="LatinAmerica_Caribbean" & Disease2==""), ///
xline(981.905,lp(dash)) yline(9.1,lp(dash)) ms(oh) mlcolor(dknavy) title(Latin America & The Caribbean) xtitle("Disease Burden (DALY by 10,000s)") xlabel(,format(%9.0fc)) ytitle(Total Number of CEAs) legend(off)) /// 
(scatter TotalStudies burden_scaled if (Region=="LatinAmerica_Caribbean" & (Disease2=="Common diarrheal, respiratory and infectious diseases"|Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Neglected tropical diseases & malaria"|Disease2=="Other communicable disease")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(vsmall) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="LatinAmerica_Caribbean" & (Disease2=="Mental & behavioral disorders"|Disease2=="Self-harm & interpersonal violence")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(small) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHOregions_LatinAmerica_Caribbean.png", replace

replace pos = 3 if (Disease2 == "Diabetes, urogenital, blood, & endocrine diseases")
replace pos = 3 if (Disease2 == "Common diarrheal, respiratory and infectious diseases")
replace pos = 1 if (Disease2 == "HIV/AIDS & tuberculosis")
replace pos = 5 if (Disease2 == "Other communicable disease")
graph twoway (lfitci TotalStudies burden_scaled if Region=="Europe_CentralAsia", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="Europe_CentralAsia" & Disease2==""), ///
xline(2305.207,lp(dash)) yline(9.3,lp(dash)) ms(oh) mlcolor(dknavy) title(Europe & Central Asia) xtitle("Disease Burden (DALY by 10,000s)") xlabel(,format(%9.0fc)) ytitle(Total Number of CEAs) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="Europe_CentralAsia" & (Disease2=="Diabetes, urogenital, blood, & endocrine diseases"|Disease2=="Common diarrheal, respiratory and infectious diseases"|Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Neoplasms"|Disease2=="Other communicable disease")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(vsmall) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHOregions_Europe_CentralAsia.png", replace

replace pos = 9 if (Disease2 == "Cardiovascular & circulatory diseases")
replace pos = 9 if (Disease2 == "Neonatal disorders")
replace pos = 3 if (Disease2 == "Other communicable disease")
graph twoway (lfitci TotalStudies burden_scaled if Region=="SouthAsia", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="SouthAsia" & Disease2==""), ///
xline(4254.085,lp(dash)) yline(7.6,lp(dash)) ms(oh) mlcolor(dknavy) title(South Asia) xtitle("Disease Burden (DALY by 10,000s)") xlabel(,format(%9.0fc)) ytitle(Total Number of CEAs) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="SouthAsia" & (Disease2=="Cardiovascular & circulatory diseases"|Disease2=="HIV/AIDS & tuberculosis"|Disease2=="Neonatal disorders"|Disease2=="Nutritional Deficiencies"|Disease2=="Other communicable disease")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(vsmall) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHOregions_SouthAsia.png", replace

replace pos = 3 if (Disease2 == "Neglected tropical diseases & malaria")
replace pos = 9 if (Disease2 == "Neoplasms")
graph twoway (lfitci TotalStudies burden_scaled if Region=="NorthAfrica_MiddleEast", fintensity(inten30) alcolor(bg)) ///
(scatter TotalStudies burden_scaled if (Region=="NorthAfrica_MiddleEast" & Disease2==""), ///
xline(1350.294,lp(dash)) yline(6.75,lp(dash)) ms(oh) mlcolor(dknavy) title(North Africa & The Middle East) xtitle("Disease Burden (DALY by 10,000s)") xlabel(,format(%9.0fc)) ytitle(Total Number of CEAs) legend(off)) ///
(scatter TotalStudies burden_scaled if (Region=="NorthAfrica_MiddleEast" & (Disease2=="Diabetes, urogenital, blood, & endocrine diseases"|Disease2=="Common diarrheal, respiratory and infectious diseases"|Disease2=="Mental & behavioral disorders"|Disease2=="Neglected tropical diseases & malaria"|Disease2=="Neoplasms"|Disease2=="Other communicable disease"|Disease2=="Other non-communicable diseases")), ///
ms(o) mcolor(dknavy) mlabel(Disease2) mlabcolor(dknavy) mlabv(pos) mlabs(vsmall) legend(off))
graph export "G:\Projects\CEA vs. GBD\4. Results\WHO Super Regions\WHOregions_NorthAfrica_MiddleEast.png", replace





