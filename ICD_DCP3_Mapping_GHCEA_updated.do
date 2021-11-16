clear all

import excel "G:\Projects\GH CEA Registry (Gates)\2. Datasets\Excel (DO NOT EDIT)\GHRegistry_1995-2019.xlsx", sheet("Methods") firstrow clear

*Dropping any blank observations
drop if PubMedID ==(.)

*Generating country count to determine if any studies apply internationally or if the country of study could not be determined
*221 possible countries based on the countries in our database, so if the count = 221 then the article is considered international
egen CountryCount = rowtotal(Country_*)

drop Country_NA Country_International
gen Country_NA = 0
replace Country_NA = 1 if CountryCount == 0
gen Country_International = 0
replace Country_International =1 if CountryCount == 221

*Generate Super Regions based on country variable (using PLOS ONE groupings)
*If the country was not represented in the GBD super region groupings, we did not include it in the mapping
*G:\Projects\Gates Phase 2 - Global Health\03. Task Working Groups\Task 6 - Manuscripts\QALY vs. DALY Report\Analysis\Process Audit 020218\GBD Super Regions for Stata.xlsx

drop SuperRegion_SubSaharanAfrica SuperRegion_SoutheastAsiaOceania SuperRegion_SouthAsia SuperRegion_NorthAfrica SuperRegion_HighIncome
drop SuperRegion_EuropeCentralAsia SuperRegion_LatinAmerica

gen SuperRegion_SubSaharanAfrica = 0
gen SuperRegion_SoutheastAsiaOceania = 0
gen SuperRegion_SouthAsia = 0
gen SuperRegion_NorthAfrica = 0
gen SuperRegion_HighIncome = 0
gen SuperRegion_EuropeCentralAsia = 0
gen SuperRegion_LatinAmerica = 0


replace SuperRegion_EuropeCentralAsia = 1 if Country_Armenia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Azerbaijan == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Georgia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Kazakhstan == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_KyrgyzRepublic == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Mongolia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Tajikistan == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Turkmenistan == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Uzbekistan == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Albania == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_BosniaandHerzegovina == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Croatia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_CzechRepublic == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Hungary == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Macedonia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Montenegro == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Poland == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Romania == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Serbia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_SlovakRepublic == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Slovenia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Belarus == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Estonia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Latvia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Lithuania == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Moldova == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Russia == 1
replace SuperRegion_EuropeCentralAsia = 1 if Country_Ukraine == 1

replace SuperRegion_HighIncome = 1 if Country_Australia == 1
replace SuperRegion_HighIncome = 1 if Country_NewZealand == 1
replace SuperRegion_HighIncome = 1 if Country_Brunei == 1
replace SuperRegion_HighIncome = 1 if Country_Japan == 1
replace SuperRegion_HighIncome = 1 if Country_Singapore == 1
replace SuperRegion_HighIncome = 1 if Country_KoreaRep == 1
replace SuperRegion_HighIncome = 1 if Country_Canada == 1
replace SuperRegion_HighIncome = 1 if Country_UnitedStates == 1
replace SuperRegion_HighIncome = 1 if Country_Argentina == 1
replace SuperRegion_HighIncome = 1 if Country_Chile == 1
replace SuperRegion_HighIncome = 1 if Country_Uruguay == 1
replace SuperRegion_HighIncome = 1 if Country_Andorra == 1
replace SuperRegion_HighIncome = 1 if Country_Austria == 1
replace SuperRegion_HighIncome = 1 if Country_Belgium == 1
replace SuperRegion_HighIncome = 1 if Country_Cyprus == 1
replace SuperRegion_HighIncome = 1 if Country_Denmark == 1
replace SuperRegion_HighIncome = 1 if Country_Finland == 1
replace SuperRegion_HighIncome = 1 if Country_France == 1
replace SuperRegion_HighIncome = 1 if Country_Germany == 1
replace SuperRegion_HighIncome = 1 if Country_Greece == 1
replace SuperRegion_HighIncome = 1 if Country_Greenland == 1
replace SuperRegion_HighIncome = 1 if Country_Iceland == 1
replace SuperRegion_HighIncome = 1 if Country_Ireland == 1
replace SuperRegion_HighIncome = 1 if Country_Israel == 1
replace SuperRegion_HighIncome = 1 if Country_Italy == 1
replace SuperRegion_HighIncome = 1 if Country_Luxembourg == 1
replace SuperRegion_HighIncome = 1 if Country_Malta == 1
replace SuperRegion_HighIncome = 1 if Country_Netherlands == 1
replace SuperRegion_HighIncome = 1 if Country_Norway == 1
replace SuperRegion_HighIncome = 1 if Country_Portugal == 1
replace SuperRegion_HighIncome = 1 if Country_Spain == 1
replace SuperRegion_HighIncome = 1 if Country_Sweden == 1
replace SuperRegion_HighIncome = 1 if Country_Switzerland == 1
replace SuperRegion_HighIncome = 1 if Country_UnitedKingdom == 1

