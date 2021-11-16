clear all

import excel "G:\Projects\CEA Registry\2. CEA Registry Datasets\Excel Data - DO NOT EDIT\Methods 2020 10 04", sheet("Methods") firstrow

drop if PubMedID ==(.)

gen Country_Afghanistan =0
gen Country_Albania=0
gen Country_Algeria =0
gen Country_AmericanSamoa = 0
gen Country_Andorra =0
gen Country_Angola =0
gen Country_AntiguaandBarbuda =0
gen Country_Argentina =0
gen Country_Armenia =0
gen Country_Aruba =0
gen Country_Australia =0
gen Country_Austria =0
gen Country_Azerbaijan =0
gen Country_Bahamas =0
gen Country_Bahrain =0
gen Country_Bangladesh =0
gen Country_Barbados =0
gen Country_Belarus =0
gen Country_Belgium =0
gen Country_Belize =0
gen Country_Benin =0
gen Country_Bermuda =0
gen Country_Bhutan =0
gen Country_Bolivia =0
gen Country_BosniaandHerzegovina =0
gen Country_Botswana =0
gen Country_Brazil =0
gen Country_BritishVirginIslands =0
gen Country_Brunei =0
gen Country_Bulgaria =0
gen Country_BurkinaFaso =0
gen Country_Burundi =0
gen Country_CaboVerde =0
gen Country_Cambodia =0
gen Country_Cameroon =0
gen Country_Canada =0
gen Country_CaymanIslands =0
gen Country_CentralAfricanRepublic =0
gen Country_Chad =0
gen Country_ChannelIslands =0
gen Country_Chile =0
gen Country_China =0
gen Country_Colombia =0
gen Country_Comoros =0
gen Country_CongoDemRep =0
gen Country_CongoRep =0
gen Country_CostaRica =0
gen Country_CotedIvoire =0
gen Country_Croatia =0
gen Country_Cuba =0
gen Country_Curaco =0
gen Country_Cyprus =0
gen Country_CzechRepublic =0
gen Country_Denmark =0
gen Country_Djibouti =0
gen Country_Dominica =0
gen Country_DominicanRepublic =0
gen Country_Ecuador =0
gen Country_EgyptArabRep =0
gen Country_ElSalvador =0
gen Country_EquatorialGuinea =0
gen Country_Eritrea =0
gen Country_Estonia =0
gen Country_Ethiopia =0
gen Country_FaroeIslands =0
gen Country_Fiji =0
gen Country_Finland =0
gen Country_France =0
gen Country_FrenchPolynesia =0
gen Country_Gabon =0
gen Country_GambiaThe =0
gen Country_Georgia =0
gen Country_Germany =0
gen Country_Ghana =0
gen Country_Gibraltar =0
gen Country_Greece =0
gen Country_Greenland =0
gen Country_Grenada =0
gen Country_Guam =0
gen Country_Guatemala =0
gen Country_Guinea =0
gen Country_GuineaBissau =0
gen Country_Guyana =0
gen Country_Haiti =0
gen Country_Honduras =0
gen Country_HongKongSARChina =0
gen Country_Hungary =0
gen Country_Iceland =0
gen Country_India =0
gen Country_Indonesia =0
gen Country_IranIslamicRep =0
gen Country_Iraq =0
gen Country_Ireland =0
gen Country_IsleofMan =0
gen Country_Israel =0
gen Country_Italy =0
gen Country_Jamaica =0
gen Country_Japan =0
gen Country_Jordan =0
gen Country_Kazakhstan =0
gen Country_Kenya =0
gen Country_Kiribati =0
gen Country_KoreaDemPeoplesRep =0
gen Country_KoreaRep =0
gen Country_Kosovo =0
gen Country_Kuwait =0
gen Country_KyrgyzRepublic =0
gen Country_LaoPDR =0
gen Country_Latvia =0
gen Country_Lebanon =0
gen Country_Lesotho =0
gen Country_Liberia =0
gen Country_Libya =0
gen Country_Liechtenstein =0
gen Country_Lithuania =0
gen Country_Luxembourg =0
gen Country_MacaoSARChina =0
gen Country_MacedoniaFYR =0
gen Country_Madagascar =0
gen Country_Malawi =0
gen Country_Malaysia =0
gen Country_Maldives =0
gen Country_Mali =0
gen Country_Malta =0
gen Country_MarshallIslands =0
gen Country_Mauritania =0
gen Country_Mauritius =0
gen Country_Mexico =0
gen Country_MicronesiaFedSts =0
gen Country_Moldova =0
gen Country_Monaco =0
gen Country_Mongolia =0
gen Country_Montenegro =0
gen Country_Morocco =0
gen Country_Mozambique =0
gen Country_Myanmar =0
gen Country_Namibia =0
gen Country_Nauru =0
gen Country_Nepal =0
gen Country_Netherlands =0
gen Country_NewCaledonia =0
gen Country_NewZealand =0
gen Country_Nicaragua =0
gen Country_Niger =0
gen Country_Nigeria =0
gen Country_NorthernMarianaIslands =0
gen Country_Norway =0
gen Country_Oman =0
gen Country_Pakistan =0
gen Country_Palau =0
gen Country_Panama =0
gen Country_PapuaNewGuinea =0
gen Country_Paraguay =0
gen Country_Peru =0
gen Country_Philippines =0
gen Country_Poland =0
gen Country_Portugal =0
gen Country_PuertoRico =0
gen Country_Qatar =0
gen Country_Romania =0
gen Country_RussianFederation =0
gen Country_Rwanda =0
gen Country_Samoa =0
gen Country_SanMarino =0
gen Country_SaoTomeandPrincipe =0
gen Country_SaudiArabia =0
gen Country_Senegal =0
gen Country_Serbia =0
gen Country_Seychelles =0
gen Country_SierraLeone =0
gen Country_Singapore =0
gen Country_SintMaartenDutch =0
gen Country_SlovakRepublic =0
gen Country_Slovenia =0
gen Country_SolomonIslands =0
gen Country_Somalia =0
gen Country_SouthAfrica =0
gen Country_SouthSudan =0
gen Country_Spain =0
gen Country_SriLanka =0
gen Country_StKittsandNevis =0
gen Country_StLucia =0
gen Country_StMartinFrench =0
gen Country_StVincentandtheGrenadine =0
gen Country_Sudan =0
gen Country_Suriname =0
gen Country_Swaziland =0
gen Country_Sweden =0
gen Country_Switzerland =0
gen Country_SyrianArabRepublic =0
gen Country_TaiwanChina =0
gen Country_Tajikistan =0
gen Country_Tanzania =0
gen Country_Thailand =0
gen Country_TimorLeste =0
gen Country_Togo =0
gen Country_Tonga =0
gen Country_TrinidadandTobago =0
gen Country_Tunisia =0
gen Country_Turkey =0
gen Country_Turkmenistan =0
gen Country_TurksandCaicosIslands =0
gen Country_Tuvalu =0
gen Country_Uganda =0
gen Country_Ukraine =0
gen Country_UnitedArabEmirates =0
gen Country_UnitedKingdom =0
gen Country_UnitedStates =0
gen Country_Uruguay =0
gen Country_Uzbekistan =0
gen Country_Vanuatu =0
gen Country_VenezuelaRB =0
gen Country_Vietnam =0
gen Country_VirginIslandsUS =0
gen Country_WestBankandGaza =0
gen Country_YemenRep =0
gen Country_Zambia =0
gen Country_Zimbabwe =0
gen Country_CookIslands =0
gen Country_Niue =0
gen Country_WallisandFutuna =0
gen Country_NA =0
gen Country_International = 0

