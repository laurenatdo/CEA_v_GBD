*clear all existing variables in current workspace
clear all

*import excel file to be cleaned
import excel "G:\Projects\CEA vs. GBD\3. ICD to GBD Category Mapping\Methods 2020 01 21.xlsx", sheet("Methods") firstrow

*drop irrelevant observations
drop if PubYear < 2010

*loop that rmoves observations that say "NULL"
foreach var of varlist DisChapter1 DisCode1 DisChapter2 DisCode2 DisChapter3 DisCode3 DisChapter4 DisCode4 {
replace `var'="" if `var'=="NULL"
}


***Tier 1:Communicable Disease
*generate a string variable for GBD Tier 1 categories
gen strL GBDTier1="Communicable maternal, neonatal, and nutritional disorders" if DisCode1=="D50-D53: Nutritional anemias"
*loop that categorizes GBD Tier 1 studies into communcable diseases if the ICD-10 chapters are equal to the the categories listed
foreach a of var DisChapter1 {
replace GBDTier1="Communicable maternal, neonatal, and nutritional disorders" if inlist(DisChapter1,"I: Certain infectious and parasitic diseases (A00-B99)","XV: Pregnancy, childbirth and the puerperium (O00-O99)",/*
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
*/"A30-A49: Other bacterial diseases","B00-B09: Viral infections characterized by skin and mucous membrane lesions","B95-B97: Bacterial and viral infectious agents",/*
*/"G00-G09: Inflammatory diseases of the central nervous system","J00-J06: Acute upper respiratory infections","J09-J18: Influenza and pneumonia","J20-J22: Other acute lower respiratory infections")
}
foreach e of var DisChapter1 {
replace GBDTier2="Neglected tropical diseases and malaria" if inlist(DisCode1,"A70-A74: Other diseases caused by chlamydiae","A80-A89: Viral infections of the central nervous system",/*
*/"A90-A99: Arthropod-borne viral fevers and viral hemorrhagic fevers","B50-B64: Protozoal diseases","B65-B83: Helminthiases")
}
replace GBDTier2="Maternal disorders" if DisChapter1=="XV: Pregnancy, childbirth and the puerperium (O00-O99)"
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
replace GBDTier2="Other non-communicable diseases" if DisChapter1=="VII: Diseases of the eye and adnexa (H00-H59)" & DisChapter1=="VIII: Diseases of the ear and mastoid process (H60-H95)"
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
replace GBDTier2="Self-harm and interpersonal violence" if DisCode1=="X92-Y08: Assault"|DisCode1=="X71-X83: Intentional self-harm"
replace GBDTier2="Forces of nature, war, and legal intervention" if DisCode1=="X30-X39: Exposure to forces of nature"|DisCode1=="Y35-Y38: Legal intervention, operations of war, military operations, and terrorism"


*Tier 3&4; 
*Communicable diseases
*generate a string variable for GBD Tier 3 and categorize it if any of the key words are present in "Disease of Health Intervention variable". It is important to use the strpos(lower(VARIABLE),KEYWORDS)>0
*for variables that are entered in by the reader because we don't need an exact match. We only want to know if it contains the keyword or phrase of interest.
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

replace GBDTier3="Maternal haemorrhage" if [strpos(lower(Diseaseorhealthintervention),"haemorrhage")>0|strpos(lower(Diseaseorhealthintervention),"hemorrhage")>0] & GBDTier2=="Maternal disorders"
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
replace GBDTier3="Leukaemia" if strpos(lower(Diseaseorhealthintervention),"leukaemia")>0|strpos(lower(Diseaseorhealthintervention),"leukemia")>0
replace GBDTier3="Other neoplasms" if GBDTier2=="Neoplasms" & GBDTier3==""
replace GBDTier2="Neoplasms" if strpos(lower(GBDTier3),"cancer")>0|strpos(lower(GBDTier3),"leukaemia")>0|strpos(lower(GBDTier3),"melanoma")>0
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
replace GBDTier3="Alcohol use disorders" if strpos(lower(Diseaseorhealthintervention),"alcoholism")>0|strpos(lower(Diseaseorhealthintervention),"alcoholic")>0
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
replace GBDTier2="Neurological disorders" if inlist(GBDTier3,"Schizophrenia","Alcohol use disorders","Drug use disorders","Unipolar depressive disorders","Bipolar affective disorder","Anxiety disorders")
replace GBDTier2="Neurological disorders" if inlist(GBDTier3,"Eating disorders","Pervasive development disorders","Childhood behavioral disorders","Idiopathic intellectual disability")

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
replace GBDTier4="Other haemoglobinopathies and haemolytic anemias" if GBDTier4=="" & [DisCode1=="D55-D59: Haemolytic anaemias"|DisCode1=="D55-D59: Hemolytic anemias"]
replace GBDTier3="Haemoglobinopathies and haemolytic anemias" if DisCode1=="D55-D59: Haemolytic anaemias"|DisCode1=="D55-D59: Hemolytic anemias"
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

replace GBDTier1="Injuries" if inlist(GBDTier2,"Transport injuries","Unintentional injuries other than transport injuries","Self-harm and interpersonal violence","Forces of nature, war, and legal intervention")

*export the cleaned dataset into an excel file
export excel using "G:\Projects\CEA vs. GBD\3. ICD to GBD Category Mapping\ICD_GBD_Mapping.xlsx", firstrow(variables) nolabel replace