replace SuperRegion_LatinAmerica = 1 if Country_Bolivia == 1
replace SuperRegion_LatinAmerica = 1 if Country_Ecuador == 1
replace SuperRegion_LatinAmerica = 1 if Country_Peru == 1
replace SuperRegion_LatinAmerica = 1 if Country_AntiguaandBarbuda == 1
replace SuperRegion_LatinAmerica = 1 if Country_Bahamas == 1
replace SuperRegion_LatinAmerica = 1 if Country_Barbados == 1
replace SuperRegion_LatinAmerica = 1 if Country_Belize == 1
replace SuperRegion_LatinAmerica = 1 if Country_Bermuda == 1
replace SuperRegion_LatinAmerica = 1 if Country_Cuba == 1
replace SuperRegion_LatinAmerica = 1 if Country_Dominica == 1
replace SuperRegion_LatinAmerica = 1 if Country_DominicanRepublic == 1
replace SuperRegion_LatinAmerica = 1 if Country_Grenada == 1
replace SuperRegion_LatinAmerica = 1 if Country_Guyana == 1
replace SuperRegion_LatinAmerica = 1 if Country_Haiti == 1
replace SuperRegion_LatinAmerica = 1 if Country_Jamaica == 1
replace SuperRegion_LatinAmerica = 1 if Country_PuertoRico == 1
replace SuperRegion_LatinAmerica = 1 if Country_StLucia == 1
replace SuperRegion_LatinAmerica = 1 if Country_StVincentandtheGrenadine == 1
replace SuperRegion_LatinAmerica = 1 if Country_Suriname == 1
replace SuperRegion_LatinAmerica = 1 if Country_TrinidadandTobago == 1
replace SuperRegion_LatinAmerica = 1 if Country_Colombia == 1
replace SuperRegion_LatinAmerica = 1 if Country_CostaRica == 1
replace SuperRegion_LatinAmerica = 1 if Country_ElSalvador == 1
replace SuperRegion_LatinAmerica = 1 if Country_Guatemala == 1
replace SuperRegion_LatinAmerica = 1 if Country_Honduras == 1
replace SuperRegion_LatinAmerica = 1 if Country_Mexico == 1
replace SuperRegion_LatinAmerica = 1 if Country_Nicaragua == 1
replace SuperRegion_LatinAmerica = 1 if Country_Panama == 1
replace SuperRegion_LatinAmerica = 1 if Country_Venezuela == 1
replace SuperRegion_LatinAmerica = 1 if Country_Brazil == 1
replace SuperRegion_LatinAmerica = 1 if Country_Paraguay == 1

replace SuperRegion_NorthAfrica = 1 if Country_Afghanistan == 1
replace SuperRegion_NorthAfrica = 1 if Country_Algeria == 1
replace SuperRegion_NorthAfrica = 1 if Country_Bahrain == 1
replace SuperRegion_NorthAfrica = 1 if Country_Egypt == 1
replace SuperRegion_NorthAfrica = 1 if Country_Iran == 1
replace SuperRegion_NorthAfrica = 1 if Country_Iraq == 1
replace SuperRegion_NorthAfrica = 1 if Country_Jordan == 1
replace SuperRegion_NorthAfrica = 1 if Country_Kuwait == 1
replace SuperRegion_NorthAfrica = 1 if Country_Lebanon == 1
replace SuperRegion_NorthAfrica = 1 if Country_Libya == 1
replace SuperRegion_NorthAfrica = 1 if Country_Morocco == 1
replace SuperRegion_NorthAfrica = 1 if Country_WestBankandGaza == 1
replace SuperRegion_NorthAfrica = 1 if Country_Oman == 1
replace SuperRegion_NorthAfrica = 1 if Country_Qatar == 1
replace SuperRegion_NorthAfrica = 1 if Country_SaudiArabia == 1
replace SuperRegion_NorthAfrica = 1 if Country_Sudan == 1
replace SuperRegion_NorthAfrica = 1 if Country_Syria == 1
replace SuperRegion_NorthAfrica = 1 if Country_Tunisia == 1
replace SuperRegion_NorthAfrica = 1 if Country_Turkey == 1
replace SuperRegion_NorthAfrica = 1 if Country_UnitedArabEmirates == 1
replace SuperRegion_NorthAfrica = 1 if Country_Yemen == 1

replace SuperRegion_SouthAsia = 1 if Country_Bangladesh == 1
replace SuperRegion_SouthAsia = 1 if Country_Bhutan == 1
replace SuperRegion_SouthAsia = 1 if Country_India == 1
replace SuperRegion_SouthAsia = 1 if Country_Nepal == 1
replace SuperRegion_SouthAsia = 1 if Country_Pakistan == 1

replace SuperRegion_SubSaharanAfrica = 1 if Country_Angola == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_CentralAfricanRepublic == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_CongoRep == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_CongoDemRep == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_EquatorialGuinea == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Gabon == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Burundi == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Comoros == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Djibouti == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Eritrea == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Ethiopia == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Kenya == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Madagascar == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Malawi == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Mozambique == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Rwanda == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Somalia == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_SouthSudan == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Tanzania == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Uganda == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Zambia == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Botswana == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Lesotho == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Namibia == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_SouthAfrica == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Swaziland == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Zimbabwe == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Benin == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_BurkinaFaso == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Cameroon == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_CaboVerde == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Chad == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_CotedIvoire == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_GambiaThe == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Ghana == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Guinea == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_GuineaBissau == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Liberia == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Mauritania == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Niger == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Nigeria == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_SaoTomeandPrincipe == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Senegal == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_SierraLeone == 1
replace SuperRegion_SubSaharanAfrica = 1 if Country_Togo == 1

replace SuperRegion_SoutheastAsiaOceania = 1 if Country_China == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_KoreaDemPeoplesRep == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_TaiwanChina == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Cambodia == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Indonesia == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_LaoPDR == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Malaysia == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Maldives == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Mauritius == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Myanmar == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Philippines == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Seychelles == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_SriLanka == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Thailand == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_TimorLeste == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Vietnam == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_AmericanSamoa == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_MicronesiaFedSts == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Fiji == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Guam == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Kiribati == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_MarshallIslands == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_PapuaNewGuinea == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Samoa == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_SolomonIslands == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Tonga == 1
replace SuperRegion_SoutheastAsiaOceania = 1 if Country_Vanuatu == 1

egen SuperRegionCount = rowtotal(SuperRegion_*)

drop SuperRegion_NA 
gen SuperRegion_NA = 0
replace SuperRegion_NA = 1 if SuperRegionCount == 0
gen SuperRegion_Multiple = 0
replace SuperRegion_Multiple = 1 if SuperRegionCount>1


*Generate Income Classifications based on country variable
drop WBIncome_High WBIncome_UpperMiddle WBIncome_LowerMiddle WBIncome_Low