replace Country_Afghanistan = 1 if Country== "Afghanistan" |Country2=="Afghanistan" |Country3=="Afghanistan" |Country4=="Afghanistan" |Country5=="Afghanistan" |Country6=="Afghanistan"
replace Country_Albania= 1 if Country== "Albania" |Country2=="Albania" |Country3=="Albania" |Country4=="Albania" |Country5=="Albania" |Country6=="Albania"
replace Country_Algeria = 1 if Country== "Algeria" |Country2=="Algeria" |Country3=="Algeria" |Country4=="Algeria" |Country5=="Algeria" |Country6=="Algeria"
replace Country_AmericanSamoa = 1 if Country== "American Samoa" |Country2=="American Samoa" |Country3=="American Samoa" |Country4=="American Samoa" |Country5=="American Samoa" |Country6=="American Samoa"
replace Country_Andorra = 1 if Country== "Andorra" |Country2=="Andorra" |Country3=="Andorra" |Country4=="Andorra" |Country5=="Andorra" |Country6=="Andorra"
replace Country_Angola = 1 if Country== "Angola" |Country2=="Angola" |Country3=="Angola" |Country4=="Angola" |Country5=="Angola" |Country6=="Angola"
replace Country_AntiguaandBarbuda = 1 if Country== "Antigua and Barbuda" |Country2=="Antigua and Barbuda" |Country3=="Antigua and Barbuda" |Country4=="Antigua and Barbuda" |Country5=="Antigua and Barbuda" |Country6=="Antigua and Barbuda"
replace Country_Argentina = 1 if Country== "Argentina" |Country2=="Argentina" |Country3=="Argentina" |Country4=="Argentina" |Country5=="Argentina" |Country6=="Argentina"
replace Country_Armenia = 1 if Country== "Armenia" |Country2=="Armenia" |Country3=="Armenia" |Country4=="Armenia" |Country5=="Armenia" |Country6=="Armenia"
replace Country_Aruba = 1 if Country== "Aruba" |Country2=="Aruba" |Country3=="Aruba" |Country4=="Aruba" |Country5=="Aruba" |Country6=="Aruba"
replace Country_Australia = 1 if Country== "Australia" |Country2=="Australia" |Country3=="Australia" |Country4=="Australia" |Country5=="Australia" |Country6=="Australia"
replace Country_Austria = 1 if Country== "Austria" |Country2=="Austria" |Country3=="Austria" |Country4=="Austria" |Country5=="Austria" |Country6=="Austria"
replace Country_Azerbaijan = 1 if Country== "Azerbaijan" |Country2=="Azerbaijan" |Country3=="Azerbaijan" |Country4=="Azerbaijan" |Country5=="Azerbaijan" |Country6=="Azerbaijan"
replace Country_Bahamas = 1 if Country== "Bahamas" |Country2=="Bahamas" |Country3=="Bahamas" |Country4=="Bahamas" |Country5=="Bahamas" |Country6=="Bahamas"
replace Country_Bahrain = 1 if Country== "Bahrain" |Country2=="Bahrain" |Country3=="Bahrain" |Country4=="Bahrain" |Country5=="Bahrain" |Country6=="Bahrain"
replace Country_Bangladesh = 1 if Country== "Bangladesh" |Country2=="Bangladesh" |Country3=="Bangladesh" |Country4=="Bangladesh" |Country5=="Bangladesh" |Country6=="Bangladesh"
replace Country_Barbados = 1 if Country== "Barbados" |Country2=="Barbados" |Country3=="Barbados" |Country4=="Barbados" |Country5=="Barbados" |Country6=="Barbados"
replace Country_Belarus = 1 if Country== "Belarus" |Country2=="Belarus" |Country3=="Belarus" |Country4=="Belarus" |Country5=="Belarus" |Country6=="Belarus"
replace Country_Belgium = 1 if Country== "Belgium" |Country2=="Belgium" |Country3=="Belgium" |Country4=="Belgium" |Country5=="Belgium" |Country6=="Belgium"
replace Country_Belize = 1 if Country== "Belize" |Country2=="Belize" |Country3=="Belize" |Country4=="Belize" |Country5=="Belize" |Country6=="Belize"
replace Country_Benin = 1 if Country== "Benin" |Country2=="Benin" |Country3=="Benin" |Country4=="Benin" |Country5=="Benin" |Country6=="Benin"
replace Country_Bermuda = 1 if Country== "Bermuda" |Country2=="Bermuda" |Country3=="Bermuda" |Country4=="Bermuda" |Country5=="Bermuda" |Country6=="Bermuda"
replace Country_Bhutan = 1 if Country== "Bhutan" |Country2=="Bhutan" |Country3=="Bhutan" |Country4=="Bhutan" |Country5=="Bhutan" |Country6=="Bhutan"
replace Country_Bolivia = 1 if Country== "Bolivia" |Country2=="Bolivia" |Country3=="Bolivia" |Country4=="Bolivia" |Country5=="Bolivia" |Country6=="Bolivia"
replace Country_BosniaandHerzegovina = 1 if Country== "Bosnia and Herzegovina" |Country2=="Bosnia and Herzegovina" |Country3=="Bosnia and Herzegovina" |Country4=="Bosnia and Herzegovina" |Country5=="Bosnia and Herzegovina" |Country6=="Bosnia and Herzegovina"
replace Country_Botswana = 1 if Country== "Botswana" |Country2=="Botswana" |Country3=="Botswana" |Country4=="Botswana" |Country5=="Botswana" |Country6=="Botswana"
replace Country_Brazil = 1 if Country== "Brazil" |Country2=="Brazil" |Country3=="Brazil" |Country4=="Brazil" |Country5=="Brazil" |Country6=="Brazil"
replace Country_BritishVirginIslands = 1 if Country== "British Virgin Islands" |Country2=="British Virgin Islands" |Country3=="British Virgin Islands" |Country4=="British Virgin Islands" |Country5=="British Virgin Islands" |Country6=="British Virgin Islands"
replace Country_Brunei = 1 if Country== "Brunei" |Country2=="Brunei" |Country3=="Brunei" |Country4=="Brunei" |Country5=="Brunei" |Country6=="Brunei"
replace Country_Bulgaria = 1 if Country== "Bulgaria" |Country2=="Bulgaria" |Country3=="Bulgaria" |Country4=="Bulgaria" |Country5=="Bulgaria" |Country6=="Bulgaria"
replace Country_BurkinaFaso = 1 if Country== "Burkina Faso" |Country2=="Burkina Faso" |Country3=="Burkina Faso" |Country4=="Burkina Faso" |Country5=="Burkina Faso" |Country6=="Burkina Faso"
replace Country_Burundi = 1 if Country== "Burundi" |Country2=="Burundi" |Country3=="Burundi" |Country4=="Burundi" |Country5=="Burundi" |Country6=="Burundi"
replace Country_CaboVerde = 1 if Country== "Cabo Verde" |Country2=="Cabo Verde" |Country3=="Cabo Verde" |Country4=="Cabo Verde" |Country5=="Cabo Verde" |Country6=="Cabo Verde"
replace Country_Cambodia = 1 if Country== "Cambodia" |Country2=="Cambodia" |Country3=="Cambodia" |Country4=="Cambodia" |Country5=="Cambodia" |Country6=="Cambodia"
replace Country_Cameroon = 1 if Country== "Cameroon" |Country2=="Cameroon" |Country3=="Cameroon" |Country4=="Cameroon" |Country5=="Cameroon" |Country6=="Cameroon"
replace Country_Canada = 1 if Country== "Canada" |Country2=="Canada" |Country3=="Canada" |Country4=="Canada" |Country5=="Canada" |Country6=="Canada"
replace Country_CaymanIslands = 1 if Country== "Cayman Islands" |Country2=="Cayman Islands" |Country3=="Cayman Islands" |Country4=="Cayman Islands" |Country5=="Cayman Islands" |Country6=="Cayman Islands"
replace Country_CentralAfricanRepublic = 1 if Country== "Central African Republic" |Country2=="Central African Republic" |Country3=="Central African Republic" |Country4=="Central African Republic" |Country5=="Central African Republic" |Country6=="Central African Republic"
replace Country_Chad = 1 if Country== "Chad" |Country2=="Chad" |Country3=="Chad" |Country4=="Chad" |Country5=="Chad" |Country6=="Chad"
replace Country_ChannelIslands = 1 if Country== "Channel Islands" |Country2=="Channel Islands" |Country3=="Channel Islands" |Country4=="Channel Islands" |Country5=="Channel Islands" |Country6=="Channel Islands"
replace Country_Chile = 1 if Country== "Chile" |Country2=="Chile" |Country3=="Chile" |Country4=="Chile" |Country5=="Chile" |Country6=="Chile"
replace Country_China = 1 if Country== "China" |Country2=="China" |Country3=="China" |Country4=="China" |Country5=="China" |Country6=="China"
replace Country_Colombia = 1 if Country== "Colombia" |Country2=="Colombia" |Country3=="Colombia" |Country4=="Colombia" |Country5=="Colombia" |Country6=="Colombia"
replace Country_Comoros = 1 if Country== "Comoros" |Country2=="Comoros" |Country3=="Comoros" |Country4=="Comoros" |Country5=="Comoros" |Country6=="Comoros"
replace Country_CongoDemRep = 1 if Country== "CongoDemRep" |Country2=="CongoDemRep" |Country3=="CongoDemRep" |Country4=="CongoDemRep" |Country5=="CongoDemRep" |Country6=="CongoDemRep"
replace Country_CongoRep = 1 if Country== "CongoRep" |Country2=="CongoRep" |Country3=="CongoRep" |Country4=="CongoRep" |Country5=="CongoRep" |Country6=="CongoRep"
replace Country_CostaRica = 1 if Country== "Costa Rica" |Country2=="Costa Rica" |Country3=="Costa Rica" |Country4=="Costa Rica" |Country5=="Costa Rica" |Country6=="Costa Rica"
replace Country_CotedIvoire = 1 if Country== "Coted Ivoire" |Country2=="Coted Ivoire" |Country3=="Coted Ivoire" |Country4=="Coted Ivoire" |Country5=="Coted Ivoire" |Country6=="Coted Ivoire"
replace Country_Croatia = 1 if Country== "Croatia" |Country2=="Croatia" |Country3=="Croatia" |Country4=="Croatia" |Country5=="Croatia" |Country6=="Croatia"
replace Country_Cuba = 1 if Country== "Cuba" |Country2=="Cuba" |Country3=="Cuba" |Country4=="Cuba" |Country5=="Cuba" |Country6=="Cuba"
replace Country_Curaco = 1 if Country== "Curaco" |Country2=="Curaco" |Country3=="Curaco" |Country4=="Curaco" |Country5=="Curaco" |Country6=="Curaco"
replace Country_Cyprus = 1 if Country== "Cyprus" |Country2=="Cyprus" |Country3=="Cyprus" |Country4=="Cyprus" |Country5=="Cyprus" |Country6=="Cyprus"
replace Country_CzechRepublic = 1 if Country== "Czech Republic" |Country2=="Czech Republic" |Country3=="Czech Republic" |Country4=="Czech Republic" |Country5=="Czech Republic" |Country6=="Czech Republic"
replace Country_Denmark = 1 if Country== "Denmark" |Country2=="Denmark" |Country3=="Denmark" |Country4=="Denmark" |Country5=="Denmark" |Country6=="Denmark"
replace Country_Djibouti = 1 if Country== "Djibouti" |Country2=="Djibouti" |Country3=="Djibouti" |Country4=="Djibouti" |Country5=="Djibouti" |Country6=="Djibouti"
replace Country_Dominica = 1 if Country== "Dominica" |Country2=="Dominica" |Country3=="Dominica" |Country4=="Dominica" |Country5=="Dominica" |Country6=="Dominica"
replace Country_DominicanRepublic = 1 if Country== "Dominican Republic" |Country2=="Dominican Republic" |Country3=="Dominican Republic" |Country4=="Dominican Republic" |Country5=="Dominican Republic" |Country6=="Dominican Republic"
replace Country_Ecuador = 1 if Country== "Ecuador" |Country2=="Ecuador" |Country3=="Ecuador" |Country4=="Ecuador" |Country5=="Ecuador" |Country6=="Ecuador"
replace Country_EgyptArabRep = 1 if Country== "Egypt" |Country2=="Egypt" |Country3=="Egypt" |Country4=="Egypt" |Country5=="Egypt" |Country6=="Egypt"
replace Country_ElSalvador = 1 if Country== "El Salvador" |Country2=="El Salvador" |Country3=="El Salvador" |Country4=="El Salvador" |Country5=="El Salvador" |Country6=="El Salvador"
replace Country_EquatorialGuinea = 1 if Country== "Equatorial Guinea" |Country2=="Equatorial Guinea" |Country3=="Equatorial Guinea" |Country4=="Equatorial Guinea" |Country5=="Equatorial Guinea" |Country6=="Equatorial Guinea"
replace Country_Eritrea = 1 if Country== "Eritrea" |Country2=="Eritrea" |Country3=="Eritrea" |Country4=="Eritrea" |Country5=="Eritrea" |Country6=="Eritrea"
replace Country_Estonia = 1 if Country== "Estonia" |Country2=="Estonia" |Country3=="Estonia" |Country4=="Estonia" |Country5=="Estonia" |Country6=="Estonia"
replace Country_Ethiopia = 1 if Country== "Ethiopia" |Country2=="Ethiopia" |Country3=="Ethiopia" |Country4=="Ethiopia" |Country5=="Ethiopia" |Country6=="Ethiopia"
replace Country_FaroeIslands = 1 if Country== "Faroe Islands" |Country2=="Faroe Islands" |Country3=="Faroe Islands" |Country4=="Faroe Islands" |Country5=="Faroe Islands" |Country6=="Faroe Islands"
replace Country_Fiji = 1 if Country== "Fiji" |Country2=="Fiji" |Country3=="Fiji" |Country4=="Fiji" |Country5=="Fiji" |Country6=="Fiji"
replace Country_Finland = 1 if Country== "Finland" |Country2=="Finland" |Country3=="Finland" |Country4=="Finland" |Country5=="Finland" |Country6=="Finland"
replace Country_France = 1 if Country== "France" |Country2=="France" |Country3=="France" |Country4=="France" |Country5=="France" |Country6=="France"
replace Country_FrenchPolynesia = 1 if Country== "French Polynesia" |Country2=="French Polynesia" |Country3=="French Polynesia" |Country4=="French Polynesia" |Country5=="French Polynesia" |Country6=="French Polynesia"
replace Country_Gabon = 1 if Country== "Gabon" |Country2=="Gabon" |Country3=="Gabon" |Country4=="Gabon" |Country5=="Gabon" |Country6=="Gabon"
replace Country_GambiaThe = 1 if Country== "The Gambia" |Country2=="The Gambia" |Country3=="The Gambia" |Country4=="The Gambia" |Country5=="The Gambia" |Country6=="The Gambia"
replace Country_Georgia = 1 if Country== "Georgia" |Country2=="Georgia" |Country3=="Georgia" |Country4=="Georgia" |Country5=="Georgia" |Country6=="Georgia"
replace Country_Germany = 1 if Country== "Germany" |Country2=="Germany" |Country3=="Germany" |Country4=="Germany" |Country5=="Germany" |Country6=="Germany"
replace Country_Ghana = 1 if Country== "Ghana" |Country2=="Ghana" |Country3=="Ghana" |Country4=="Ghana" |Country5=="Ghana" |Country6=="Ghana"
replace Country_Gibraltar = 1 if Country== "Gibraltar" |Country2=="Gibraltar" |Country3=="Gibraltar" |Country4=="Gibraltar" |Country5=="Gibraltar" |Country6=="Gibraltar"
replace Country_Greece = 1 if Country== "Greece" |Country2=="Greece" |Country3=="Greece" |Country4=="Greece" |Country5=="Greece" |Country6=="Greece"
replace Country_Greenland = 1 if Country== "Greenland" |Country2=="Greenland" |Country3=="Greenland" |Country4=="Greenland" |Country5=="Greenland" |Country6=="Greenland"
replace Country_Grenada = 1 if Country== "Grenada" |Country2=="Grenada" |Country3=="Grenada" |Country4=="Grenada" |Country5=="Grenada" |Country6=="Grenada"
replace Country_Guam = 1 if Country== "Guam" |Country2=="Guam" |Country3=="Guam" |Country4=="Guam" |Country5=="Guam" |Country6=="Guam"
replace Country_Guatemala = 1 if Country== "Guatemala" |Country2=="Guatemala" |Country3=="Guatemala" |Country4=="Guatemala" |Country5=="Guatemala" |Country6=="Guatemala"
replace Country_Guinea = 1 if Country== "Guinea" |Country2=="Guinea" |Country3=="Guinea" |Country4=="Guinea" |Country5=="Guinea" |Country6=="Guinea"
replace Country_GuineaBissau = 1 if Country== "Guinea Bissau" |Country2=="Guinea Bissau" |Country3=="Guinea Bissau" |Country4=="Guinea Bissau" |Country5=="Guinea Bissau" |Country6=="Guinea Bissau"
replace Country_Guyana = 1 if Country== "Guyana" |Country2=="Guyana" |Country3=="Guyana" |Country4=="Guyana" |Country5=="Guyana" |Country6=="Guyana"
replace Country_Haiti = 1 if Country== "Haiti" |Country2=="Haiti" |Country3=="Haiti" |Country4=="Haiti" |Country5=="Haiti" |Country6=="Haiti"
replace Country_Honduras = 1 if Country== "Honduras" |Country2=="Honduras" |Country3=="Honduras" |Country4=="Honduras" |Country5=="Honduras" |Country6=="Honduras"
replace Country_HongKongSARChina = 1 if Country== "Hong Kong" |Country2=="Hong Kong" |Country3=="Hong Kong" |Country4=="Hong Kong" |Country5=="Hong Kong" |Country6=="Hong Kong"
replace Country_Hungary = 1 if Country== "Hungary" |Country2=="Hungary" |Country3=="Hungary" |Country4=="Hungary" |Country5=="Hungary" |Country6=="Hungary"
replace Country_Iceland = 1 if Country== "Iceland" |Country2=="Iceland" |Country3=="Iceland" |Country4=="Iceland" |Country5=="Iceland" |Country6=="Iceland"
replace Country_India = 1 if Country== "India" |Country2=="India" |Country3=="India" |Country4=="India" |Country5=="India" |Country6=="India"
replace Country_Indonesia = 1 if Country== "Indonesia" |Country2=="Indonesia" |Country3=="Indonesia" |Country4=="Indonesia" |Country5=="Indonesia" |Country6=="Indonesia"
replace Country_IranIslamicRep = 1 if Country== "Iran" |Country2=="Iran" |Country3=="Iran" |Country4=="Iran" |Country5=="Iran" |Country6=="Iran"
replace Country_Iraq = 1 if Country== "Iraq" |Country2=="Iraq" |Country3=="Iraq" |Country4=="Iraq" |Country5=="Iraq" |Country6=="Iraq"
replace Country_Ireland = 1 if Country== "Ireland" |Country2=="Ireland" |Country3=="Ireland" |Country4=="Ireland" |Country5=="Ireland" |Country6=="Ireland"
replace Country_IsleofMan = 1 if Country== "Isle of Man" |Country2=="Isle of Man" |Country3=="Isle of Man" |Country4=="Isle of Man" |Country5=="Isle of Man" |Country6=="Isle of Man"
replace Country_Israel = 1 if Country== "Israel" |Country2=="Israel" |Country3=="Israel" |Country4=="Israel" |Country5=="Israel" |Country6=="Israel"
replace Country_Italy = 1 if Country== "Italy" |Country2=="Italy" |Country3=="Italy" |Country4=="Italy" |Country5=="Italy" |Country6=="Italy"
replace Country_Jamaica = 1 if Country== "Jamaica" |Country2=="Jamaica" |Country3=="Jamaica" |Country4=="Jamaica" |Country5=="Jamaica" |Country6=="Jamaica"
replace Country_Japan = 1 if Country== "Japan" |Country2=="Japan" |Country3=="Japan" |Country4=="Japan" |Country5=="Japan" |Country6=="Japan"
replace Country_Jordan = 1 if Country== "Jordan" |Country2=="Jordan" |Country3=="Jordan" |Country4=="Jordan" |Country5=="Jordan" |Country6=="Jordan"
replace Country_Kazakhstan = 1 if Country== "Kazakhstan" |Country2=="Kazakhstan" |Country3=="Kazakhstan" |Country4=="Kazakhstan" |Country5=="Kazakhstan" |Country6=="Kazakhstan"
replace Country_Kenya = 1 if Country== "Kenya" |Country2=="Kenya" |Country3=="Kenya" |Country4=="Kenya" |Country5=="Kenya" |Country6=="Kenya"
replace Country_Kiribati = 1 if Country== "Kiribati" |Country2=="Kiribati" |Country3=="Kiribati" |Country4=="Kiribati" |Country5=="Kiribati" |Country6=="Kiribati"
replace Country_KoreaDemPeoplesRep = 1 if Country== "North Korea" |Country2=="North Korea" |Country3=="North Korea" |Country4=="North Korea" |Country5=="North Korea" |Country6=="North Korea"
replace Country_KoreaRep = 1 if Country== "South Korea" |Country2=="South Korea" |Country3=="South Korea" |Country4=="South Korea" |Country5=="South Korea" |Country6=="South Korea"
replace Country_Kosovo = 1 if Country== "Kosovo" |Country2=="Kosovo" |Country3=="Kosovo" |Country4=="Kosovo" |Country5=="Kosovo" |Country6=="Kosovo"
replace Country_Kuwait = 1 if Country== "Kuwait" |Country2=="Kuwait" |Country3=="Kuwait" |Country4=="Kuwait" |Country5=="Kuwait" |Country6=="Kuwait"
replace Country_KyrgyzRepublic = 1 if Country== "Kyrgyz Republic" |Country2=="Kyrgyz Republic" |Country3=="Kyrgyz Republic" |Country4=="Kyrgyz Republic" |Country5=="Kyrgyz Republic" |Country6=="Kyrgyz Republic"
replace Country_LaoPDR = 1 if Country== "Laos" |Country2=="Laos" |Country3=="Laos" |Country4=="Laos" |Country5=="Laos" |Country6=="Laos"
replace Country_Latvia = 1 if Country== "Latvia" |Country2=="Latvia" |Country3=="Latvia" |Country4=="Latvia" |Country5=="Latvia" |Country6=="Latvia"
replace Country_Lebanon = 1 if Country== "Lebanon" |Country2=="Lebanon" |Country3=="Lebanon" |Country4=="Lebanon" |Country5=="Lebanon" |Country6=="Lebanon"
replace Country_Lesotho = 1 if Country== "Lesotho" |Country2=="Lesotho" |Country3=="Lesotho" |Country4=="Lesotho" |Country5=="Lesotho" |Country6=="Lesotho"
replace Country_Liberia = 1 if Country== "Liberia" |Country2=="Liberia" |Country3=="Liberia" |Country4=="Liberia" |Country5=="Liberia" |Country6=="Liberia"
replace Country_Libya = 1 if Country== "Libya" |Country2=="Libya" |Country3=="Libya" |Country4=="Libya" |Country5=="Libya" |Country6=="Libya"
replace Country_Liechtenstein= 1 if Country== "Liechtenstein" |Country2=="Liechtenstein" |Country3=="Liechtenstein" |Country4=="Liechtenstein" |Country5=="Liechtenstein" |Country6=="Liechtenstein"
replace Country_Lithuania = 1 if Country== "Lithuania" |Country2=="Lithuania" |Country3=="Lithuania" |Country4=="Lithuania" |Country5=="Lithuania" |Country6=="Lithuania"
replace Country_Luxembourg = 1 if Country== "Luxembourg" |Country2=="Luxembourg" |Country3=="Luxembourg" |Country4=="Luxembourg" |Country5=="Luxembourg" |Country6=="Luxembourg"
replace Country_MacaoSARChina = 1 if Country== "Macao" |Country2=="Macao" |Country3=="Macao" |Country4=="Macao" |Country5=="Macao" |Country6=="Macao"
replace Country_MacedoniaFYR = 1 if Country== "Macedonia" |Country2=="Macedonia" |Country3=="Macedonia" |Country4=="Macedonia" |Country5=="Macedonia" |Country6=="Macedonia"
replace Country_Madagascar = 1 if Country== "Madagascar" |Country2=="Madagascar" |Country3=="Madagascar" |Country4=="Madagascar" |Country5=="Madagascar" |Country6=="Madagascar"
replace Country_Malawi = 1 if Country== "Malawi" |Country2=="Malawi" |Country3=="Malawi" |Country4=="Malawi" |Country5=="Malawi" |Country6=="Malawi"
replace Country_Malaysia = 1 if Country== "Malaysia" |Country2=="Malaysia" |Country3=="Malaysia" |Country4=="Malaysia" |Country5=="Malaysia" |Country6=="Malaysia"
replace Country_Maldives = 1 if Country== "Maldives" |Country2=="Maldives" |Country3=="Maldives" |Country4=="Maldives" |Country5=="Maldives" |Country6=="Maldives"
replace Country_Mali = 1 if Country== "Mali" |Country2=="Mali" |Country3=="Mali" |Country4=="Mali" |Country5=="Mali" |Country6=="Mali"
replace Country_Malta = 1 if Country== "Malta" |Country2=="Malta" |Country3=="Malta" |Country4=="Malta" |Country5=="Malta" |Country6=="Malta"
replace Country_MarshallIslands = 1 if Country== "Marshall Islands" |Country2=="Marshall Islands" |Country3=="Marshall Islands" |Country4=="Marshall Islands" |Country5=="Marshall Islands" |Country6=="Marshall Islands"
replace Country_Mauritania = 1 if Country== "Mauritania" |Country2=="Mauritania" |Country3=="Mauritania" |Country4=="Mauritania" |Country5=="Mauritania" |Country6=="Mauritania"
replace Country_Mauritius = 1 if Country== "Mauritius" |Country2=="Mauritius" |Country3=="Mauritius" |Country4=="Mauritius" |Country5=="Mauritius" |Country6=="Mauritius"
replace Country_Mexico = 1 if Country== "Mexico" |Country2=="Mexico" |Country3=="Mexico" |Country4=="Mexico" |Country5=="Mexico" |Country6=="Mexico"
replace Country_MicronesiaFedSts = 1 if Country== "MicronesiaFedSts" |Country2=="MicronesiaFedSts" |Country3=="MicronesiaFedSts" |Country4=="MicronesiaFedSts" |Country5=="MicronesiaFedSts" |Country6=="MicronesiaFedSts"
replace Country_Moldova = 1 if Country== "Moldova" |Country2=="Moldova" |Country3=="Moldova" |Country4=="Moldova" |Country5=="Moldova" |Country6=="Moldova"
replace Country_Monaco = 1 if Country== "Monaco" |Country2=="Monaco" |Country3=="Monaco" |Country4=="Monaco" |Country5=="Monaco" |Country6=="Monaco"
replace Country_Mongolia = 1 if Country== "Mongolia" |Country2=="Mongolia" |Country3=="Mongolia" |Country4=="Mongolia" |Country5=="Mongolia" |Country6=="Mongolia"
replace Country_Montenegro = 1 if Country== "Montenegro" |Country2=="Montenegro" |Country3=="Montenegro" |Country4=="Montenegro" |Country5=="Montenegro" |Country6=="Montenegro"
replace Country_Morocco = 1 if Country== "Morocco" |Country2=="Morocco" |Country3=="Morocco" |Country4=="Morocco" |Country5=="Morocco" |Country6=="Morocco"
replace Country_Mozambique = 1 if Country== "Mozambique" |Country2=="Mozambique" |Country3=="Mozambique" |Country4=="Mozambique" |Country5=="Mozambique" |Country6=="Mozambique"
replace Country_Myanmar = 1 if Country== "Myanmar" |Country2=="Myanmar" |Country3=="Myanmar" |Country4=="Myanmar" |Country5=="Myanmar" |Country6=="Myanmar"
replace Country_Namibia = 1 if Country== "Namibia" |Country2=="Namibia" |Country3=="Namibia" |Country4=="Namibia" |Country5=="Namibia" |Country6=="Namibia"
replace Country_Nauru = 1 if Country== "Nauru" |Country2=="Nauru" |Country3=="Nauru" |Country4=="Nauru" |Country5=="Nauru" |Country6=="Nauru"
replace Country_Nepal = 1 if Country== "Nepal" |Country2=="Nepal" |Country3=="Nepal" |Country4=="Nepal" |Country5=="Nepal" |Country6=="Nepal"
replace Country_Netherlands = 1 if Country== "Netherlands" |Country2=="Netherlands" |Country3=="Netherlands" |Country4=="Netherlands" |Country5=="Netherlands" |Country6=="Netherlands"
replace Country_NewCaledonia = 1 if Country== "New Caledonia" |Country2=="New Caledonia" |Country3=="New Caledonia" |Country4=="New Caledonia" |Country5=="New Caledonia" |Country6=="New Caledonia"
replace Country_NewZealand = 1 if Country== "New Zealand" |Country2=="New Zealand" |Country3=="New Zealand" |Country4=="New Zealand" |Country5=="New Zealand" |Country6=="New Zealand"
replace Country_Nicaragua = 1 if Country== "Nicaragua" |Country2=="Nicaragua" |Country3=="Nicaragua" |Country4=="Nicaragua" |Country5=="Nicaragua" |Country6=="Nicaragua"
replace Country_Niger = 1 if Country== "Niger" |Country2=="Niger" |Country3=="Niger" |Country4=="Niger" |Country5=="Niger" |Country6=="Niger"
replace Country_Nigeria = 1 if Country== "Nigeria" |Country2=="Nigeria" |Country3=="Nigeria" |Country4=="Nigeria" |Country5=="Nigeria" |Country6=="Nigeria"
replace Country_NorthernMarianaIslands = 1 if Country== "Northern Mariana Islands" |Country2=="Northern Mariana Islands" |Country3=="Northern Mariana Islands" |Country4=="Northern Mariana Islands" |Country5=="Northern Mariana Islands" |Country6=="Northern Mariana Islands"
replace Country_Norway = 1 if Country== "Norway" |Country2=="Norway" |Country3=="Norway" |Country4=="Norway" |Country5=="Norway" |Country6=="Norway"
replace Country_Oman = 1 if Country== "Oman" |Country2=="Oman" |Country3=="Oman" |Country4=="Oman" |Country5=="Oman" |Country6=="Oman"
replace Country_Pakistan = 1 if Country== "Pakistan" |Country2=="Pakistan" |Country3=="Pakistan" |Country4=="Pakistan" |Country5=="Pakistan" |Country6=="Pakistan"
replace Country_Palau = 1 if Country== "Palau" |Country2=="Palau" |Country3=="Palau" |Country4=="Palau" |Country5=="Palau" |Country6=="Palau"
replace Country_Panama = 1 if Country== "Panama" |Country2=="Panama" |Country3=="Panama" |Country4=="Panama" |Country5=="Panama" |Country6=="Panama"
replace Country_PapuaNewGuinea = 1 if Country== "Papua New Guinea" |Country2=="Papua New Guinea" |Country3=="Papua New Guinea" |Country4=="Papua New Guinea" |Country5=="Papua New Guinea" |Country6=="Papua New Guinea"
replace Country_Paraguay = 1 if Country== "Paraguay" |Country2=="Paraguay" |Country3=="Paraguay" |Country4=="Paraguay" |Country5=="Paraguay" |Country6=="Paraguay"
replace Country_Peru = 1 if Country== "Peru" |Country2=="Peru" |Country3=="Peru" |Country4=="Peru" |Country5=="Peru" |Country6=="Peru"
replace Country_Philippines = 1 if Country== "Philippines" |Country2=="Philippines" |Country3=="Philippines" |Country4=="Philippines" |Country5=="Philippines" |Country6=="Philippines"
replace Country_Poland = 1 if Country== "Poland" |Country2=="Poland" |Country3=="Poland" |Country4=="Poland" |Country5=="Poland" |Country6=="Poland"
replace Country_Portugal = 1 if Country== "Portugal" |Country2=="Portugal" |Country3=="Portugal" |Country4=="Portugal" |Country5=="Portugal" |Country6=="Portugal"
replace Country_PuertoRico = 1 if Country== "Puerto Rico" |Country2=="Puerto Rico" |Country3=="Puerto Rico" |Country4=="Puerto Rico" |Country5=="Puerto Rico" |Country6=="Puerto Rico"
replace Country_Qatar = 1 if Country== "Qatar" |Country2=="Qatar" |Country3=="Qatar" |Country4=="Qatar" |Country5=="Qatar" |Country6=="Qatar"
replace Country_Romania = 1 if Country== "Romania" |Country2=="Romania" |Country3=="Romania" |Country4=="Romania" |Country5=="Romania" |Country6=="Romania"
replace Country_RussianFederation = 1 if Country== "Russia" |Country2=="Russia" |Country3=="Russia" |Country4=="Russia" |Country5=="Russia" |Country6=="Russia"
replace Country_Rwanda = 1 if Country== "Rwanda" |Country2=="Rwanda" |Country3=="Rwanda" |Country4=="Rwanda" |Country5=="Rwanda" |Country6=="Rwanda"
replace Country_Samoa = 1 if Country== "Samoa" |Country2=="Samoa" |Country3=="Samoa" |Country4=="Samoa" |Country5=="Samoa" |Country6=="Samoa"
replace Country_SanMarino = 1 if Country== "San Marino" |Country2=="San Marino" |Country3=="San Marino" |Country4=="San Marino" |Country5=="San Marino" |Country6=="San Marino"
replace Country_SaoTomeandPrincipe = 1 if Country== "SaoTomeandPrincipe" |Country2=="SaoTomeandPrincipe" |Country3=="SaoTomeandPrincipe" |Country4=="SaoTomeandPrincipe" |Country5=="SaoTomeandPrincipe" |Country6=="SaoTomeandPrincipe"
replace Country_SaudiArabia = 1 if Country== "Saudi Arabia" |Country2=="Saudi Arabia" |Country3=="Saudi Arabia" |Country4=="Saudi Arabia" |Country5=="Saudi Arabia" |Country6=="Saudi Arabia"
replace Country_Senegal = 1 if Country== "Senegal" |Country2=="Senegal" |Country3=="Senegal" |Country4=="Senegal" |Country5=="Senegal" |Country6=="Senegal"
replace Country_Serbia = 1 if Country== "Serbia" |Country2=="Serbia" |Country3=="Serbia" |Country4=="Serbia" |Country5=="Serbia" |Country6=="Serbia"
replace Country_Seychelles = 1 if Country== "Seychelles" |Country2=="Seychelles" |Country3=="Seychelles" |Country4=="Seychelles" |Country5=="Seychelles" |Country6=="Seychelles"
replace Country_SierraLeone = 1 if Country== "Sierra Leone" |Country2=="Sierra Leone" |Country3=="Sierra Leone" |Country4=="Sierra Leone" |Country5=="Sierra Leone" |Country6=="Sierra Leone"
replace Country_Singapore = 1 if Country== "Singapore" |Country2=="Singapore" |Country3=="Singapore" |Country4=="Singapore" |Country5=="Singapore" |Country6=="Singapore"
replace Country_SintMaartenDutch = 1 if Country== "Sint Maarten" |Country2=="Sint Maarten" |Country3=="Sint Maarten" |Country4=="Sint Maarten" |Country5=="Sint Maarten" |Country6=="Sint Maarten"
replace Country_SlovakRepublic = 1 if Country== "Slovakia" |Country2=="Slovakia" |Country3=="Slovakia" |Country4=="Slovakia" |Country5=="Slovakia" |Country6=="Slovakia"
replace Country_Slovenia = 1 if Country== "Slovenia" |Country2=="Slovenia" |Country3=="Slovenia" |Country4=="Slovenia" |Country5=="Slovenia" |Country6=="Slovenia"
replace Country_SolomonIslands = 1 if Country== "Solomon Islands" |Country2=="Solomon Islands" |Country3=="Solomon Islands" |Country4=="Solomon Islands" |Country5=="Solomon Islands" |Country6=="Solomon Islands"
replace Country_Somalia = 1 if Country== "Somalia" |Country2=="Somalia" |Country3=="Somalia" |Country4=="Somalia" |Country5=="Somalia" |Country6=="Somalia"
replace Country_SouthAfrica = 1 if Country== "South Africa" |Country2=="South Africa" |Country3=="South Africa" |Country4=="South Africa" |Country5=="South Africa" |Country6=="South Africa"
replace Country_SouthSudan = 1 if Country== "South Sudan" |Country2=="South Sudan" |Country3=="South Sudan" |Country4=="South Sudan" |Country5=="South Sudan" |Country6=="South Sudan"
replace Country_Spain = 1 if Country== "Spain" |Country2=="Spain" |Country3=="Spain" |Country4=="Spain" |Country5=="Spain" |Country6=="Spain"
replace Country_SriLanka = 1 if Country== "Sri Lanka" |Country2=="Sri Lanka" |Country3=="Sri Lanka" |Country4=="Sri Lanka" |Country5=="Sri Lanka" |Country6=="Sri Lanka"
replace Country_StKittsandNevis = 1 if Country== "St Kitts and Nevis" |Country2=="St Kitts and Nevis" |Country3=="St Kitts and Nevis" |Country4=="St Kitts and Nevis" |Country5=="St Kitts and Nevis" |Country6=="St Kitts and Nevis"
replace Country_StLucia = 1 if Country== "St Lucia" |Country2=="St Lucia" |Country3=="St Lucia" |Country4=="St Lucia" |Country5=="St Lucia" |Country6=="St Lucia"
replace Country_StMartinFrench = 1 if Country== "St Martin" |Country2=="St Martin" |Country3=="St Martin" |Country4=="St Martin" |Country5=="St Martin" |Country6=="St Martin"
replace Country_StVincentandtheGrenadine = 1 if Country== "StVincentandtheGrenadine" |Country2=="StVincentandtheGrenadine" |Country3=="StVincentandtheGrenadine" |Country4=="StVincentandtheGrenadine" |Country5=="StVincentandtheGrenadine" |Country6=="StVincentandtheGrenadine"
replace Country_Sudan = 1 if Country== "Sudan" |Country2=="Sudan" |Country3=="Sudan" |Country4=="Sudan" |Country5=="Sudan" |Country6=="Sudan"
replace Country_Suriname = 1 if Country== "Suriname" |Country2=="Suriname" |Country3=="Suriname" |Country4=="Suriname" |Country5=="Suriname" |Country6=="Suriname"
replace Country_Swaziland = 1 if Country== "Swaziland" |Country2=="Swaziland" |Country3=="Swaziland" |Country4=="Swaziland" |Country5=="Swaziland" |Country6=="Swaziland"
replace Country_Sweden = 1 if Country== "Sweden" |Country2=="Sweden" |Country3=="Sweden" |Country4=="Sweden" |Country5=="Sweden" |Country6=="Sweden"
replace Country_Switzerland = 1 if Country== "Switzerland" |Country2=="Switzerland" |Country3=="Switzerland" |Country4=="Switzerland" |Country5=="Switzerland" |Country6=="Switzerland"
replace Country_SyrianArabRepublic = 1 if Country== "Syria" |Country2=="Syria" |Country3=="Syria" |Country4=="Syria" |Country5=="Syria" |Country6=="Syria"
replace Country_TaiwanChina = 1 if Country== "Taiwan" |Country2=="Taiwan" |Country3=="Taiwan" |Country4=="Taiwan" |Country5=="Taiwan" |Country6=="Taiwan"
replace Country_Tajikistan = 1 if Country== "Tajikistan" |Country2=="Tajikistan" |Country3=="Tajikistan" |Country4=="Tajikistan" |Country5=="Tajikistan" |Country6=="Tajikistan"
replace Country_Tanzania = 1 if Country== "Tanzania" |Country2=="Tanzania" |Country3=="Tanzania" |Country4=="Tanzania" |Country5=="Tanzania" |Country6=="Tanzania"
replace Country_Thailand = 1 if Country== "Thailand" |Country2=="Thailand" |Country3=="Thailand" |Country4=="Thailand" |Country5=="Thailand" |Country6=="Thailand"
replace Country_TimorLeste = 1 if Country== "Timor Leste" |Country2=="Timor Leste" |Country3=="Timor Leste" |Country4=="Timor Leste" |Country5=="Timor Leste" |Country6=="Timor Leste"
replace Country_Togo = 1 if Country== "Togo" |Country2=="Togo" |Country3=="Togo" |Country4=="Togo" |Country5=="Togo" |Country6=="Togo"
replace Country_Tonga = 1 if Country== "Tonga" |Country2=="Tonga" |Country3=="Tonga" |Country4=="Tonga" |Country5=="Tonga" |Country6=="Tonga"
replace Country_TrinidadandTobago = 1 if Country== "Trinidad and Tobago" |Country2=="Trinidad and Tobago" |Country3=="Trinidad and Tobago" |Country4=="Trinidad and Tobago" |Country5=="Trinidad and Tobago" |Country6=="Trinidad and Tobago"
replace Country_Tunisia = 1 if Country== "Tunisia" |Country2=="Tunisia" |Country3=="Tunisia" |Country4=="Tunisia" |Country5=="Tunisia" |Country6=="Tunisia"
replace Country_Turkey = 1 if Country== "Turkey" |Country2=="Turkey" |Country3=="Turkey" |Country4=="Turkey" |Country5=="Turkey" |Country6=="Turkey"
replace Country_Turkmenistan = 1 if Country== "Turkmenistan" |Country2=="Turkmenistan" |Country3=="Turkmenistan" |Country4=="Turkmenistan" |Country5=="Turkmenistan" |Country6=="Turkmenistan"
replace Country_TurksandCaicosIslands = 1 if Country== "Turks and Caicos Islands" |Country2=="Turks and Caicos Islands" |Country3=="Turks and Caicos Islands" |Country4=="Turks and Caicos Islands" |Country5=="Turks and Caicos Islands" |Country6=="Turks and Caicos Islands"
replace Country_Tuvalu = 1 if Country== "Tuvalu" |Country2=="Tuvalu" |Country3=="Tuvalu" |Country4=="Tuvalu" |Country5=="Tuvalu" |Country6=="Tuvalu"
replace Country_Uganda = 1 if Country== "Uganda" |Country2=="Uganda" |Country3=="Uganda" |Country4=="Uganda" |Country5=="Uganda" |Country6=="Uganda"
replace Country_Ukraine = 1 if Country== "Ukraine" |Country2=="Ukraine" |Country3=="Ukraine" |Country4=="Ukraine" |Country5=="Ukraine" |Country6=="Ukraine"
replace Country_UnitedArabEmirates = 1 if Country== "United Arab Emirates" |Country2=="United Arab Emirates" |Country3=="United Arab Emirates" |Country4=="United Arab Emirates" |Country5=="United Arab Emirates" |Country6=="United Arab Emirates"
replace Country_UnitedKingdom = 1 if Country== "United Kingdom" |Country2=="United Kingdom" |Country3=="United Kingdom" |Country4=="United Kingdom" |Country5=="United Kingdom" |Country6=="United Kingdom"
replace Country_UnitedStates = 1 if Country== "United States" |Country2=="United States" |Country3=="United States" |Country4=="United States" |Country5=="United States" |Country6=="United States"
replace Country_Uruguay = 1 if Country== "Uruguay" |Country2=="Uruguay" |Country3=="Uruguay" |Country4=="Uruguay" |Country5=="Uruguay" |Country6=="Uruguay"
replace Country_Uzbekistan = 1 if Country== "Uzbekistan" |Country2=="Uzbekistan" |Country3=="Uzbekistan" |Country4=="Uzbekistan" |Country5=="Uzbekistan" |Country6=="Uzbekistan"
replace Country_Vanuatu = 1 if Country== "Vanuatu" |Country2=="Vanuatu" |Country3=="Vanuatu" |Country4=="Vanuatu" |Country5=="Vanuatu" |Country6=="Vanuatu"
replace Country_VenezuelaRB = 1 if Country== "Venezuela" |Country2=="Venezuela" |Country3=="Venezuela" |Country4=="Venezuela" |Country5=="Venezuela" |Country6=="Venezuela"
replace Country_Vietnam = 1 if Country== "Vietnam" |Country2=="Vietnam" |Country3=="Vietnam" |Country4=="Vietnam" |Country5=="Vietnam" |Country6=="Vietnam"
replace Country_WestBankandGaza = 1 if Country== "West Bank and Gaza" |Country2=="West Bank and Gaza" |Country3=="West Bank and Gaza" |Country4=="West Bank and Gaza" |Country5=="West Bank and Gaza" |Country6=="West Bank and Gaza"
replace Country_YemenRep = 1 if Country== "Yemen" |Country2=="Yemen" |Country3=="Yemen" |Country4=="Yemen" |Country5=="Yemen" |Country6=="Yemen"
replace Country_Zambia = 1 if Country== "Zambia" |Country2=="Zambia" |Country3=="Zambia" |Country4=="Zambia" |Country5=="Zambia" |Country6=="Zambia"
replace Country_Zimbabwe = 1 if Country== "Zimbabwe" |Country2=="Zimbabwe" |Country3=="Zimbabwe" |Country4=="Zimbabwe" |Country5=="Zimbabwe" |Country6=="Zimbabwe"

egen CountryCount=rowtotal(Country_*)
replace Country_NA = 1 if CountryCount ==0
replace Country_International = 1 if CountryCount == 221

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
replace SuperRegion_EuropeCentralAsia = 1 if Country_MacedoniaFYR == 1
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
replace SuperRegion_EuropeCentralAsia = 1 if Country_RussianFederation == 1
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
replace SuperRegion_LatinAmerica = 1 if Country_VenezuelaRB == 1
replace SuperRegion_LatinAmerica = 1 if Country_Brazil == 1
replace SuperRegion_LatinAmerica = 1 if Country_Paraguay == 1

replace SuperRegion_NorthAfrica = 1 if Country_Afghanistan == 1
replace SuperRegion_NorthAfrica = 1 if Country_Algeria == 1
replace SuperRegion_NorthAfrica = 1 if Country_Bahrain == 1
replace SuperRegion_NorthAfrica = 1 if Country_EgyptArabRep == 1
replace SuperRegion_NorthAfrica = 1 if Country_IranIslamicRep == 1
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
replace SuperRegion_NorthAfrica = 1 if Country_SyrianArabRepublic == 1
replace SuperRegion_NorthAfrica = 1 if Country_Tunisia == 1
replace SuperRegion_NorthAfrica = 1 if Country_Turkey == 1
replace SuperRegion_NorthAfrica = 1 if Country_UnitedArabEmirates == 1
replace SuperRegion_NorthAfrica = 1 if Country_YemenRep == 1

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
gen SuperRegion_NA = 0
replace SuperRegion_NA = 1 if SuperRegionCount == 0
gen SuperRegion_Multiple = 0
replace SuperRegion_Multiple = 1 if SuperRegion_SubSaharanAfrica + SuperRegion_SoutheastAsiaOceania + SuperRegion_SouthAsia + SuperRegion_NorthAfrica + SuperRegion_HighIncome + SuperRegion_EuropeCentralAsia + SuperRegion_LatinAmerica > 1


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
replace WBIncome_High = 1 if Country_Curaco == 1
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