gen WBIncome_High = 0
gen WBIncome_UpperMiddle = 0 
gen WBIncome_LowerMiddle = 0
gen WBIncome_Low = 0 
 
replace WBIncome_High = 1 if Country_Andorra == 1
replace WBIncome_High = 1 if Country_AntiguaandBarbuda == 1
replace WBIncome_High = 1 if Country_Argentina == 1
replace WBIncome_High = 1 if Country_Aruba == 1
replace WBIncome_High = 1 if Country_Australia == 1
replace WBIncome_High = 1 if Country_Austria == 1
replace WBIncome_High = 1 if Country_Bahamas == 1
replace WBIncome_High = 1 if Country_Bahrain == 1
replace WBIncome_High = 1 if Country_Barbados == 1
replace WBIncome_High = 1 if Country_Belgium == 1
replace WBIncome_High = 1 if Country_Bermuda == 1
replace WBIncome_High = 1 if Country_BritishVirginIslands == 1
replace WBIncome_High = 1 if Country_Brunei == 1
replace WBIncome_High = 1 if Country_Canada == 1
replace WBIncome_High = 1 if Country_CaymanIslands == 1
replace WBIncome_High = 1 if Country_ChannelIslands == 1
replace WBIncome_High = 1 if Country_Chile == 1
replace WBIncome_High = 1 if Country_Croatia == 1
replace WBIncome_High = 1 if Country_Cyprus == 1
replace WBIncome_High = 1 if Country_CzechRepublic == 1
replace WBIncome_High = 1 if Country_Denmark == 1
replace WBIncome_High = 1 if Country_Estonia == 1
replace WBIncome_High = 1 if Country_FaroeIslands == 1
replace WBIncome_High = 1 if Country_Finland == 1
replace WBIncome_High = 1 if Country_France == 1
replace WBIncome_High = 1 if Country_FrenchPolynesia == 1
replace WBIncome_High = 1 if Country_Germany == 1
replace WBIncome_High = 1 if Country_Gibraltar == 1
replace WBIncome_High = 1 if Country_Greece == 1
replace WBIncome_High = 1 if Country_Greenland == 1
replace WBIncome_High = 1 if Country_Guam == 1
replace WBIncome_High = 1 if Country_HongKongSARChina == 1
replace WBIncome_High = 1 if Country_Hungary == 1
replace WBIncome_High = 1 if Country_Iceland == 1
replace WBIncome_High = 1 if Country_Ireland == 1
replace WBIncome_High = 1 if Country_IsleofMan == 1
replace WBIncome_High = 1 if Country_Israel == 1
replace WBIncome_High = 1 if Country_Italy == 1
replace WBIncome_High = 1 if Country_Japan == 1
replace WBIncome_High = 1 if Country_KoreaRep == 1
replace WBIncome_High = 1 if Country_Kuwait == 1
replace WBIncome_High = 1 if Country_Latvia == 1
replace WBIncome_High = 1 if Country_Liechtenstein == 1
replace WBIncome_High = 1 if Country_Lithuania == 1
replace WBIncome_High = 1 if Country_Luxembourg == 1
replace WBIncome_High = 1 if Country_MacaoSARChina == 1
replace WBIncome_High = 1 if Country_Malta == 1
replace WBIncome_High = 1 if Country_Monaco == 1
replace WBIncome_High = 1 if Country_Netherlands == 1
replace WBIncome_High = 1 if Country_NewCaledonia == 1
replace WBIncome_High = 1 if Country_NewZealand == 1
replace WBIncome_High = 1 if Country_NorthernMarianaIslands == 1
replace WBIncome_High = 1 if Country_Norway == 1
replace WBIncome_High = 1 if Country_Oman == 1
replace WBIncome_High = 1 if Country_Palau == 1
replace WBIncome_High = 1 if Country_Panama == 1
replace WBIncome_High = 1 if Country_Poland == 1
replace WBIncome_High = 1 if Country_Portugal == 1
replace WBIncome_High = 1 if Country_PuertoRico == 1
replace WBIncome_High = 1 if Country_Qatar == 1
replace WBIncome_High = 1 if Country_SanMarino == 1
replace WBIncome_High = 1 if Country_SaudiArabia == 1
replace WBIncome_High = 1 if Country_Seychelles == 1
replace WBIncome_High = 1 if Country_Singapore == 1
replace WBIncome_High = 1 if Country_SintMaartenDutch == 1
replace WBIncome_High = 1 if Country_SlovakRepublic == 1
replace WBIncome_High = 1 if Country_Slovenia == 1
replace WBIncome_High = 1 if Country_Spain == 1
replace WBIncome_High = 1 if Country_StKittsandNevis == 1
replace WBIncome_High = 1 if Country_StMartinFrench == 1
replace WBIncome_High = 1 if Country_Sweden == 1
replace WBIncome_High = 1 if Country_Switzerland == 1
replace WBIncome_High = 1 if Country_TaiwanChina == 1
replace WBIncome_High = 1 if Country_TrinidadandTobago == 1
replace WBIncome_High = 1 if Country_TurksandCaicosIslands == 1
replace WBIncome_High = 1 if Country_UnitedArabEmirates == 1
replace WBIncome_High = 1 if Country_UnitedKingdom == 1
replace WBIncome_High = 1 if Country_UnitedStates == 1
replace WBIncome_High = 1 if Country_Uruguay == 1
replace WBIncome_High = 1 if Country_VirginIslandsUS == 1