egen PreventionStageCount=rowtotal(PreventionStage*)
gen PreventionStage_Collapsed = 0
replace PreventionStage_Collapsed = 1 if PreventionStage== 1
replace PreventionStage_Collapsed = 2 if PreventionStage2== 1
replace PreventionStage_Collapsed = 3 if PreventionStage3== 1
replace PreventionStage_Collapsed = 4 if PreventionStageCount>1


*Collapsing funder variables into Table 1 specified categories
gen SponsorshipOther2 = SponsorshipOther + SponsorshipProfMembOrg
drop SponsorshipOther SponsorshipProfMembOrg
rename SponsorshipOther2 SponsorshipOther


foreach var of varlist DisChapter1 DisCode1 DisChapter2 DisCode2 DisChapter3 DisCode3 DisChapter4 DisCode4 {
replace `var'="" if `var'=="NULL"
}

*Tier 1*
*Communicable Disease
gen strL GBDTier1="Communicable maternal, neonatal, and nutritional disorders" if DisCode1=="D50-D53: Nutritional anemias"
foreach a of var DisChapter1 {
replace GBDTier1="Communicable maternal, neonatal, and nutritional disorders" if inlist(DisChapter1,"I: Certain infectious and parasitic diseases (A00-B99)","XV: Pregnancy, childbirth and the puerperium (O00-O9A)",/*
*/"XVI: Certain conditions originating in the perinatal period (P00-P96)")|inlist(DisCode1,"E50-E64: Other nutritional deficiencies","E40-E46: Malnutrition","J00-J06: Acute upper respiratory infections",/*
*/"J09-J18: Influenza and pneumonia","J20-J22: Other acute lower respiratory infections","L00-L08: Infections of the skin and subcutaneous tissue","M00-M02: Infectious arthropathies")
}
*Non-Communicable Disease
foreach b of var DisChapter1 {
replace GBDTier1="Non-communicable diseases" if inlist(DisChapter1,"II: Neoplasms (C00-D48)","III: Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism (D50-D89)",/*
*/"IV: Endocrine, nutritional and metabolic diseases (E00-E89)","V: Mental, Behavioral and Neurodevelopmental disorders (F01-F99)","VI: Diseases of the nervous system (G00-G99)",/*
*/"VII: Diseases of the eye and adnexa (H00-H59)","VIII: Diseases of the ear and mastoid process (H60-H95)") & GBDTier1==""
}
foreach c of var DisChapter1 {
replace GBDTier1="Non-communicable diseases" if inlist(DisChapter1,"IX: Diseases of the circulatory system (I00-I99)","X: Diseases of the respiratory system (J00-J99)","XI: Diseases of the digestive system (K00-K95)",/*
*/"XII: Diseases of the skin and subcutaneous tissue (L00-L99)","XIII: Diseases of the musculoskeletal system and connective tissue (M00-M99)",/*
*/"XIV: Diseases of the genitourinary system (N00-N99)","XVII: Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)") & GBDTier1==""
}

*Injuries
replace GBDTier1="Injuries" if DisChapter1=="XIX: Injury, poisoning and certain other consequences of external causes (S00-T88)"
replace GBDTier1="Injuries" if DisChapter1=="XX: External causes of morbidity (V00-Y99)"

*Tier 2*
*Communicable Disease
gen strL GBDTier2="HIV/Aids and Tuberculosis" if DisCode1=="A15-A19: Tuberculosis"|DisCode1=="B20-B24: Human immunodeficiency virus [HIV] disease"
foreach d of var DisChapter1 {
replace GBDTier2="Diarrhea, lower respiratory infections, meningitis, and other common infectious diseases" if inlist(DisCode1,"A00-A09: Intestinal infectious diseases",/*
*/"A30-A49: Other bacterial diseases","B95-B97: Bacterial and viral infectious agents",/*
*/"G00-G09: Inflammatory diseases of the central nervous system","J00-J06: Acute upper respiratory infections","J09-J18: Influenza and pneumonia","J20-J22: Other acute lower respiratory infections")
}
foreach e of var DisChapter1 {
replace GBDTier2="Neglected tropical diseases and malaria" if inlist(DisCode1,"A70-A74: Other diseases caused by chlamydiae","A80-A89: Viral and prion infections of the central nervous system",/*
*/"A90-A99: Arthropod-borne viral fevers and viral hemorrhagic fevers","B50-B64: Protozoal diseases","B65-B83: Helminthiases")
}
replace GBDTier2="Maternal disorders" if DisChapter1=="XV: Pregnancy, childbirth and the puerperium (O00-O9A)"
replace GBDTier2="Neonatal disorders" if DisChapter1=="XVI: Certain conditions originating in the perinatal period (P00-P96)"
foreach f of var DisChapter1 {
replace GBDTier2="Nutritional deficiencies" if inlist(DisCode1,"D50-D53: Nutritional anemias","E40-E46: Malnutrition","E50-E64: Other nutritional deficiencies")
}
replace GBDTier2="Other communicable, maternal, neonatal, and nutritional disorders" if DisChapter1=="I: Certain infectious and parasitic diseases (A00-B99)" & DisCode1~=""
replace GBDTier2="Other communicable, maternal, neonatal, and nutritional disorders" if DisCode1=="L00-L08: Infections of the skin and subcutaneous tissue"
replace GBDTier2="Other communicable, maternal, neonatal, and nutritional disorders" if DisCode1=="M00-M02: Infectious arthropathies"

*Non-Commumicable
replace GBDTier2="Neoplasms" if DisChapter1=="II: Neoplasms (C00-D49)"
replace GBDTier2="Cardiovascular and circulatory diseases" if DisChapter1=="IX: Diseases of the circulatory system (I00-I99)"
replace GBDTier2="Chronic respiratory diseases" if DisChapter1=="X: Diseases of the respiratory system (J00-J99)" & DisCode1~=""
replace GBDTier2="Cirrhosis of the liver" if DisCode1=="K70-K77: Diseases of liver"
replace GBDTier2="Digestive diseases (except cirrhosis)" if DisChapter1=="XI: Diseases of the digestive system (K00-K95)" & DisCode1~="K70-K77: Diseases of liver"
replace GBDTier2="Neurological disorders" if DisChapter1=="VI: Diseases of the nervous system (G00-G99)"
replace GBDTier2="Mental and behavioral disorders" if DisChapter1=="V: Mental, Behavioral and Neurodevelopmental disorders (F01-F99)"
replace GBDTier2="Diabetes, urogenital, blood, and endocrine diseases" if DisChapter1=="III: Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism (D50-D89)" & GBDTier2==""
replace GBDTier2="Diabetes, urogenital, blood, and endocrine diseases" if DisChapter1=="IV: Endocrine, nutritional and metabolic diseases (E00-E89)"& DisCode1~="E40-E46: Malnutrition"
replace GBDTier2="Diabetes, urogenital, blood, and endocrine diseases" if DisChapter1=="XIV: Diseases of the genitourinary system (N00-N99)"
replace GBDTier2="Musculoskeletal disorders" if DisChapter1=="XIII: Diseases of the musculoskeletal system and connective tissue (M00-M99)" & DisCode1~="M00-M02: Infectious arthropathies"
replace GBDTier2="Other non-communicable diseases" if DisChapter1=="VII: Diseases of the eye and adnexa (H00-H59)"|DisChapter1=="VIII: Diseases of the ear and mastoid process (H60-H95)"

replace GBDTier2="Other non-communicable diseases" if DisChapter1=="XII: Diseases of the skin and subcutaneous tissue (L00-L99)" &  DisCode1~="L00-L08: Infections of the skin and subcutaneous tissue"
replace GBDTier2="Other non-communicable diseases" if DisChapter1=="XVII: Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)"

*Injuries
replace GBDTier2="Transport injuries" if DisCode1=="V00-V99: Transport accidents"
replace GBDTier2="Unintentional injuries other than transport injuries" if DisChapter1=="XIX: Injury, poisoning and certain other consequences of external causes (S00-T88)"
foreach g of var DisChapter1 {
replace GBDTier2="Unintentional injuries other than transport injuries" if inlist(DisCode1,"V00-X58: Accidents","W00-W19: Slipping, tripping, stumbling and falls","W00-X58: Other external causes of accidental injury",/*
*/"W20-W49: Exposure to inanimate mechanical forces","W50-W64: Exposure to animate mechanical forces","W65-W74: Accidental non-transport drowning and submersion")
}
foreach h of var DisChapter1 {
replace GBDTier2="Unintentional injuries other than transport injuries" if inlist(DisCode1,"W85-W99: Exposure to electric current, radiation and extreme ambient air temperature and pressure",/*
*/"X00-X08: Exposure to smoke, fire and flames","X10-X19: Contact with heat and hot substances","X52-X58: Accidental exposure to other specified factors")|/*
*/DisChapter1=="XIX: Injury, poisoning and certain other consequences of external causes (S00-T88)"
}
replace GBDTier2="Self-harm and interpersonal violence" if DisCode1=="X92-Y08: Assault"|DisCode1=="X60-X84: Intentional self-harm"
replace GBDTier2="Forces of nature, war, and legal intervention" if DisCode1=="X30-X39: Exposure to forces of nature"|DisCode1=="Y35-Y38: Legal intervention, operations of war, military operations, and terrorism"


*Tier 3&4; 
*Communicable diseases
gen strL GBDTier3="Tuberculosis" if DisCode1=="A15-A19: Tuberculosis"|strpos(lower(Diseaseorhealthintervention),"tuberculosis")>0
replace GBDTier3="HIV/AIDS" if DisCode1=="B20-B24: Human immunodeficiency virus [HIV] disease"|strpos(lower(Diseaseorhealthintervention),"hiv")>0|strpos(lower(Diseaseorhealthintervention),"immunodeficiency virus")>0
replace GBDTier2="HIV/AIDS and tuberculosis" if GBDTier3=="Tuberculosis"|GBDTier3=="HIV/AIDS"

gen strL GBDTier4="Cholera" if strpos(lower(Diseaseorhealthintervention),"cholera")>0
replace GBDTier4="Other salmonella infections" if strpos(lower(Diseaseorhealthintervention),"salmonella")>0
replace GBDTier4="Shigellosis" if strpos(lower(Diseaseorhealthintervention),"shigellosis")>0
replace GBDTier4="E coli infection" if strpos(lower(Diseaseorhealthintervention),"e coli infection")>0|strpos(lower(Diseaseorhealthintervention),"e. coli infection")>0|strpos(lower(Diseaseorhealthintervention),"e. coli")>0|strpos(lower(Diseaseorhealthintervention),"e coli")>0
replace GBDTier4="Campylobacter enteritis" if strpos(lower(Diseaseorhealthintervention),"campylobacter enteritis")>0
replace GBDTier4="Amoebiasis" if strpos(lower(Diseaseorhealthintervention),"amoebiasis")>0
replace GBDTier4="Cryptosporidiosis" if strpos(lower(Diseaseorhealthintervention),"cryptosporidiosis")>0
replace GBDTier4="Rotaviral enteritis" if strpos(lower(Diseaseorhealthintervention),"rotaviral enteritis")>0
replace GBDTier3="Diarrheal diseases" if GBDTier4=="Cholera"|GBDTier4=="Other salmonella infections"|GBDTier4=="Shigellosis"|GBDTier4=="Campylobacter enteritis"|GBDTier4=="Amoebiasis"|/*
*/GBDTier4=="Cryptosporidiosis"|GBDTier4=="Rotaviral enteritis"||GBDTier4=="E coli infection"
replace GBDTier3="Typhoid and paratyphoid fevers" if strpos(lower(Diseaseorhealthintervention),"typhoid")>0|strpos(lower(Diseaseorhealthintervention),"paratyphoid")>0
replace GBDTier4="Influenza" if strpos(lower(Diseaseorhealthintervention),"influenza")>0
replace GBDTier4="Pneumococcal pneumonia" if strpos(lower(Diseaseorhealthintervention),"pneumococcal pneumonia")>0
replace GBDTier4="H influenza type B pneumonia" if strpos(lower(Diseaseorhealthintervention),"h influenza type b pneumonia")>0
replace GBDTier4="Respiratory syncytial virus pneumonia" if strpos(lower(Diseaseorhealthintervention),"syncytial")>0
replace GBDTier4="Other lower respiratory infections" if GBDTier4=="" & [DisCode1=="J09-J18: Influenza and pneumonia"|DisCode1=="J20-J22: Other acute lower respiratory infections"]
replace GBDTier3="Lower respiratory infections" if GBDTier4=="Influenza"|GBDTier4=="Pneumococcal pneumonia"|GBDTier4=="H influenza type B pneumonia"|GBDTier4=="Respiratory syncytial virus pneumonia"|/*
*/GBDTier4=="Other lower respiratory infections"
replace GBDTier3="Upper respiratory infections" if DisCode1=="J00-J06: Acute upper respiratory infections"
replace GBDTier3="Otitis media" if strpos(lower(Diseaseorhealthintervention),"otitis media")>0
replace GBDTier4="Other meningitis" if strpos(lower(Diseaseorhealthintervention),"meningitis")>0
replace GBDTier4="Meningococcal infection" if strpos(lower(Diseaseorhealthintervention),"meningococcal infection")>0
replace GBDTier4="H inﬂuenzae type B meningitis" if strpos(lower(Diseaseorhealthintervention),"type B meningitis")>0
replace GBDTier4="Pneumococcal meningitis" if strpos(lower(Diseaseorhealthintervention),"pneumococcal meningitis")>0
replace GBDTier3="Meningitis" if GBDTier4=="Other meningitis"|GBDTier4=="Meningococcal infection"|GBDTier4=="H inﬂuenzae type B meningitis"|GBDTier4=="Pneumococcal meningitis"
replace GBDTier3="Encephalitis" if strpos(lower(Diseaseorhealthintervention),"encephalitis")>0
replace GBDTier3="Diphtheria" if strpos(lower(Diseaseorhealthintervention),"diphtheria")>0
replace GBDTier3="Whooping cough" if strpos(lower(Diseaseorhealthintervention),"whooping cough")>0
replace GBDTier3="Tetanus" if strpos(lower(Diseaseorhealthintervention),"tetanus")>0
replace GBDTier3="Measles" if strpos(lower(Diseaseorhealthintervention),"measles")>0
replace GBDTier3="Varicella" if strpos(lower(Diseaseorhealthintervention),"varicella")>0
replace GBDTier2="Diarrhea, lower respiratory infections, meningitis, and other common infectious diseases" if inlist(GBDTier3,"Diarrheal diseases","Typhoid and paratyphoid fevers",/*
*/"Lower respiratory infections","Upper respiratory infections")
replace GBDTier2="Diarrhea, lower respiratory infections, meningitis, and other common infectious diseases" if inlist(GBDTier3,"Otitis media","Meningitis","Encephalitis","Diphtheria",/*
*/"Whooping cough","Tetanus","Measles","Varicella")

replace GBDTier3="Malaria" if strpos(lower(Diseaseorhealthintervention),"malaria")>0
replace GBDTier3="Chagas disease" if strpos(lower(Diseaseorhealthintervention),"chagas")>0 
replace GBDTier3="Leishmaniasis" if strpos(lower(Diseaseorhealthintervention),"leishmaniasis")>0 
replace GBDTier3="African trypanosomiasis" if strpos(lower(Diseaseorhealthintervention),"trypanosomiasis")>0 
replace GBDTier3="Schistosomiasis" if strpos(lower(Diseaseorhealthintervention),"schistosomiasis")>0 
replace GBDTier3="Cysticercosis" if strpos(lower(Diseaseorhealthintervention),"cysticercosis")>0 
replace GBDTier3="Echinococcosis" if strpos(lower(Diseaseorhealthintervention),"echinococcosis")>0 
replace GBDTier3="Lymphatic filariasis" if strpos(lower(Diseaseorhealthintervention),"lymphatic")>0 & strpos(lower(Diseaseorhealthintervention),"filariasis")>0
replace GBDTier3="Onchocerciasis" if strpos(lower(Diseaseorhealthintervention),"onchocerciasis")>0 
replace GBDTier3="Trachoma" if strpos(lower(Diseaseorhealthintervention),"trachoma")>0 
replace GBDTier3="Dengue" if strpos(lower(Diseaseorhealthintervention),"dengue")>0 
replace GBDTier3="Yellow fever" if strpos(lower(Diseaseorhealthintervention),"yellow fever")>0 
replace GBDTier3="Rabies" if strpos(lower(Diseaseorhealthintervention),"rabies")>0 
replace GBDTier4="Ascariasis" if strpos(lower(Diseaseorhealthintervention),"ascariasis")>0 
replace GBDTier4="Trichuriasis" if strpos(lower(Diseaseorhealthintervention),"trichuriasis")>0 
replace GBDTier4="Hookworm disease" if strpos(lower(Diseaseorhealthintervention),"hookworm")>0 
replace GBDTier3="Intestinal nematode infections" if GBDTier4=="Ascariasis"|GBDTier4=="Trichuriasis"|GBDTier4=="Hookworm disease"
replace GBDTier3="Food-borne trematodiases" if strpos(lower(Diseaseorhealthintervention),"food")>0 & DisCode1=="A00-A09: Intestinal infectious diseases"
replace GBDTier4="Buruli Ulcer" if strpos(lower(Diseaseorhealthintervention),"buruli ulcer")>0 
replace GBDTier4="Chikungunya" if strpos(lower(Diseaseorhealthintervention),"chikungunya")>0 
replace GBDTier4="Dracunculiasis" if strpos(lower(Diseaseorhealthintervention),"dracunculiasis")>0 
replace GBDTier4="Yaws" if strpos(lower(Diseaseorhealthintervention),"yaws")>0 
replace GBDTier4="Scabies and other ectoparasites" if strpos(lower(Diseaseorhealthintervention),"scabies")>0|strpos(lower(Diseaseorhealthintervention),"ectoparasites")>0
replace GBDTier4="Mycetoma and deep mycoses" if strpos(lower(Diseaseorhealthintervention),"mycetoma")>0|strpos(lower(Diseaseorhealthintervention),"mycoses")>0
replace GBDTier3="Other neglected tropical diseases" if GBDTier4=="Buruli Ulcer"|GBDTier4=="Chikungunya"|GBDTier4=="Dracunculiasis"|GBDTier4=="Yaws"|GBDTier4=="Scabies and other ectoparasites"|/*
*/GBDTier4=="Mycetoma and deep mycoses"
replace GBDTier2="Neglected tropical diseases and malaria" if inlist(GBDTier3,"Malaria","Chagas disease","Leishmaniasis","African trypanosomiasis",/*
*/"Schistosomiasis","Cysticercosis","Echinococcosis")
replace GBDTier2="Neglected tropical diseases and malaria" if inlist(GBDTier3,"Lymphatic filariasis","Onchocerciasis","Trachoma","Dengue","Yellow fever","Rabies","Intestinal nematode infections",/*
*/"Food-borne trematodiases","Other neglected tropical diseases")

replace GBDTier3="Maternal haemorrhage" if [strpos(lower(Diseaseorhealthintervention),"hemorrhage")>0|strpos(lower(Diseaseorhealthintervention),"hemorrhage")>0] & GBDTier2=="Maternal disorders"
replace GBDTier3="Maternal sepsis" if strpos(lower(Diseaseorhealthintervention),"sepsis")>0 & GBDTier2=="Maternal disorders"
replace GBDTier3="Hypertensive disorders of pregnancy" if strpos(lower(Diseaseorhealthintervention),"hyperten")>0 & GBDTier2=="Maternal disorders"
replace GBDTier3="Obstructed labor" if strpos(lower(Diseaseorhealthintervention),"obstruct")>0 & GBDTier2=="Maternal disorders"
replace GBDTier3="Abortion" if strpos(lower(Diseaseorhealthintervention),"abort")>0 & GBDTier2=="Maternal disorders"
replace GBDTier3="Other maternal disorders" if GBDTier4=="" & GBDTier2=="Maternal disorders"

replace GBDTier3="Preterm birth complications" if [strpos(lower(Diseaseorhealthintervention),"pre-term")>0|strpos(lower(Diseaseorhealthintervention),"preterm")>0] & GBDTier2=="Neonatal disorders"
replace GBDTier3="Neonatal encephalopathy (birth asphyxia/trauma)" if [strpos(lower(Diseaseorhealthintervention),"encephalopathy")>0|strpos(lower(Diseaseorhealthintervention),"asphyxia")>0|/*
*/strpos(lower(Diseaseorhealthintervention),"trauma")>0] & GBDTier2=="Neonatal disorders"
replace GBDTier3="Sepsis and other infectious disorders of the newborn baby" if [strpos(lower(Diseaseorhealthintervention),"sepsis")>0|strpos(lower(Diseaseorhealthintervention),"infectio")>0]/*
*/ & GBDTier2=="Neonatal disorders"
replace GBDTier3="Other neonatal disorders" if GBDTier4=="" & GBDTier2=="Neonatal disorders"

replace GBDTier3="Protein-energy malnutrition" if DisCode1=="E40-E46: Malnutrition"
replace GBDTier3="Iodine deficiency" if strpos(lower(Diseaseorhealthintervention),"iodine deficiency")>0
replace GBDTier3="Vitamin A deficiency" if strpos(lower(Diseaseorhealthintervention),"vitamin a")>0 & DisCode1=="E50-E64: Other nutritional deficiencies"
replace GBDTier3="Iron-deficiency anemia" if [strpos(lower(Diseaseorhealthintervention),"iron")>0|strpos(lower(Diseaseorhealthintervention),"anemia")>0] & DisCode1=="D50-D53: Nutritional anemias"
replace GBDTier3="Other nutritional deficiencies" if GBDTier2=="Nutritional deficiencies" & GBDTier3==""

replace GBDTier3="Sexually transmitted diseases excluding HIV" if DisCode1=="A50-A64: Infections with a predominately sexual mode of transmission"
replace GBDTier4="Syphilis" if strpos(lower(Diseaseorhealthintervention),"syphilis")>0
replace GBDTier4="Gonococcal infection" if strpos(lower(Diseaseorhealthintervention),"gonococcal")>0|strpos(lower(Diseaseorhealthintervention),"gonorrhea")>0
replace GBDTier4="Trichomoniasis" if strpos(lower(Diseaseorhealthintervention),"trichomoniasis")>0
replace GBDTier4="Other sexually transmitted diseases" if GBDTier4=="" & GBDTier3=="Sexually transmitted diseases excluding HIV" 
replace GBDTier4="Trichomoniasis" if strpos(lower(Diseaseorhealthintervention),"trichomoniasis")>0
replace GBDTier3="Hepatitis" if DisCode1=="B15-B19: Viral hepatitis"
replace GBDTier4="Acute hepatitis A" if strpos(lower(Diseaseorhealthintervention),"hepatitis a")>0|strpos(lower(Diseaseorhealthintervention),"hep a")>0
replace GBDTier4="Acute hepatitis B" if strpos(lower(Diseaseorhealthintervention),"hepatitis b")>0|strpos(lower(Diseaseorhealthintervention),"hep b")>0
replace GBDTier4="Acute hepatitis C" if strpos(lower(Diseaseorhealthintervention),"hepatitis c")>0|strpos(lower(Diseaseorhealthintervention),"hep c")>0
replace GBDTier4="Acute hepatitis E" if strpos(lower(Diseaseorhealthintervention),"hepatitis e")>0|strpos(lower(Diseaseorhealthintervention),"hep e")>0
replace GBDTier3="Hepatitis" if GBDTier4=="Acute hepatitis A"|GBDTier4=="Acute hepatitis B"|GBDTier4=="Acute hepatitis C"|GBDTier4=="Acute hepatitis E"
replace GBDTier3="Leprosy" if strpos(lower(Diseaseorhealthintervention),"Leprosy")>0
replace GBDTier3="Other infectious diseases" if GBDTier3=="" & GBDTier2=="Other communicable, maternal, neonatal, and nutritional disorders"
replace GBDTier2="Other communicable, maternal, neonatal, and nutritional disorders" if inlist(GBDTier3,"Sexually transmitted diseases excluding HIV","Hepatitis","Leprosy","Other infectious diseases")

replace GBDTier1="Communicable maternal, neonatal, and nutritional disorders" if inlist(GBDTier2,"HIV/AIDS and tuberculosis","Diarrhea, lower respiratory infections, meningitis, and other common infectious diseases",/*
*/"Neglected tropical diseases and malaria","Nutritional deficiencies","Other communicable, maternal, neonatal, and nutritional disorders")


*Non-communicable diseases
replace GBDTier3="Esophageal cancer" if strpos(lower(Diseaseorhealthintervention),"esophageal cancer")>0
replace GBDTier3="Stomach cancer" if strpos(lower(Diseaseorhealthintervention),"stomach cancer")>0
replace GBDTier3="Liver cancer" if strpos(lower(Diseaseorhealthintervention),"liver cancer")>0
replace GBDTier4="Liver cancer secondary to hepatitis B" if GBDTier3=="Liver cancer" & [strpos(lower(Diseaseorhealthintervention),"hepatitis b")>0|strpos(lower(Diseaseorhealthintervention),"hep b")>0]
replace GBDTier4="Liver cancer secondary to hepatitis C" if GBDTier3=="Liver cancer" & [strpos(lower(Diseaseorhealthintervention),"hepatitis c")>0|strpos(lower(Diseaseorhealthintervention),"hep c")>0]
replace GBDTier4="Liver cancer secondary to alcohol use" if GBDTier3=="Liver cancer" & strpos(lower(Diseaseorhealthintervention),"alcohol")>0
replace GBDTier4="Other liver cancer" if GBDTier3=="Liver cancer" & GBDTier4==""
replace GBDTier3="Larynx cancer" if strpos(lower(Diseaseorhealthintervention),"larynx cancer")>0
replace GBDTier3="Trachea, bronchus, and lung cancers" if strpos(lower(Diseaseorhealthintervention),"trachea cancer")>0|strpos(lower(Diseaseorhealthintervention),"bronchus cancer")>0|/*
*/strpos(lower(Diseaseorhealthintervention),"lung cancer")>0|strpos(lower(Diseaseorhealthintervention),"bronchial cancer")>0
replace GBDTier3="Breast cancer" if strpos(lower(Diseaseorhealthintervention),"breast cancer")>0
replace GBDTier3="Cervical cancer" if strpos(lower(Diseaseorhealthintervention),"cervical cancer")>0
replace GBDTier3="Uterine cancer" if strpos(lower(Diseaseorhealthintervention),"uterine cancer")>0|strpos(lower(Diseaseorhealthintervention),"uterus cancer")>0
replace GBDTier3="Prostate cancer" if strpos(lower(Diseaseorhealthintervention),"prostate cancer")>0
replace GBDTier3="Colon and rectum cancers" if strpos(lower(Diseaseorhealthintervention),"colon cancer")>0|strpos(lower(Diseaseorhealthintervention),"rectum cancer")>0
replace GBDTier3="Mouth cancer" if strpos(lower(Diseaseorhealthintervention),"mouth cancer")>0
replace GBDTier3="Nasopharynx cancer" if strpos(lower(Diseaseorhealthintervention),"nasopharynx cancer")>0
replace GBDTier3="Cancer of other part of pharynx and oropharynx" if strpos(lower(Diseaseorhealthintervention),"pharynx cancer")>0|strpos(lower(Diseaseorhealthintervention),"oropharynx cancer")>0
replace GBDTier3="Gallbladder and biliary tract cancer" if strpos(lower(Diseaseorhealthintervention),"gallbladder cancer")>0|strpos(lower(Diseaseorhealthintervention),"biliary tract cancer")>0
replace GBDTier3="Pancreatic cancer" if strpos(lower(Diseaseorhealthintervention),"pancreatic cancer")>0|strpos(lower(Diseaseorhealthintervention),"pancreas cancer")>0
replace GBDTier3="Malignant melanoma of skin" if strpos(lower(Diseaseorhealthintervention),"skin cancer")>0
replace GBDTier3="Non-melanoma skin cancer" if strpos(lower(Diseaseorhealthintervention),"non-melanoma skin cancer")>0
replace GBDTier3="Ovarian cancer" if strpos(lower(Diseaseorhealthintervention),"ovarian cancer")>0
replace GBDTier3="Testicular cancer" if strpos(lower(Diseaseorhealthintervention),"testicular cancer")>0
replace GBDTier3="Kidney and other urinary organ cancers" if strpos(lower(Diseaseorhealthintervention),"kidney cancer")>0|strpos(lower(Diseaseorhealthintervention),"pelvis cancer")>0
replace GBDTier3="Bladder cancer" if strpos(lower(Diseaseorhealthintervention),"bladder cancer")>0
replace GBDTier3="Brain and nervous system cancers" if strpos(lower(Diseaseorhealthintervention),"brain cancer")>0|strpos(lower(Diseaseorhealthintervention),/*
*/"nervous system cancer")>0|strpos(lower(Diseaseorhealthintervention),"nervous system tumor")>0|strpos(lower(Diseaseorhealthintervention),"brain tumor")>0
replace GBDTier3="Thyroid cancer" if strpos(lower(Diseaseorhealthintervention),"thyroid cancer")>0
replace GBDTier3="Hodgkin’s disease" if strpos(lower(Diseaseorhealthintervention),"hodgkin")>0
replace GBDTier3="Non-Hodgkin lymphoma" if strpos(lower(Diseaseorhealthintervention),"non-hodgkin")>0
replace GBDTier3="Multiple myeloma" if strpos(lower(Diseaseorhealthintervention),"multiple myeloma")>0
replace GBDTier3="Leukaemia" if strpos(lower(Diseaseorhealthintervention),"leukemia")>0
replace GBDTier3="Other neoplasms" if GBDTier2=="Neoplasms" & GBDTier3==""
replace GBDTier2="Neoplasms" if strpos(lower(GBDTier3),"cancer")>0|strpos(lower(GBDTier3),"leukemia")>0|strpos(lower(GBDTier3),"melanoma")>0
replace GBDTier2="Neoplasms" if strpos(lower(GBDTier3),"hodgkin")>0|strpos(lower(GBDTier3),"multiple myeloma")>0