replace WBIncome_Low = 1 if Country_Afghanistan == 1
replace WBIncome_Low = 1 if Country_Benin == 1
replace WBIncome_Low = 1 if Country_BurkinaFaso == 1
replace WBIncome_Low = 1 if Country_Burundi == 1
replace WBIncome_Low = 1 if Country_CentralAfricanRepublic == 1
replace WBIncome_Low = 1 if Country_Chad == 1
replace WBIncome_Low = 1 if Country_Comoros == 1
replace WBIncome_Low = 1 if Country_CongoDemRep == 1
replace WBIncome_Low = 1 if Country_Eritrea == 1
replace WBIncome_Low = 1 if Country_Ethiopia == 1
replace WBIncome_Low = 1 if Country_GambiaThe == 1
replace WBIncome_Low = 1 if Country_Guinea == 1
replace WBIncome_Low = 1 if Country_GuineaBissau == 1
replace WBIncome_Low = 1 if Country_Haiti == 1
replace WBIncome_Low = 1 if Country_KoreaDemPeoplesRep == 1
replace WBIncome_Low = 1 if Country_Liberia == 1
replace WBIncome_Low = 1 if Country_Madagascar == 1
replace WBIncome_Low = 1 if Country_Malawi == 1
replace WBIncome_Low = 1 if Country_Mali == 1
replace WBIncome_Low = 1 if Country_Mozambique == 1
replace WBIncome_Low = 1 if Country_Nepal == 1
replace WBIncome_Low = 1 if Country_Niger == 1
replace WBIncome_Low = 1 if Country_Rwanda == 1
replace WBIncome_Low = 1 if Country_Senegal == 1
replace WBIncome_Low = 1 if Country_SierraLeone == 1
replace WBIncome_Low = 1 if Country_Somalia == 1
replace WBIncome_Low = 1 if Country_SouthSudan == 1
replace WBIncome_Low = 1 if Country_SyrianArabRepublic == 1
replace WBIncome_Low = 1 if Country_Tajikistan == 1
replace WBIncome_Low = 1 if Country_Tanzania == 1
replace WBIncome_Low = 1 if Country_Togo == 1
replace WBIncome_Low = 1 if Country_Uganda == 1
replace WBIncome_Low = 1 if Country_YemenRep == 1
replace WBIncome_Low = 1 if Country_Zimbabwe == 1

replace WBIncome_LowerMiddle = 1 if Country_Angola == 1
replace WBIncome_LowerMiddle = 1 if Country_Bangladesh == 1
replace WBIncome_LowerMiddle = 1 if Country_Bhutan == 1
replace WBIncome_LowerMiddle = 1 if Country_Bolivia == 1
replace WBIncome_LowerMiddle = 1 if Country_CaboVerde == 1
replace WBIncome_LowerMiddle = 1 if Country_Cambodia == 1
replace WBIncome_LowerMiddle = 1 if Country_Cameroon == 1
replace WBIncome_LowerMiddle = 1 if Country_CongoRep == 1
replace WBIncome_LowerMiddle = 1 if Country_CotedIvoire == 1
replace WBIncome_LowerMiddle = 1 if Country_Djibouti == 1
replace WBIncome_LowerMiddle = 1 if Country_EgyptArabRep == 1
replace WBIncome_LowerMiddle = 1 if Country_ElSalvador == 1
replace WBIncome_LowerMiddle = 1 if Country_Georgia == 1
replace WBIncome_LowerMiddle = 1 if Country_Ghana == 1
replace WBIncome_LowerMiddle = 1 if Country_Honduras == 1
replace WBIncome_LowerMiddle = 1 if Country_India == 1
replace WBIncome_LowerMiddle = 1 if Country_Indonesia == 1
replace WBIncome_LowerMiddle = 1 if Country_Kenya == 1
replace WBIncome_LowerMiddle = 1 if Country_Kiribati == 1
replace WBIncome_LowerMiddle = 1 if Country_Kosovo == 1
replace WBIncome_LowerMiddle = 1 if Country_KyrgyzRepublic == 1
replace WBIncome_LowerMiddle = 1 if Country_LaoPDR == 1
replace WBIncome_LowerMiddle = 1 if Country_Lesotho == 1
replace WBIncome_LowerMiddle = 1 if Country_Mauritania == 1
replace WBIncome_LowerMiddle = 1 if Country_MicronesiaFedSts == 1
replace WBIncome_LowerMiddle = 1 if Country_Moldova == 1
replace WBIncome_LowerMiddle = 1 if Country_Mongolia == 1
replace WBIncome_LowerMiddle = 1 if Country_Morocco == 1
replace WBIncome_LowerMiddle = 1 if Country_Myanmar == 1
replace WBIncome_LowerMiddle = 1 if Country_Nicaragua == 1
replace WBIncome_LowerMiddle = 1 if Country_Nigeria == 1
replace WBIncome_LowerMiddle = 1 if Country_Pakistan == 1
replace WBIncome_LowerMiddle = 1 if Country_PapuaNewGuinea == 1
replace WBIncome_LowerMiddle = 1 if Country_Philippines == 1
replace WBIncome_LowerMiddle = 1 if Country_SaoTomeandPrincipe == 1
replace WBIncome_LowerMiddle = 1 if Country_SolomonIslands == 1
replace WBIncome_LowerMiddle = 1 if Country_SriLanka == 1
replace WBIncome_LowerMiddle = 1 if Country_Sudan == 1
replace WBIncome_LowerMiddle = 1 if Country_Swaziland == 1
replace WBIncome_LowerMiddle = 1 if Country_TimorLeste == 1
replace WBIncome_LowerMiddle = 1 if Country_Tunisia == 1
replace WBIncome_LowerMiddle = 1 if Country_Ukraine == 1
replace WBIncome_LowerMiddle = 1 if Country_Uzbekistan == 1
replace WBIncome_LowerMiddle = 1 if Country_Vanuatu == 1
replace WBIncome_LowerMiddle = 1 if Country_Vietnam == 1
replace WBIncome_LowerMiddle = 1 if Country_WestBankandGaza == 1
replace WBIncome_LowerMiddle = 1 if Country_Zambia == 1