replace GBDTier3="Rheumatic heart disease" if strpos(lower(Diseaseorhealthintervention),"rheumatic heart")>0
replace GBDTier3="Ischemic heart disease" if strpos(lower(Diseaseorhealthintervention),"ischemic heart")>0
replace GBDTier4="Ischemic stroke" if strpos(lower(Diseaseorhealthintervention),"ischemic stroke")>0
replace GBDTier4="Haemorrhagic and other non-ischemic stroke" if strpos(lower(Diseaseorhealthintervention),"stroke")>0 & GBDTier4==""
replace GBDTier3="Cerebrovascular disease" if GBDTier4=="Ischemic stroke"|GBDTier4=="Haemorrhagic and other non-ischemic stroke"
replace GBDTier3="Hypertensive heart disease" if strpos(lower(Diseaseorhealthintervention),"hypertensive heart")>0
replace GBDTier3="Cardiomyopathy and myocarditis" if strpos(lower(Diseaseorhealthintervention),"cardiomyopathy")>0|strpos(lower(Diseaseorhealthintervention),"myocarditis")>0
replace GBDTier3="Atrial fibrillation and flutter" if strpos(lower(Diseaseorhealthintervention),"atrial fibrillation")>0|strpos(lower(Diseaseorhealthintervention),"flutter")>0
replace GBDTier3="Aortic aneurysm" if strpos(lower(Diseaseorhealthintervention),"aortic aneurysm")>0
replace GBDTier3="Peripheral vascular disease" if strpos(lower(Diseaseorhealthintervention),"peripheral vascular disease")>0
replace GBDTier3="Endocarditis" if strpos(lower(Diseaseorhealthintervention),"endocarditis")>0
replace GBDTier3="Other cardiovascular and circulatory diseases" if GBDTier2=="Cardiovascular and circulatory diseases" & GBDTier3==""
replace GBDTier2="Cardiovascular and circulatory diseases" if inlist(GBDTier3,"Rheumatic heart disease","Ischemic heart disease","Cerebrovascular disease","Hypertensive heart disease")
replace GBDTier2="Cardiovascular and circulatory diseases" if inlist(GBDTier3,"Cardiomyopathy and myocarditis","Atrial fibrillation and flutter","Aortic aneurysm","Peripheral vascular disease",/*
*/"Endocarditis","Other cardiovascular and circulatory diseases")

replace GBDTier3="Chronic obstructive pulmonary disease" if strpos(lower(Diseaseorhealthintervention),"chronic obstructive pulmonary disease")>0|strpos(lower(Diseaseorhealthintervention),"copd")>0
replace GBDTier3="Pneumoconiosis" if strpos(lower(Diseaseorhealthintervention),"pneumoconiosis")>0
replace GBDTier3="Asthma" if strpos(lower(Diseaseorhealthintervention),"asthma")>0
replace GBDTier3="Interstitial lung disease and pulmonary sarcoidosis" if strpos(lower(Diseaseorhealthintervention),"interstitial lung disease")>0|strpos(lower(Diseaseorhealthintervention),"pulmonary sarcoidosis")>0
replace GBDTier3="Other chronic respiratory diseases" if GBDTier2=="Chronic respiratory diseases" & GBDTier3==""
replace GBDTier2="Chronic respiratory diseases" if inlist(GBDTier3,"Chronic obstructive pulmonary disease","Pneumoconiosis","Asthma","Interstitial lung disease and pulmonary sarcoidosis","Other chronic respiratory diseases")

replace GBDTier3="Cirrhosis of the liver secondary to hepatitis B" if GBDTier2=="Cirrhosis of the liver" & [strpos(lower(Diseaseorhealthintervention),"hepatitis b")>0|strpos(lower(Diseaseorhealthintervention),"hep b")>0]
replace GBDTier3="Cirrhosis of the liver secondary to hepatitis C" if GBDTier2=="Cirrhosis of the liver" & [strpos(lower(Diseaseorhealthintervention),"hepatitis c")>0|strpos(lower(Diseaseorhealthintervention),"hep c")>0]
replace GBDTier3="Cirrhosis of the liver secondary to alcohol use" if GBDTier2=="Cirrhosis of the liver" & [strpos(lower(Diseaseorhealthintervention),"alcohol")>0|strpos(lower(Diseaseorhealthintervention),"drink")>0]
replace GBDTier2="Cirrhosis of the liver" if strpos(lower(Diseaseorhealthintervention),"cirrhosis")>0 & strpos(lower(Diseaseorhealthintervention),"liver")>0
replace GBDTier3="Other cirrhosis of the liver" if GBDTier2=="Cirrhosis of the liver" & GBDTier3==""

replace GBDTier3="Peptic ulcer disease" if strpos(lower(Diseaseorhealthintervention),"peptic ulcer")>0
replace GBDTier3="Appendicitis" if strpos(lower(Diseaseorhealthintervention),"appendicitis")>0
replace GBDTier3="Non-infective inflammatory bowel disease" if strpos(lower(Diseaseorhealthintervention),"inflammatory bowel")>0
replace GBDTier3="Vascular disorders of intestine" if strpos(lower(Diseaseorhealthintervention),"vascular disorder of intestine")>0
replace GBDTier3="Pancreatitis" if strpos(lower(Diseaseorhealthintervention),"pancreatitis")>0
replace GBDTier3="Gastritis and duodenitis" if strpos(lower(Diseaseorhealthintervention),"gastritis")>0|strpos(lower(Diseaseorhealthintervention),"duodenitis")>0
replace GBDTier3="Paralytic ileus and intestinal obstruction without hernia" if strpos(lower(Diseaseorhealthintervention),"paralytic ileus")>0|strpos(lower(Diseaseorhealthintervention),"intestinal obstruction")>0
replace GBDTier3="Inguinal or femoral hernia" if strpos(lower(Diseaseorhealthintervention),"inguinal")>0|strpos(lower(Diseaseorhealthintervention),"femoral hernia")>0
replace GBDTier3="Gallbladder and bile duct disease" if strpos(lower(Diseaseorhealthintervention),"gallbladder disease")>0|strpos(lower(Diseaseorhealthintervention),"bile duct disease")>0
replace GBDTier3="Other digestive diseases" if GBDTier2=="Digestive diseases (except cirrhosis)" & GBDTier3==""
replace GBDTier2="Digestive diseases (except cirrhosis)" if GBDTier3=="Peptic ulcer disease"|GBDTier3=="Appendicitis"|GBDTier3=="Non-infective inflammatory bowel disease"|/*
*/GBDTier3=="Vascular disorders of intestine"|GBDTier3=="Pancreatitis"|GBDTier3=="Gastritis and duodenitis"
replace GBDTier2="Digestive diseases (except cirrhosis)" if inlist(GBDTier3,"Paralytic ileus and intestinal obstruction without hernia","Inguinal or femoral hernia","Gallbladder and bile duct disease","Other digestive diseases")

replace GBDTier3="Alzheimer’s disease and other dementias" if strpos(lower(Diseaseorhealthintervention),"alzheimer")>0
replace GBDTier3="Parkinson’s disease" if strpos(lower(Diseaseorhealthintervention),"parkinson")>0
replace GBDTier3="Epilepsy" if strpos(lower(Diseaseorhealthintervention),"epilepsy")>0
replace GBDTier3="Multiple sclerosis" if strpos(lower(Diseaseorhealthintervention),"multiple sclerosis")>0
replace GBDTier3="Migraine" if strpos(lower(Diseaseorhealthintervention),"migraine")>0
replace GBDTier3="Tension-type headache" if strpos(lower(Diseaseorhealthintervention),"tension headache")>0|strpos(lower(Diseaseorhealthintervention),"dementia")>0
replace GBDTier3="Other neurological disorders" if GBDTier2=="Neurological disorders" & GBDTier3==""
replace GBDTier2="Neurological disorders" if inlist(GBDTier3,"Alzheimer’s disease and other dementias","Parkinson’s disease","Epilepsy","Multiple sclerosis","Migraine","Tension-type headache")

replace GBDTier3="Schizophrenia" if strpos(lower(Diseaseorhealthintervention),"schizophrenia")>0
replace GBDTier3="Alcohol use disorders" if strpos(lower(Diseaseorhealthintervention),"alcoholism")>0|strpos(lower(Diseaseorhealthintervention),"alcoholic")>0|strpos(lower(Diseaseorhealthintervention),"alcohol")>0
replace GBDTier4="Opioid use disorders" if strpos(lower(Diseaseorhealthintervention),"opioid addiction")>0
replace GBDTier4="Cocaine use disorders" if strpos(lower(Diseaseorhealthintervention),"cocaine addiction")>0
replace GBDTier4="Amphetamine use disorders" if strpos(lower(Diseaseorhealthintervention),"amphetamine addiction")>0
replace GBDTier4="Cannabis use disorders" if strpos(lower(Diseaseorhealthintervention),"cannabis")>0
replace GBDTier3="Drug use disorders" if GBDTier4=="Opioid use disorders"|GBDTier4=="Cocaine use disorders"|GBDTier4=="Amphetamine use disorders"|GBDTier4=="Cannabis use disorders"
replace GBDTier4="Major depressive disorder" if strpos(lower(Diseaseorhealthintervention),"depression")>0|strpos(lower(Diseaseorhealthintervention),"major depressive disorder")>0
replace GBDTier4="Dysthymia" if strpos(lower(Diseaseorhealthintervention),"dysthymia")>0
replace GBDTier3="Unipolar depressive disorders" if GBDTier4=="Major depressive disorder"|GBDTier4=="Dysthymia"
replace GBDTier3="Bipolar affective disorder" if strpos(lower(Diseaseorhealthintervention),"bipolar")>0
replace GBDTier3="Anxiety disorders" if strpos(lower(Diseaseorhealthintervention),"anxiety")>0
replace GBDTier3="Eating disorders" if strpos(lower(Diseaseorhealthintervention),"eating disorder")>0
replace GBDTier4="Autism" if strpos(lower(Diseaseorhealthintervention),"autism")>0
replace GBDTier4="Asperger’s syndrome" if strpos(lower(Diseaseorhealthintervention),"asperger")>0
replace GBDTier3="Pervasive development disorders" if GBDTier4=="Autism"|GBDTier4=="Asperger’s syndrome"
replace GBDTier4="Attention-deficit hyperactivity disorder" if strpos(lower(Diseaseorhealthintervention),"deficit hyperactivity disorder")>0|strpos(lower(Diseaseorhealthintervention),"adhd")>0
replace GBDTier4="Conduct disorder" if strpos(lower(Diseaseorhealthintervention),"conduct disorder")>0
replace GBDTier3="Childhood behavioral disorders" if GBDTier4=="Attention-deficit hyperactivity disorder"|GBDTier4=="Conduct disorder"
replace GBDTier3="Idiopathic intellectual disability" if strpos(lower(Diseaseorhealthintervention),"intellectual disability")>0
replace GBDTier3="Other mental and behavioural disorders" if GBDTier2=="Mental and behavioral disorders" & GBDTier3==""
replace GBDTier2="Mental and behavioral disorders" if inlist(GBDTier3,"Schizophrenia","Alcohol use disorders","Drug use disorders","Unipolar depressive disorders","Bipolar affective disorder","Anxiety disorders")
replace GBDTier2="Mental and behavioral disorders" if inlist(GBDTier3,"Eating disorders","Pervasive development disorders","Childhood behavioral disorders","Idiopathic intellectual disability")

replace GBDTier3="Diabetes mellitus" if DisCode1=="E08-E13: Diabetes mellitus"
replace GBDTier3="Acute glomerulonephritis" if strpos(lower(Diseaseorhealthintervention),"glomerulonephritis")>0
replace GBDTier3="Chronic kidney diseases" if strpos(lower(Diseaseorhealthintervention),"kidney disease")>0
replace GBDTier4="Tubulointerstitial nephritis, pyelonephritis, and urinary tract infections" if strpos(lower(Diseaseorhealthintervention),"tubulointerstitial nephritis")>0|/*
*/strpos(lower(Diseaseorhealthintervention),"pyelonephritis")>0|strpos(lower(Diseaseorhealthintervention),"urinary tract infection")>0|strpos(lower(Diseaseorhealthintervention),"uti")>0
replace GBDTier4="Urolithiasis" if DisCode1=="N20-N23: Urolithiasis"
replace GBDTier4="Benign prostatic hyperplasia" if strpos(lower(Diseaseorhealthintervention),"benign prostatic hyperplasia")>0
replace GBDTier4="Male infertility" if strpos(lower(Diseaseorhealthintervention),"male infertility")>0
replace GBDTier4="Other urinary diseases" if GBDTier4=="" & DisChapter1=="XIV: Diseases of the genitourinary system (N00-N99)"
replace GBDTier3="Urinary diseases and male infertility" if DisChapter1=="XIV: Diseases of the genitourinary system (N00-N99)"
replace GBDTier3="Urinary diseases and male infertility" if GBDTier4=="Tubulointerstitial nephritis, pyelonephritis, and urinary tract infections"
replace GBDTier4="Uterine fibroids" if strpos(lower(Diseaseorhealthintervention),"uterine fibroids")>0
replace GBDTier4="Polycystic ovarian syndrome" if strpos(lower(Diseaseorhealthintervention),"polycystic ovarian syndrome")>0
replace GBDTier4="Female infertility" if strpos(lower(Diseaseorhealthintervention),"female infertility")>0
replace GBDTier4="Endometriosis" if strpos(lower(Diseaseorhealthintervention),"endometriosis")>0
replace GBDTier4="Genital prolapse" if strpos(lower(Diseaseorhealthintervention),"genital prolapse")>0 & DisCode1=="N80-N98: Noninflammatory disorders of female genital tract"
replace GBDTier4="Premenstrual syndrome" if strpos(lower(Diseaseorhealthintervention),"premenstrual syndrome")>0
replace GBDTier4="Other gynecological diseases" if GBDTier4=="" & DisCode1=="N70-N77: Inflammatory diseases of female pelvic organs"|DisCode1=="N80-N98: Noninflammatory disorders of female genital tract"
replace GBDTier3="Gynecological diseases" if DisCode1=="N70-N77: Inflammatory diseases of female pelvic organs"|DisCode1=="N80-N98: Noninflammatory disorders of female genital tract"
replace GBDTier3="Gynecological diseases" if GBDTier4=="Uterine fibroids"|GBDTier4=="Endometriosis"
replace GBDTier4="Thalassemias" if strpos(lower(Diseaseorhealthintervention),"thalassemias")>0
replace GBDTier4="Sickle-cell disorders" if strpos(lower(Diseaseorhealthintervention),"sickle-cell")>0|strpos(lower(Diseaseorhealthintervention),"sickle cell")>0
replace GBDTier4="G6PD deficiency" if strpos(lower(Diseaseorhealthintervention),"g6pd deficiency")>0
replace GBDTier4="Other haemoglobinopathies and haemolytic anemias" if GBDTier4=="" & DisCode1=="D55-D59: Hemolytic anemias"
replace GBDTier3="Haemoglobinopathies and haemolytic anemias" if DisCode1=="D55-D59: Hemolytic anemias"
replace GBDTier3="Other endocrine, blood, and immune disorders" if GBDTier3=="" & GBDTier2=="Diabetes, urogenital, blood, and endocrine diseases"
replace GBDTier2="Diabetes, urogenital, blood, and endocrine diseases" if inlist(GBDTier3,"Diabetes mellitus","Acute glomerulonephritis","Chronic kidney diseases","Urinary diseases and male infertility",/*
*/"Gynecological diseases","Haemoglobinopathies and haemolytic anemias")

replace GBDTier3="Rheumatoid arthritis" if strpos(lower(Diseaseorhealthintervention),"rheumatoid arthritis")>0
replace GBDTier3="Osteoarthritis" if DisCode1=="M15-M19: Osteoarthritis"|strpos(lower(Diseaseorhealthintervention),"osteoarthritis")>0
replace GBDTier3="Low back pain" if strpos(lower(Diseaseorhealthintervention),"low back pain")>0
replace GBDTier3="Neck pain" if strpos(lower(Diseaseorhealthintervention),"neck pain")>0
replace GBDTier3="Gout" if strpos(lower(Diseaseorhealthintervention),"gout")>0
replace GBDTier3="Other musculoskeletal disorder" if GBDTier3=="" & DisChapter1=="XIII: Diseases of the musculoskeletal system and connective tissue (M00-M99)"
replace GBDTier2="Musculoskeletal disorders" if inlist(GBDTier3,"Rheumatoid arthritis","Osteoarthritis","Low back pain","Neck pain","Gout","Other musculoskeletal disorder")

replace GBDTier4="Neural tube defects" if strpos(lower(Diseaseorhealthintervention),"neural tube defect")>0
replace GBDTier4="Congenital heart anomalies" if strpos(lower(Diseaseorhealthintervention),"congenital heart")>0
replace GBDTier4="Cleft lip and cleft palate" if strpos(lower(Diseaseorhealthintervention),"cleft")>0
replace GBDTier4="Down’s syndrome" if strpos(lower(Diseaseorhealthintervention),"down’s syndrome")>0|strpos(lower(Diseaseorhealthintervention),"downs syndrome")>0|strpos(lower(Diseaseorhealthintervention),"down syndrome")>0
replace GBDTier4="Other congenital anomalies" if DisChapter1=="XVII: Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)" & GBDTier4==""
replace GBDTier3="Congenital anomalies" if inlist(GBDTier4,"Neural tube defects","Congenital heart anomalies","Cleft lip and cleft palate","Down’s syndrome","Other congenital anomalies")
replace GBDTier4="Eczema" if strpos(lower(Diseaseorhealthintervention),"eczema")>0
replace GBDTier4="Psoriasis" if strpos(lower(Diseaseorhealthintervention),"psoriasis")>0
replace GBDTier4="Cellulitis" if strpos(lower(Diseaseorhealthintervention),"cellulitis")>0
replace GBDTier4="Scabies" if strpos(lower(Diseaseorhealthintervention),"scabies")>0
replace GBDTier4="Acne vulgaris" if strpos(lower(Diseaseorhealthintervention),"acne")>0
replace GBDTier4="Alopecia areata" if strpos(lower(Diseaseorhealthintervention),"alopecia")>0
replace GBDTier4="Pruritus" if strpos(lower(Diseaseorhealthintervention),"pruritus")>0
replace GBDTier4="Urticaria" if strpos(lower(Diseaseorhealthintervention),"urticaria")>0
replace GBDTier4="Decubitus ulcer" if strpos(lower(Diseaseorhealthintervention),"decubitus ulcer")>0
replace GBDTier4="Other skin and subcutaneous diseases" if DisChapter1=="XII: Diseases of the skin and subcutaneous tissue (L00-L99)" &  DisCode1~="L00-L08: Infections of the skin and subcutaneous tissue" & GBDTier4==""
replace GBDTier3="Skin and subcutaneous diseases" if inlist(GBDTier4,"Eczema","Psoriasis","Cellulitis","Scabies","Acne vulgaris","Alopecia areata")
replace GBDTier3="Skin and subcutaneous diseases" if inlist(GBDTier4,"Pruritus","Urticaria","Decubitus ulcer","Other skin and subcutaneous diseases")
replace GBDTier4="Glaucoma" if strpos(lower(Diseaseorhealthintervention),"glaucoma")>0
replace GBDTier4="Cataracts" if strpos(lower(Diseaseorhealthintervention),"cataracts")>0
replace GBDTier4="Macular degeneration" if strpos(lower(Diseaseorhealthintervention),"macular degeneration")>0
replace GBDTier4="Dental caries" if strpos(lower(Diseaseorhealthintervention),"dental caries")>0
replace GBDTier4="Periodontal disease" if strpos(lower(Diseaseorhealthintervention),"periodontal disease")>0
replace GBDTier4="Edentulism" if strpos(lower(Diseaseorhealthintervention),"edentulism")>0
replace GBDTier4="Other hearing loss" if strpos(lower(Diseaseorhealthintervention),"loss")>0 & DisChapter1=="VIII: Diseases of the ear and mastoid process (H60-H95)" & GBDTier4==""
replace GBDTier4="Other vision loss" if strpos(lower(Diseaseorhealthintervention),"loss")>0 & DisChapter1=="VII: Diseases of the eye and adnexa (H00-H59)" & GBDTier4==""
replace GBDTier4="Other sense organ diseases" if GBDTier4=="" & [DisChapter1=="VII: Diseases of the eye and adnexa (H00-H59)"|DisChapter1=="VIII: Diseases of the ear and mastoid process (H60-H95)"]
replace GBDTier3="Sense organ diseases" if inlist(GBDTier4,"Glaucoma","Cataracts","Macular degeneration","Dental caries","Periodontal disease","Edentulism","Other hearing loss","Other vision loss","Other sense organ diseases")
replace GBDTier3="Sudden infant death syndrome" if strpos(lower(Diseaseorhealthintervention),"sudden infant death")>0
replace GBDTier2="Other non-communicable diseases" if inlist(GBDTier3,"Congenital anomalies","Skin and subcutaneous diseases","Sense organ diseases","Sudden infant death syndrome")

replace GBDTier1="Non-communicable diseases" if inlist(GBDTier2,"Neoplasms","Cardiovascular and circulatory diseases","Chronic respiratory diseases","Cirrhosis of the liver")
replace GBDTier1="Non-communicable diseases" if inlist(GBDTier2,"Digestive diseases (except cirrhosis)","Neurological disorders","Mental and behavioral disorders")
replace GBDTier1="Non-communicable diseases" if inlist(GBDTier2,"Diabetes, urogenital, blood, and endocrine diseases","Musculoskeletal disorders","Other non-communicable diseases")


*Injuries
replace GBDTier4="Pedestrian injury by road vehicle" if DisCode1=="V00-V99: Transport accidents" & strpos(lower(Diseaseorhealthintervention),"pedestrian")>0
replace GBDTier4="Pedal cycle vehicle" if DisCode1=="V00-V99: Transport accidents" & strpos(lower(Diseaseorhealthintervention),"bicycle")>0
replace GBDTier4="Motorized vehicle with two wheelse" if DisCode1=="V00-V99: Transport accidents" & strpos(lower(Diseaseorhealthintervention),"motorcycle")>0

replace GBDTier3="Falls" if DisCode1=="W00-W19: Slipping, tripping, stumbling and falls"
replace GBDTier3="Drowning" if DisCode1=="W65-W74: Accidental non-transport drowning and submersion"
replace GBDTier3="Fire, heat, and hot substances" if DisCode1=="X00-X08: Exposure to smoke, fire and flames"|DisCode1=="X10-X19: Contact with heat and hot substances"|DisCode1=="W85-W99: Exposure to electric current, radiation and extreme ambient air temperature and pressure"
replace GBDTier3="Poisonings" if strpos(lower(Diseaseorhealthintervention),"poison")>0 & GBDTier2=="Unintentional injuries other than transport injuries"
replace GBDTier4="Mechanical forces (firearm)" if DisCode1=="W20-W49: Exposure to inanimate mechanical forces"
replace GBDTier4="Mechanical forces (other)" if DisCode1=="W50-W64: Exposure to animate mechanical forces"
replace GBDTier3="Exposure to mechanical forces" if DisCode1=="W20-W49: Exposure to inanimate mechanical forces"|DisCode1=="W50-W64: Exposure to animate mechanical forces"
replace GBDTier3="Adverese effects of medical treatment" if DisCode1=="Y62-Y69: Misadventures to patients during surgical and medical care"|DisCode1=="Y62-Y84: Complications of medical and surgical care"
replace GBDTier3="Adverese effects of medical treatment" if DisCode1=="Y70-Y82: Medical devices associated with adverse incidents in diagnostic and therapeutic use"
replace GBDTier3="Adverese effects of medical treatment" if DisCode1=="Y83-Y84: Surgical and other medical procedures as the cause of abnormal reaction of the patient, or of later complication, without mention of misadventure at the time of the procedure"
replace GBDTier3="Adverese effects of medical treatment" if DisCode1=="Y90-Y99: Supplementary factors related to causes of morbidity classified elsewhere"
replace GBDTier3="Unintentional injuries not classified elsewhere" if DisChapter1=="XIX: Injury, poisoning and certain other consequences of external causes (S00-T88)" & GBDTier3==""
replace GBDTier3="Unintentional injuries not classified elsewhere" if DisCode1=="Y21-Y33: Event of undetermined intent"|DisCode1=="X52-X58	Accidental exposure to other specified factors"|DisCode1=="W00-X58: Other external causes of accidental injury"

replace GBDTier3="Self-harm" if DisCode1=="X71-X83: Intentional self-harm"|strpos(lower(Diseaseorhealthintervention),"suicide")>0
replace GBDTier3="Interpersonal violence" if DisCode1=="X92-Y08: Assault"|strpos(lower(Diseaseorhealthintervention),"violence")>0
replace GBDTier4="Assault by firearm" if GBDTier3=="Interpersonal violence" & [strpos(lower(Diseaseorhealthintervention),"firearm")>0|strpos(lower(Diseaseorhealthintervention),"shoot")>0]
replace GBDTier4="Assault by sharp object" if GBDTier3=="Interpersonal violence" & [strpos(lower(Diseaseorhealthintervention),"sharp object")>0|strpos(lower(Diseaseorhealthintervention),"stab")>0]
replace GBDTier4="Assault by other means" if GBDTier4=="" & GBDTier3=="Interpersonal violence"
replace GBDTier2="Self-harm and interpersonal violence" if inlist(GBDTier3,"Self-harm","Interpersonal violence")

replace GBDTier3="Exposure to forces of nature" if DisCode1=="X30-X39: Exposure to forces of nature" 
replace GBDTier3="Collective violence and legal intervention" if DisCode1=="Y35-Y38: Legal intervention, operations of war, military operations, and terrorism"
replace GBDTier2="Forces of nature, war, and legal intervention" if GBDTier3=="Exposure to forces of nature"|GBDTier3=="Collective violence and legal intervention"

replace GBDTier1="Injuries" if inlist(GBDTier2,"Transport injuries","Unintentional injuries other than transport injuries","Self-harm and interpersonal violence","Forces of nature, war, and legal intervention")

*Other diseases not captured
replace GBDTier2="N/A" if Diseaseorhealthintervention=="NA"|DisChapter1=="00: Interventions otherwise not classified in ICD-10"|DisChapter1=="XXI: Factors influencing health status and contact with health services (Z00-Z99)"
replace GBDTier2="N/A" if Diseaseorhealthintervention==""|strpos(lower(Diseaseorhealthintervention),"n/a")
replace GBDTier2="N/A" if strpos(lower(Diseaseorhealthintervention),"general")
replace GBDTier2="Neoplasms" if strpos(lower(Diseaseorhealthintervention),"cancer") & GBDTier2==""
replace GBDTier2="Neoplasms" if strpos(lower(Diseaseorhealthintervention),"carcinoma") & GBDTier2==""
replace GBDTier2="Neoplasms" if strpos(lower(Diseaseorhealthintervention),"melanoma") & GBDTier2==""
replace GBDTier2="Neoplasms" if strpos(lower(Diseaseorhealthintervention),"metasta") & GBDTier2==""
replace GBDTier2="Neoplasms" if strpos(lower(Diseaseorhealthintervention),"maligna") & GBDTier2==""
replace GBDTier2="Diabetes, urogenital, blood, and endocrine diseases" if strpos(lower(Diseaseorhealthintervention),"diabet") & GBDTier2==""
replace GBDTier2="Diabetes, urogenital, blood, and endocrine diseases" if strpos(lower(Diseaseorhealthintervention),"renal") & GBDTier2==""
replace GBDTier2="Diabetes, urogenital, blood, and endocrine diseases" if (strpos(lower(Diseaseorhealthintervention),"obesity")) &  GBDTier2==""
replace GBDTier2="Maternal Disorders" if strpos(lower(Diseaseorhealthintervention),"pregnan") & GBDTier2==""
replace GBDTier2="Cardiovascular and circulatory diseases" if strpos(lower(Diseaseorhealthintervention),"cardiovascular") & GBDTier2==""
replace GBDTier2="Cardiovascular and circulatory diseases" if strpos(lower(Diseaseorhealthintervention),"cerebral") & GBDTier2==""
replace GBDTier2="Cardiovascular and circulatory diseases" if strpos(lower(Diseaseorhealthintervention),"heart") & GBDTier2==""
replace GBDTier2="Cardiovascular and circulatory diseases" if strpos(lower(Diseaseorhealthintervention),"hypertension") & GBDTier2==""
replace GBDTier2="Cardiovascular and circulatory diseases" if strpos(lower(Diseaseorhealthintervention),"coronary") & GBDTier2==""
replace GBDTier2="Neurological disorders" if strpos(lower(Diseaseorhealthintervention),"headache") & GBDTier2==""
replace GBDTier2="Mental and behavioral disorders" if strpos(lower(Diseaseorhealthintervention),"mental") & GBDTier2==""
replace GBDTier2="Mental and behavioral disorders" if strpos(lower(Diseaseorhealthintervention),"drink") & GBDTier2==""
replace GBDTier2="Mental and behavioral disorders" if strpos(lower(Diseaseorhealthintervention),"drug use") & GBDTier2==""
replace GBDTier2="Mental and behavioral disorders" if strpos(lower(Diseaseorhealthintervention),"alcohol") & GBDTier2==""
replace GBDTier2="Mental and behavioral disorders" if (strpos(lower(Diseaseorhealthintervention),"smoking")) &  GBDTier2==""
replace GBDTier2="Musculoskeletal disorders" if strpos(lower(Diseaseorhealthintervention),"osteoporo") & GBDTier2==""
replace GBDTier2="Unintentional injuries not classified elsewhere" if strpos(lower(Diseaseorhealthintervention),"fracture") & GBDTier2==""
replace GBDTier2="Unintentional injuries not classified elsewhere" if strpos(lower(Diseaseorhealthintervention),"fall") & GBDTier2==""
replace GBDTier2="Unintentional injuries not classified elsewhere" if strpos(lower(Diseaseorhealthintervention),"injur") & GBDTier2==""
replace GBDTier2="Other non-communicable diseases" if strpos(lower(Diseaseorhealthintervention),"cataract") & GBDTier2==""
replace GBDTier2="Forces of nature, war, and legal intervention" if strpos(lower(Diseaseorhealthintervention),"war") & GBDTier2==""
replace GBDTier2="Other" if DisChapter1=="XVIII: Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified (R00-R99)" &  GBDTier2==""