replace WBIncome_UpperMiddle = 1 if Country_Albania == 1
replace WBIncome_UpperMiddle = 1 if Country_Algeria == 1
replace WBIncome_UpperMiddle = 1 if Country_AmericanSamoa == 1
replace WBIncome_UpperMiddle = 1 if Country_Armenia == 1
replace WBIncome_UpperMiddle = 1 if Country_Azerbaijan == 1
replace WBIncome_UpperMiddle = 1 if Country_Belarus == 1
replace WBIncome_UpperMiddle = 1 if Country_Belize == 1
replace WBIncome_UpperMiddle = 1 if Country_BosniaandHerzegovina == 1
replace WBIncome_UpperMiddle = 1 if Country_Botswana == 1
replace WBIncome_UpperMiddle = 1 if Country_Brazil == 1
replace WBIncome_UpperMiddle = 1 if Country_Bulgaria == 1
replace WBIncome_UpperMiddle = 1 if Country_China == 1
replace WBIncome_UpperMiddle = 1 if Country_Colombia == 1
replace WBIncome_UpperMiddle = 1 if Country_CostaRica == 1
replace WBIncome_UpperMiddle = 1 if Country_Cuba == 1
replace WBIncome_UpperMiddle = 1 if Country_Dominica == 1
replace WBIncome_UpperMiddle = 1 if Country_DominicanRepublic == 1
replace WBIncome_UpperMiddle = 1 if Country_Ecuador == 1
replace WBIncome_UpperMiddle = 1 if Country_EquatorialGuinea == 1
replace WBIncome_UpperMiddle = 1 if Country_Fiji == 1
replace WBIncome_UpperMiddle = 1 if Country_Gabon == 1
replace WBIncome_UpperMiddle = 1 if Country_Grenada == 1
replace WBIncome_UpperMiddle = 1 if Country_Guatemala == 1
replace WBIncome_UpperMiddle = 1 if Country_Guyana == 1
replace WBIncome_UpperMiddle = 1 if Country_IranIslamicRep == 1
replace WBIncome_UpperMiddle = 1 if Country_Iraq == 1
replace WBIncome_UpperMiddle = 1 if Country_Jamaica == 1
replace WBIncome_UpperMiddle = 1 if Country_Jordan == 1
replace WBIncome_UpperMiddle = 1 if Country_Kazakhstan == 1
replace WBIncome_UpperMiddle = 1 if Country_Lebanon == 1
replace WBIncome_UpperMiddle = 1 if Country_Libya == 1
replace WBIncome_UpperMiddle = 1 if Country_MacedoniaFYR == 1
replace WBIncome_UpperMiddle = 1 if Country_Malaysia == 1
replace WBIncome_UpperMiddle = 1 if Country_Maldives == 1
replace WBIncome_UpperMiddle = 1 if Country_MarshallIslands == 1
replace WBIncome_UpperMiddle = 1 if Country_Mauritius == 1
replace WBIncome_UpperMiddle = 1 if Country_Mexico == 1
replace WBIncome_UpperMiddle = 1 if Country_Montenegro == 1
replace WBIncome_UpperMiddle = 1 if Country_Namibia == 1
replace WBIncome_UpperMiddle = 1 if Country_Nauru == 1
replace WBIncome_UpperMiddle = 1 if Country_Paraguay == 1
replace WBIncome_UpperMiddle = 1 if Country_Peru == 1
replace WBIncome_UpperMiddle = 1 if Country_Romania == 1
replace WBIncome_UpperMiddle = 1 if Country_RussianFederation == 1
replace WBIncome_UpperMiddle = 1 if Country_Samoa == 1
replace WBIncome_UpperMiddle = 1 if Country_Serbia == 1
replace WBIncome_UpperMiddle = 1 if Country_SouthAfrica == 1
replace WBIncome_UpperMiddle = 1 if Country_StLucia == 1
replace WBIncome_UpperMiddle = 1 if Country_StVincentandtheGrenadine == 1
replace WBIncome_UpperMiddle = 1 if Country_Suriname == 1
replace WBIncome_UpperMiddle = 1 if Country_Thailand == 1
replace WBIncome_UpperMiddle = 1 if Country_Tonga == 1
replace WBIncome_UpperMiddle = 1 if Country_Turkey == 1
replace WBIncome_UpperMiddle = 1 if Country_Turkmenistan == 1
replace WBIncome_UpperMiddle = 1 if Country_Tuvalu == 1
replace WBIncome_UpperMiddle = 1 if Country_VenezuelaRB == 1

*recreate Table 1 categories for World Bank Income Level
*Upper Middle and High grouped together
*Lower Middle and Low grouped together
gen WBIncome_UpperMiddleandHigh = 0
gen WBIncome_LowerMiddleandLow = 0
replace WBIncome_UpperMiddleandHigh = 1 if WBIncome_UpperMiddle == 1
replace WBIncome_UpperMiddleandHigh = 1 if WBIncome_High == 1
replace WBIncome_LowerMiddleandLow = 1 if WBIncome_LowerMiddle == 1
replace WBIncome_LowerMiddleandLow = 1 if WBIncome_Low == 1
replace WBIncome_UpperMiddleandHigh = 1 if WBIncome_UpperMiddleandHigh == 2
replace WBIncome_LowerMiddleandLow = 1 if WBIncome_LowerMiddleandLow == 2
gen WBIncome_Both = 0
replace WBIncome_Both = 1 if WBIncome_UpperMiddleandHigh == 1 & WBIncome_LowerMiddleandLow == 1
replace WBIncome_UpperMiddleandHigh = 0 if WBIncome_Both == 1
replace WBIncome_LowerMiddleandLow = 0 if WBIncome_Both == 1
replace WBIncome_Both = 0 if WBIncome_Both == . 
gen WBIncome_Neither = 1 if WBIncome_UpperMiddleandHigh == 0 & WBIncome_LowerMiddleandLow == 0 & WBIncome_Both == 0
replace WBIncome_Neither = 0 if WBIncome_Neither == . 


gen PreventionStage_Collapsed = 0
replace PreventionStage_Collapsed = 1 if PreventionPrimary== 1
replace PreventionStage_Collapsed = 2 if PreventionSecondary== 1
replace PreventionStage_Collapsed = 3 if PreventionTertiary== 1
replace PreventionStage_Collapsed = 4 if PreventionPrimary + PreventionSecondary + PreventionTertiary >1


*Collapsing funder variables into Table 1 specified categories
gen SponsorshipFoundation2 = SponsorshipFoundation + SponsorshipGatesFoundation
drop SponsorshipFoundation SponsorshipGatesFoundation
rename SponsorshipFoundation2 SponsorshipFoundation
gen SponsorshipOther2 = SponsorshipOther + SponsorshipAcademic + SponsorshipProfMembOrg
drop SponsorshipOther SponsorshipAcademic SponsorshipProfMembOrg
rename SponsorshipOther2 SponsorshipOther


*ICD to DCP3 Mapping
gen strL DCP3="C35" if GBDDis1_tier3=="Malaria" & [InterventionDiagnostic==1|InterventionScreening==1] & InterventionPharmaceutical==1
replace DCP3="C47" if [PrimaryDisCode=="J40-J47: Chronic lower respiratory diseases"|GBDDis1_tier2=="Chronic respiratory diseases"] & strpos(lower(Abstract),"exercise") & (PreventionStage_Collapsed==3|PreventionStage_Collapsed==4)
replace DCP3="C50" if GBDDis1_tier3=="Interpersonal violence" & [strpos(lower(Abstract),"parent")|InterventionHealthEducationOrBe==1]
replace DCP3="C51" if PrimaryDisCode=="A00-A09: Intestinal infectious diseases" & InterventionHealthEducationOrBe==1
replace DCP3="FLH10" if PrimaryDisCode=="O00-O08: Pregnancy with abortive outcome" & [InterventionSurgical==1|InterventionMedicalProcedure==1|InterventionMaternalNeonatalCa]
replace DCP3="FLH12" if PrimaryDisCode=="E40-E46: Malnutrition" & [strpos(lower(Abstract),"management")|strpos(lower(Abstract),"manage")]
replace DCP3="FLH13" if GBDDis1_tier2=="Neoplasms" & strpos(lower(Abstract),"cervical") & strpos(lower(Abstract),"early")
replace DCP3="FLH15" if [PrimaryDisCode=="O85-O92: Complications predominantly related to the puerperium"|PrimaryDisCode=="O94-O99: Other obstetric conditions, not elsewhere classified"|InterventionMaternalNeonatalCa==1] & strpos(lower(Abstract),"sepsis")
replace DCP3="FLH120" if PrimaryDisCode=="I20-I25: Ischemic heart diseases" & [strpos(lower(Abstract),"aspirin")|strpos(lower(Abstract),"heparin")|strpos(lower(Abstract),"thrombolytics")] 
replace DCP3="HC1" if GBDDis1_tier2=="Neonatal disorders" & strpos(lower(Abstract),"antibiotics") & strpos(lower(Abstract),"early")
replace DCP3="HC13" if GBDDis1_tier3=="HIV/AIDS" & strpos(lower(Abstract),"art initiation") & [strpos(lower(Abstract),"monitor")|strpos(lower(Abstract),"surveillance")]
replace DCP3="HC15" if GBDDis1_tier3=="Interpersonal violence" & [strpos(lower(Abstract),"female genital mutilation")|strpos(lower(Abstract),"fgm")]
replace DCP3="HC49" if GBDDis1_tier3=="Bipolar affective disorder" & InterventionPharmaceutical==1 & [strpos(lower(Abstract),"psychosocial")|strpos(lower(Abstract),"therapy")]
replace DCP3="P5" if PrimaryDisCode=="A15-A19: Tuberculosis" & InterventionCareDelivery==1
replace DCP3="P4" if PrimaryDisCode=="B50-B64: Protozoal diseases" & InterventionHealthEducationOrBe==1
replace DCP3="P3" if GBDDis1_tier3=="Alcohol use disorders" & InterventionHealthEducationOrBe==1
replace DCP3="RH7" if GBDDis1_tier2=="Neoplasms" & strpos(lower(Abstract),"breast") & strpos(lower(Abstract),"early") & strpos(lower(Abstract),"multimodal")
replace DCP3="RH18" if GBDDis1_tier3=="Trachoma" & InterventionSurgical==1
replace DCP3="RH13" if strpos(lower(Abstract),"club foot") & strpos(lower(Abstract),"repair")
replace DCP3="RH6" if PrimaryDisCode=="I20-I25: Ischemic heart diseases" & strpos(lower(Abstract),"percutaneous coronary intervention") & strpos(lower(Abstract),"acute myocardial infarction")
replace DCP3="C4" if strpos(lower(Abstract),"breast feed")|strpos(lower(Abstract),"breast feeding")
replace DCP3="C43" if GBDDis1_tier3=="Chagas disease" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C43" if GBDDis1_tier3=="Leishmaniasis" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C43" if GBDDis1_tier3=="African trypanosomiasis" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C43" if GBDDis1_tier3=="Leprosy" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C58" if strpos(lower(Abstract),"stroke") & strpos(lower(Abstract),"training")
replace DCP3="C58" if strpos(lower(Abstract),"parkinson") & strpos(lower(Abstract),"training")
replace DCP3="C58" if strpos(lower(Abstract),"multiple sclerosis") & strpos(lower(Abstract),"training")
replace DCP3="C58" if strpos(lower(Abstract),"motor neuron disease") & strpos(lower(Abstract),"training")
replace DCP3="C59" if [GBDDis1_tier2=="Musculoskeletal disorders"|GBDDis1_tier2=="Unintentional injuries other than transport injuries"] & strpos(lower(Abstract),"training") & strpos(lower(Abstract),"exercise")
replace DCP3="FLH1" if strpos(lower(Abstract),"fetal growth restriction") & [InterventionDiagnostic==1|InterventionScreening==1|InterventionMaternalNeonatalCa==1] & [strpos(lower(Abstract),"manage")|strpos(lower(Abstract),"management")]
replace DCP3="H17" if PrimaryDisCode=="A15-A19: Tuberculosis" & strpos(lower(Abstract),"referral") & [strpos(lower(Abstract),"treatment failure")|strpos(lower(Abstract),"treatment fail")]
replace DCP3="H17" if PrimaryDisCode=="B20-B24: Human immunodeficiency virus [HIV] disease" & strpos(lower(Abstract),"referral") & [strpos(lower(Abstract),"treatment failure")|strpos(lower(Abstract),"treatment fail")]
replace DCP3="H17" if PrimaryDisCode=="Z16: Resistance to antimicrobial drugs" & strpos(lower(Abstract),"referral") & [strpos(lower(Abstract),"treatment failure")|strpos(lower(Abstract),"treatment fail")]
replace DCP3="H17" if [strpos(lower(Abstract),"multi-drug-resistant tuberculosis")|strpos(lower(Abstract),"mdr-tb")] & strpos(lower(Abstract),"enroll")
replace DCP3="FLH22" if [GBDDis1_tier3=="Asthma"|GBDDis1_tier3=="Chronic obstructive pulmonary disease"] & [strpos(lower(Abstract),"steroids")|strpos(lower(Abstract),"inhaled beta-agonists")|strpos(lower(Abstract),"oral antibiotics")|strpos(lower(Abstract),"oxygen therapy")]
replace DCP3="FLH27" if [GBDDis1_tier4=="Sickle-cell disorders"|GBDDis1_tier3=="Malaria"] & [strpos(lower(Abstract),"newborn screening")|strpos(lower(Abstract),"neonatal screening")]
replace DCP3="FLH46" if PrimaryDisCode=="C43-C44: Melanoma and other malignant neoplasms of skin" & strpos(lower(Abstract),"basic skin grafting")
replace DCP3="FLH46" if PrimaryDisCode=="L80-L99: Other disorders of the skin and subcutaneous tissue" & strpos(lower(Abstract),"basic skin grafting")
replace DCP3="FLH46" if PrimaryDisCode=="T20-T25: Burns and corrosions of external body surface, specified by site" & strpos(lower(Abstract),"basic skin grafting")
replace DCP3="FLH52" if PrimaryDisCode=="T20-T25: Burns and corrosions of external body surface, specified by site" & strpos(lower(Abstract),"compression therapy")
replace DCP3="FLH52" if strpos(lower(Abstract),"filariasis") & strpos(lower(Abstract),"compression therapy")
replace DCP3="HC16" if PrimaryDisCode=="A50-A64: Infections with a predominately sexual mode of transmission" & [strpos(lower(Abstract),"violence care")|InterventionPsychosocial==1]
replace DCP3="HC16" if PrimaryDisCode=="B20-B24: Human immunodeficiency virus [HIV] disease" & strpos(lower(Abstract),"violence care")
replace DCP3="HC16" if [GBDDis1_tier3=="Anxiety disorders"|GBDDis1_tier3=="Unipolar depressive disorders"] & strpos(lower(Abstract),"violence care")
replace DCP3="HC24" if [GBDDis1_tier4=="Acute hepatitis B"|GBDDis1_tier4=="Liver cancer secondary to hepatitis B"] & InterventionImmunization==1
replace DCP3="HC24" if GBDDis1_tier3=="Cirrhosis of the liver secondary to hepatitis B" & InterventionImmunization==1
replace DCP3="HC31" if [GBDDis1_tier3=="Typhoid and paratyphoid fevers"|GBDDis1_tier3=="Dengue"|GBDDis1_tier3=="Yellow fever"|GBDDis1_tier3=="Encephalitis"] & InterventionImmunization==1
replace DCP3="HC37" if [GBDDis1_tier3=="Asthma"|GBDDis1_tier3=="Chronic obstructive pulmonary disease"] & [strpos(lower(Abstract),"inhaled corticosteroids")|strpos(lower(Abstract),"bronchodilators")]
replace DCP3="HC14" if GBDDis1_tier2=="Mental and behavioral disorders" & strpos(lower(Abstract),"psychological treatment")
replace DCP3="HC63" if GBDDis1_tier4=="Dental caries" & strpos(lower(Abstract),"treat")
replace DCP3="P13" if InterventionHealthEducationOrBe==1 & [strpos(lower(Abstract),"handwashing")| strpos(lower(Abstract),"wash hands")] & [strpos(lower(Abstract),"air pollution")| strpos(lower(Abstract),"air pollutant")]
replace DCP3="P6" if [GBDDis1_tier3=="Chagas disease"|GBDDis1_tier3=="Dengue"|GBDDis1_tier3=="Leishmaniasis"] & strpos(lower(Abstract),"sustained vector management")
replace DCP3="P6" if [GBDDis1_tier3=="Typhoid and paratyphoid fevers"|GBDDis1_tier3=="Yellow fever"|GBDDis1_tier3=="Encephalitis"] & strpos(lower(Abstract),"sustained vector management")
replace DCP3="RH1" if [GBDDis1_tier2=="Neonatal disorders"|strpos(lower(Abstract),"preterm")] & strpos(lower(Abstract),"full supportive care")
replace DCP3="RH11" if GBDDis1_tier2=="Injuries" & InterventionSurgical==1 & [strpos(lower(Abstract),"orthopedic")|strpos(lower(Abstract),"orthopaedic")]
replace DCP3="RH10" if GBDDis1_tier2=="Injuries" & InterventionSurgical==1 & [strpos(lower(Abstract),"elective surgical repair")|strpos(lower(Abstract),"elective surgery")]
replace DCP3="FLH50" if strpos(lower(Abstract),"tube thoracostomy") & [Intervention MedicalProcedure==1|Intervention Surgical==1]
replace DCP3="C53" if GBDDis1_tier2=="Mental and behavioral disorders" & strpos(lower(Abstract),"early childhood development rehabilitation")
replace DCP3="RH4" if GBDDis1_tier3=="Chronic obstructive pulmonary disease" & strpos(lower(Abstract),"bilevel positive airway pressure") & strpos(lower(Abstract),"acute ventilatory failure")
replace DCP3="RH4" if GBDDis1_tier3=="Asthma" & strpos(lower(Abstract),"acute ventilatory failure")
replace DCP3="RH2" if GBDDis1_tier3=="Tuberculosis" & [InterventionSurgical==1|strpos(lower(Abstract),"specialized")|strpos(lower(Abstract),"mdr-tb")|strpos(lower(Abstract),"xdr-tb")]
replace DCP3="C34" if GBDDis1_tier3=="Malaria" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDDis1_tier3=="Dengue" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDDis1_tier3=="Encephalitis" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDDis1_tier3=="Yellow fever" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDDis1_tier3=="Other neglected tropical diseases" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C52" if GBDDis1_tier3=="Cardiovascular and circulatory diseases" & [strpos(lower(Abstract),"rehabilitation program")|strpos(lower(Abstract),"rehab program")|strpos(lower(Abstract),"rehabilitative")]
replace DCP3="C52" if GBDDis1_tier3=="Chronic respiratory diseases" & [strpos(lower(Abstract),"rehabilitation program")|strpos(lower(Abstract),"rehab program")|strpos(lower(Abstract),"rehabilitative")]
replace DCP3="C56" if strpos(lower(Abstract),"wheelchair") & [strpos(lower(Abstract),"pressure area prevention")|strpos(lower(Abstract),"supportive seat")]
replace DCP3="FLH11" if GBDDis1_tier1=="Communicable maternal, neonatal, and nutritional disorders" & strpos(lower(Abstract),"child") & strpos(lower(Abstract),"full supportive care")
replace DCP3="FLH2" if [GBDDis1_tier2=="Maternal disorders"|InterventionMaternalNeonatalCa==1] & [strpos(lower(Abstract),"post-term")|strpos(lower(Abstract),"post term")] & [strpos(lower(Abstract),"induction")|strpos(lower(Abstract),"induce")]
replace DCP3="H36" if GBDDis1_tier1=="Injuries" & [strpos(lower(Abstract),"fracture reduction")|strpos(lower(Abstract),"external fixator")|strpos(lower(Abstract),"traction for fracture")]
replace DCP3="FLH53" if strpos(lower(Abstract),"swallowing dysfunction")
replace DCP3="FLH54" if [strpos(lower(Abstract),"prosthetic")|strpos(lower(Abstract),"orthotics")|strpos(lower(Abstract),"splint")] & [strpos(lower(Abstract),"fabrication")|strpos(lower(Abstract),"fitting")|strpos(lower(Abstract),"training")]
replace DCP3="HC3" if [GBDDis1_tier2=="Maternal disorders"|GBDDis1_tier2=="Neonatal disorders"|InterventionMaternalNeonatalCa==1] & [strpos(lower(Abstract),"preterm")|strpos(lower(Abstract),"pre-term")|strpos(lower(Abstract),"premature")] & strpos(lower(Abstract),"rupture") & strpos(lower(Abstract),"membrane")
replace DCP3="HC32" if [strpos(lower(Abstract),"insecticide-treated net")|strpos(lower(Abstract),"insecticide treated net")] & [strpos(lower(Abstract),"children")|strpos(lower(Abstract),"pregnant")]
replace DCP3="HC54" if [GBDDis1_tier1=="Injuries"|GBDDis1_tier2=="Musculoskeletal disorders"] & strpos(lower(Abstract),"exercise program")
replace DCP3="HC19" if [GBDDis1_tier4=="Acute hepatitis B"|GBDDis1_tier4=="Acute hepatitis C"] & InterventionCareDelivery==1
replace DCP3="HC19" if [GBDDis1_tier3=="Cirrhosis of the liver secondary to hepatitis B"|GBDDis1_tier3=="Cirrhosis of the liver secondary to hepatitis C"] & InterventionCareDelivery==1
replace DCP3="HC19" if [GBDDis1_tier4=="Liver cancer secondary to hepatitis B"|GBDDis1_tier4=="Liver cancer secondary to hepatitis B"] & InterventionCareDelivery==1
replace DCP3="HC62" if GBDDis1_tier1=="Injuries" & strpos(lower(Abstract),"suturing laceration")
replace DCP3="P1" if [GBDDis1_tier3=="Sexually transmitted diseases excluding HIV"|GBDDis1_tier3=="HIV/AIDS"] & InterventionHealthEducationOrBe==1 & [strpos(lower(Abstract),"asolescent")|strpos(lower(Abstract),"teen")] & strpos(lower(Abstract),"Media")
replace DCP3="HC23" if [GBDDis1_tier3=="Sexually transmitted diseases excluding HIV"|GBDDis1_tier3=="HIV/AIDS"] & [InterventionDiagnostic==1|InterventionScreening==1] & InterventionPsychosocial==1
replace DCP3="HC23" if [GBDDis1_tier3=="Cirrhosis of the liver secondary to hepatitis B"|GBDDis1_tier3=="Cirrhosis of the liver secondary to hepatitis C"] & [InterventionDiagnostic==1|InterventionScreening==1] & InterventionPsychosocial==1
replace DCP3="HC23" if [GBDDis1_tier4=="Acute hepatitis B"|GBDDis1_tier4=="Acute hepatitis C"] & [InterventionDiagnostic==1|InterventionScreening==1] & InterventionPsychosocial==1
replace DCP3="HC23" if [GBDDis1_tier4=="Liver cancer secondary to hepatitis B"|GBDDis1_tier4=="Liver cancer secondary to hepatitis B"] & [InterventionDiagnostic==1|InterventionScreening==1] & InterventionPsychosocial==1


*create final dataset
keep Abstract DCP3 Country_* SuperRegion_* Sponsorship* Intervention* Prevention* GBDDis1_tier2 WBIncome_* PubYear ArticleID PubMedID 
drop InterventionOtherText SponsorshipPharmOrDeviceCoName SponsorshipOtherText

export excel using "G:\Projects\CEA vs. GBD\3. Analysis\1. Data Cleaning\ICD_DCP3_Mapping_GHCEA_updated.xlsx", firstrow(variables) nolabel replace