*ICD to DCP3 Mapping
gen strL DCP3="C35" if GBDTier3=="Malaria" & [InterventionDiagnostic==1|InterventionScreening==1] & InterventionPharmaceutical==1
replace DCP3="C47" if [DisCode1=="J40-J47: Chronic lower respiratory diseases"|GBDTier2=="Chronic respiratory diseases"] & strpos(lower(Abstract),"exercise") & (PreventionStage_Collapsed==3|PreventionStage_Collapsed==4)
replace DCP3="C50" if GBDTier3=="Interpersonal violence" & [strpos(lower(Abstract),"parent")|HealthEducationOrBehavior==1]
replace DCP3="C51" if DisCode1=="A00-A09: Intestinal infectious diseases" & HealthEducationOrBehavior==1
replace DCP3="FLH10" if DisCode1=="O00-O08: Pregnancy with abortive outcome" & [InterventionSurg==1|InterventionMedicalProcedure==1]
replace DCP3="FLH12" if DisCode1=="E40-E46: Malnutrition" & [strpos(lower(Abstract),"management")|strpos(lower(Abstract),"manage")]
replace DCP3="FLH13" if GBDTier2=="Neoplasms" & strpos(lower(Diseaseorhealthintervention),"cervical") & strpos(lower(Abstract),"early")
replace DCP3="FLH15" if [DisCode1=="O85-O92: Complications predominantly related to the puerperium"|DisCode1=="O94-O99: Other obstetric conditions, not elsewhere classified"] & strpos(lower(Diseaseorhealthintervention),"sepsis")
replace DCP3="FLH120" if DisCode1=="I20-I25: Ischemic heart diseases" & [strpos(lower(Abstract),"aspirin")|strpos(lower(Abstract),"heparin")|strpos(lower(Abstract),"thrombolytics")] 
replace DCP3="HC1" if GBDTier2=="Neonatal disorders" & strpos(lower(Abstract),"antibiotics") & strpos(lower(Abstract),"early")
replace DCP3="HC13" if GBDTier3=="HIV/AIDS" & strpos(lower(Abstract),"art initiation") & [strpos(lower(Abstract),"monitor")|strpos(lower(Abstract),"surveillance")]
replace DCP3="HC15" if GBDTier3=="Interpersonal violence" & [strpos(lower(Abstract),"female genital mutilation")|strpos(lower(Abstract),"fgm")]
replace DCP3="HC49" if GBDTier3=="Bipolar affective disorder" & InterventionPharmaceutical==1 & [strpos(lower(Abstract),"psychosocial")|strpos(lower(Abstract),"therapy")]
replace DCP3="P5" if DisCode1=="A15-A19: Tuberculosis" & InterventionCareDelivery==1
replace DCP3="P4" if DisCode1=="B50-B64: Protozoal diseases" & HealthEducationOrBehavior==1
replace DCP3="P3" if GBDTier3=="Alcohol use disorders" & HealthEducationOrBehavior==1
replace DCP3="RH7" if GBDTier2=="Neoplasms" & strpos(lower(Diseaseorhealthintervention),"breast") & strpos(lower(Diseaseorhealthintervention),"early") & strpos(lower(Diseaseorhealthintervention),"multimodal")
replace DCP3="RH18" if GBDTier3=="Trachoma" & InterventionSurg==1
replace DCP3="RH13" if strpos(lower(Diseaseorhealthintervention),"club foot") & strpos(lower(Abstract),"repair")
replace DCP3="RH6" if DisCode1=="I20-I25: Ischemic heart diseases" & strpos(lower(Abstract),"percutaneous coronary intervention") & strpos(lower(Diseaseorhealthintervention),"acute myocardial infarction")
replace DCP3="C4" if strpos(lower(Diseaseorhealthintervention),"breast feed")|strpos(lower(Diseaseorhealthintervention),"breast feeding")
replace DCP3="C43" if GBDTier3=="Chagas disease" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C43" if GBDTier3=="Leishmaniasis" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C43" if GBDTier3=="African trypanosomiasis" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C43" if GBDTier3=="Leprosy" & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"treat")
replace DCP3="C58" if strpos(lower(Diseaseorhealthintervention),"stroke") & strpos(lower(Abstract),"training")
replace DCP3="C58" if strpos(lower(Diseaseorhealthintervention),"parkinson") & strpos(lower(Abstract),"training")
replace DCP3="C58" if strpos(lower(Diseaseorhealthintervention),"multiple sclerosis") & strpos(lower(Abstract),"training")
replace DCP3="C58" if strpos(lower(Diseaseorhealthintervention),"motor neuron disease") & strpos(lower(Abstract),"training")
replace DCP3="C59" if [GBDTier2=="Musculoskeletal disorders"|GBDTier2=="Unintentional injuries other than transport injuries"] & strpos(lower(Abstract),"training") & strpos(lower(Abstract),"exercise")
replace DCP3="FLH1" if strpos(lower(Diseaseorhealthintervention),"fetal growth restriction") & [InterventionDiagnostic==1|InterventionScreening==1] & [strpos(lower(Abstract),"manage")|strpos(lower(Abstract),"management")]
replace DCP3="H17" if DisCode1=="A15-A19: Tuberculosis" & strpos(lower(Abstract),"referral") & [strpos(lower(Abstract),"treatment failure")|strpos(lower(Abstract),"treatment fail")]
replace DCP3="H17" if DisCode1=="B20-B24: Human immunodeficiency virus [HIV] disease" & strpos(lower(Abstract),"referral") & [strpos(lower(Abstract),"treatment failure")|strpos(lower(Abstract),"treatment fail")]
replace DCP3="H17" if DisCode1=="Z16: Resistance to antimicrobial drugs" & strpos(lower(Abstract),"referral") & [strpos(lower(Abstract),"treatment failure")|strpos(lower(Abstract),"treatment fail")]
replace DCP3="H17" if [strpos(lower(Diseaseorhealthintervention),"multi-drug-resistant tuberculosis")|strpos(lower(Diseaseorhealthintervention),"mdr-tb")] & strpos(lower(Abstract),"enroll")
replace DCP3="FLH22" if [GBDTier3=="Asthma"|GBDTier3=="Chronic obstructive pulmonary disease"] & [strpos(lower(Abstract),"steroids")|strpos(lower(Abstract),"inhaled beta-agonists")|strpos(lower(Abstract),"oral antibiotics")|strpos(lower(Abstract),"oxygen therapy")]
replace DCP3="FLH27" if [GBDTier4=="Sickle-cell disorders"|GBDTier3=="Malaria"] & [strpos(lower(Abstract),"newborn screening")|strpos(lower(Abstract),"neonatal screening")]
replace DCP3="FLH46" if DisCode1=="C43-C44: Melanoma and other malignant neoplasms of skin" & strpos(lower(Abstract),"basic skin grafting")
replace DCP3="FLH46" if DisCode1=="L80-L99: Other disorders of the skin and subcutaneous tissue" & strpos(lower(Abstract),"basic skin grafting")
replace DCP3="FLH46" if DisCode1=="T20-T32: Burns and corrosions" & strpos(lower(Abstract),"skin graft")
replace DCP3="FLH52" if DisCode1=="T20-T32: Burns and corrosions" & strpos(lower(Abstract),"compression therapy")
replace DCP3="FLH52" if strpos(lower(Diseaseorhealthintervention),"filariasis") & strpos(lower(Abstract),"compression therapy")
replace DCP3="HC16" if DisCode1=="A50-A64: Infections with a predominately sexual mode of transmission" & strpos(lower(Abstract),"violence care")
replace DCP3="HC16" if DisCode1=="B20-B24: Human immunodeficiency virus [HIV] disease" & strpos(lower(Abstract),"violence care")
replace DCP3="HC16" if [GBDTier3=="Anxiety disorders"|GBDTier3=="Unipolar depressive disorders"] & strpos(lower(Abstract),"violence care")
replace DCP3="HC24" if [GBDTier4=="Acute hepatitis B"|GBDTier4=="Liver cancer secondary to hepatitis B"] & InterventionImmunization==1
replace DCP3="HC24" if GBDTier3=="Cirrhosis of the liver secondary to hepatitis B" & InterventionImmunization==1
replace DCP3="HC31" if [GBDTier3=="Typhoid and paratyphoid fevers"|GBDTier3=="Dengue"|GBDTier3=="Yellow fever"|GBDTier3=="Encephalitis"] & InterventionImmunization==1
replace DCP3="HC37" if [GBDTier3=="Asthma"|GBDTier3=="Chronic obstructive pulmonary disease"] & [strpos(lower(Abstract),"inhaled corticosteroids")|strpos(lower(Abstract),"bronchodilators")]
replace DCP3="HC14" if GBDTier2=="Mental and behavioral disorders" & strpos(lower(Abstract),"psychological treatment")
replace DCP3="HC63" if GBDTier4=="Dental caries" & strpos(lower(Abstract),"treat")
replace DCP3="P13" if HealthEducationOrBehavior==1 & [strpos(lower(Abstract),"handwashing")| strpos(lower(Abstract),"wash hands")] & [strpos(lower(Abstract),"air pollution")| strpos(lower(Abstract),"air pollutant")]
replace DCP3="P6" if [GBDTier3=="Chagas disease"|GBDTier3=="Dengue"|GBDTier3=="Leishmaniasis"] & strpos(lower(Abstract),"sustained vector management")
replace DCP3="P6" if [GBDTier3=="Typhoid and paratyphoid fevers"|GBDTier3=="Yellow fever"|GBDTier3=="Encephalitis"] & strpos(lower(Abstract),"sustained vector management")
replace DCP3="RH1" if [GBDTier2=="Neonatal disorders"|strpos(lower(Diseaseorhealthintervention),"preterm")|strpos(lower(Diseaseorhealthintervention),"pre-term")] & strpos(lower(Abstract),"full supportive care")
replace DCP3="RH11" if GBDTier2=="Injuries" & InterventionSurg==1 & strpos(lower(Abstract),"orthopedic")
replace DCP3="RH10" if GBDTier2=="Injuries" & InterventionSurg==1 & [strpos(lower(Abstract),"elective surgical repair")|strpos(lower(Abstract),"elective surgery")]
replace DCP3="FLH50" if strpos(lower(Abstract),"tube thoracostomy") & [Intervention MedicalProcedure==1|InterventionSurg==1]
replace DCP3="C53" if GBDTier2=="Mental and behavioral disorders" & strpos(lower(Abstract),"early childhood development rehabilitation")
replace DCP3="RH4" if GBDTier3=="Chronic obstructive pulmonary disease" & strpos(lower(Abstract),"bilevel positive airway pressure") & strpos(lower(Abstract),"acute ventilatory failure")
replace DCP3="RH4" if GBDTier3=="Asthma" & strpos(lower(Abstract),"acute ventilatory failure")
replace DCP3="RH2" if GBDTier3=="Tuberculosis" & [InterventionSurg==1|strpos(lower(Abstract),"specialized")|strpos(lower(Abstract),"mdr-tb")|strpos(lower(Abstract),"xdr-tb")]
replace DCP3="C34" if GBDTier3=="Malaria" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDTier3=="Dengue" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDTier3=="Encephalitis" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDTier3=="Yellow fever" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C34" if GBDTier3=="Other neglected tropical diseases" & [strpos(lower(Abstract),"larviciding")|strpos(lower(Abstract),"water-management")|strpos(lower(Abstract),"water management")]
replace DCP3="C52" if GBDTier2=="Cardiovascular and circulatory diseases" & [strpos(lower(Abstract),"rehabilitation program")|strpos(lower(Abstract),"rehab program")|strpos(lower(Abstract),"rehabilitative")]
replace DCP3="C52" if GBDTier2=="Chronic respiratory diseases" & [strpos(lower(Abstract),"rehabilitation program")|strpos(lower(Abstract),"rehab program")|strpos(lower(Abstract),"rehabilitative")]
replace DCP3="C56" if strpos(lower(Abstract),"wheelchair") & [strpos(lower(Abstract),"pressure area prevention")|strpos(lower(Abstract),"supportive seat")]
replace DCP3="FLH11" if GBDTier1=="Communicable maternal, neonatal, and nutritional disorders" & strpos(lower(Abstract),"child") & strpos(lower(Abstract),"full supportive care")
replace DCP3="FLH2" if GBDTier2=="Maternal disorders" & [strpos(lower(Abstract),"post-term")|strpos(lower(Abstract),"post term")] & [strpos(lower(Abstract),"induction")|strpos(lower(Abstract),"induce")]
replace DCP3="H36" if GBDTier1=="Injuries" & [strpos(lower(Abstract),"fracture reduction")|strpos(lower(Abstract),"external fixator")|strpos(lower(Abstract),"traction for fracture")]
replace DCP3="FLH53" if strpos(lower(Abstract),"swallowing dysfunction")
replace DCP3="FLH54" if [strpos(lower(Abstract),"prosthetic")|strpos(lower(Abstract),"orthotics")|strpos(lower(Abstract),"splint")] & [strpos(lower(Abstract),"fabrication")|strpos(lower(Abstract),"fitting")|strpos(lower(Abstract),"training")]
replace DCP3="HC3" if [GBDTier2=="Maternal disorders"|GBDTier2=="Neonatal disorders"] & [strpos(lower(Abstract),"preterm")|strpos(lower(Abstract),"pre-term")|strpos(lower(Abstract),"premature")] & strpos(lower(Abstract),"rupture") &strpos(lower(Abstract),"membrane")
replace DCP3="HC32" if [strpos(lower(Abstract),"insecticide-treated net")|strpos(lower(Abstract),"insecticide treated net")] & [strpos(lower(Abstract),"children")|strpos(lower(Abstract),"pregnant")]
replace DCP3="HC54" if [GBDTier1=="Injuries"|GBDTier2=="Musculoskeletal disorders"] & strpos(lower(Abstract),"exercise program")
replace DCP3="HC19" if [GBDTier4=="Acute hepatitis B"|GBDTier4=="Acute hepatitis C"] & InterventionCareDelivery==1
replace DCP3="HC19" if [GBDTier3=="Cirrhosis of the liver secondary to hepatitis B"|GBDTier3=="Cirrhosis of the liver secondary to hepatitis C"] & InterventionCareDelivery==1
replace DCP3="HC19" if [GBDTier4=="Liver cancer secondary to hepatitis B"|GBDTier4=="Liver cancer secondary to hepatitis B"] & InterventionCareDelivery==1
replace DCP3="HC62" if GBDTier1=="Injuries" & strpos(lower(Abstract),"suturing laceration")
replace DCP3="P1" if [GBDTier3=="Sexually transmitted diseases excluding HIV"|GBDTier3=="HIV/AIDS"] & HealthEducationOrBehavior==1 & [strpos(lower(Abstract),"asolescent")|strpos(lower(Abstract),"teen")] & strpos(lower(Abstract),"Media")
replace DCP3="HC23" if [GBDTier3=="Sexually transmitted diseases excluding HIV"|GBDTier3=="HIV/AIDS"|] & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"counseling")
replace DCP3="HC23" if [GBDTier3=="Cirrhosis of the liver secondary to hepatitis B"|GBDTier3=="Cirrhosis of the liver secondary to hepatitis C"] & [Intervention Diagnostic==1|Intervention Screening==1] & strpos(lower(Abstract),"counseling")
replace DCP3="HC23" if [GBDTier4=="Acute hepatitis B"|GBDTier4=="Acute hepatitis C"] & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"counseling")
replace DCP3="HC23" if [GBDTier4=="Liver cancer secondary to hepatitis B"|GBDTier4=="Liver cancer secondary to hepatitis B"] & [InterventionDiagnostic==1|InterventionScreening==1] & strpos(lower(Abstract),"counseling")


keep Diseaseorhealthintervention DCP3 Country_* SuperRegion_* Sponsorship* Intervention* PreventionStage_Collapsed PreventionStage* WBIncome_* PubYear ArticleID PubMedID GBDTier1 GBDTier2 GBDTier3 GBDTier4
drop InterventionOtherText SponsorshipPharmOrDeviceCoName SponsorshipOtherText 


export excel using "G:\Projects\CEA vs. GBD\3. Analysis\1. Data Cleaning\ICD_DCP3_Mapping_UPDATED.xlsx", firstrow(variables) nolabel replace
